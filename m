Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A63E0145D
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:10 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id BEF7D30430
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:04 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:41 -0700
Message-Id: <65b53c77af69080d65f24d47f6e8626a87633e01.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: BEF7D30430.21B86
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 15/57] packagedata.py: Fix get_subpkgedata_fn for multilib
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Aug 2012 21:21:10 -0000

From: Matthew McClintock <msm@freescale.com>

This happens when tryng to add libgcc-dev to as a multilib package
(e.g. IMAGE_INSTALL_append = " lib32-libgcc-dev")

| Processing task-core-boot...
| Processing fman-ucode...
| Processing dosfstools...
| Processing lib32-libgcc-dev...
| Unable to find package lib32-libgcc-dev (libgcc-dev)!
NOTE: package fsl-image-full-1.0-r1.1.3.6: task do_rootfs: Failed

RPM (or bitbake?) is looking in the tmp/pkgdata, however some of these file
paths are mungned for the multilib scenario:

$ find tmp/pkgdata/ | grep libgcc-dev$
tmp/pkgdata/ppce5500-fsl-linux/runtime/lib32-libgcc-dev
tmp/pkgdata/ppc64e5500-fsl-linux/runtime/libgcc-dev

This patch fixes where we look for these files so they can be found and
properly installed for the multilib root file system

(From OE-Core rev: 4e65ddda5d351bd9f2172e77e656903f61a52f34)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/lib/oe/packagedata.py |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/meta/lib/oe/packagedata.py b/meta/lib/oe/packagedata.py
index a7a40f0..9a28e6b 100644
--- a/meta/lib/oe/packagedata.py
+++ b/meta/lib/oe/packagedata.py
@@ -27,6 +27,14 @@ def read_pkgdatafile(fn):
 
 def get_subpkgedata_fn(pkg, d):
     archs = d.expand("${PACKAGE_ARCHS}").split(" ")
+    mlarchs = d.getVar("MULTILIB_PACKAGE_ARCHS", d) or None
+
+    if mlarchs:
+        for mlarch in mlarchs.split(" "):
+            if "_" in mlarch:
+                prefix, split, new_arch = mlarch.partition("_")
+                archs.append(new_arch)
+
     archs.reverse()
     pkgdata = d.expand('${TMPDIR}/pkgdata/')
     targetdir = d.expand('${TARGET_VENDOR}-${TARGET_OS}/runtime/')
-- 
1.7.9.5


