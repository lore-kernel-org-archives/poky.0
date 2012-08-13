Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 099FBE01439
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:55 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4DE1D30426
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:48 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:34 -0700
Message-Id: <133387318806f76603f90e06c466eae890b33ee3.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4DE1D30426.9E3CE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 08/57] bitbake: fetch2: Explicitly check for mirror tarballs in mirror handling code
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:55 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

With support for things like git:// -> git:// urls, we need to be
more explicity about the mirrortarball check since we need to fall
through to the following code in other cases.

(From Poky rev: 28e858cd6f7509468ef3e527a86820b9e06044db)

(Bitbake rev: a2459f5ca2f517964287f9a7c666a6856434e631)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 8e361ed..405f074 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -475,7 +475,8 @@ def try_mirror_url(newuri, origud, ud, ld, check = False):
         # We may be obtaining a mirror tarball which needs further processing by the real fetcher
         # If that tarball is a local file:// we need to provide a symlink to it
         dldir = ld.getVar("DL_DIR", True)
-        if os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
+        if origud.mirrortarball and os.path.basename(ud.localpath) == os.path.basename(origud.mirrortarball) \
+                and os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
             open(ud.donestamp, 'w').close()
             dest = os.path.join(dldir, os.path.basename(ud.localpath))
             if not os.path.exists(dest):
-- 
1.7.9.5


