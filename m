Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA30E01358
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 11:08:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r7QI8k40011390
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Aug 2013 11:08:46 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 26 Aug 2013 11:08:46 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 26 Aug 2013 14:08:35 -0400
Message-ID: <0763f7a5c76603ea24937a93816495b1fc820682.1377540341.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377540341.git.bruce.ashfield@windriver.com>
References: <cover.1377540341.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: dvhart@linux.intel.com, poky@yoctoproject.org
Subject: [PATCH 1/1] meta-yocto: change default kernel to 3.10
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Aug 2013 18:08:53 -0000
Content-Type: text/plain

With 3.10 being the next LTSI kernel, and all qemu reference platforms
tested on that new baseline, the time has come to bump the default
version for qemu* and other boards to 3.10.

Reference platforms continue to explicitly set their own preferred versions
for the kernel as required.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |   14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 5deb158..8ea4e4f 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -19,13 +19,13 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "3.4%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.8%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.8%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.8%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
-PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
+PREFERRED_VERSION_linux-yocto ?= "3.10%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.10%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.10%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.10%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.10%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.10%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.10%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
1.7.10.4


