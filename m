Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4B89E0122C
	for <poky@yoctoproject.org>; Wed, 24 Aug 2011 13:55:11 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7OKt6b7009323;
	Wed, 24 Aug 2011 13:55:09 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 24 Aug 2011 16:54:53 -0400
Message-Id: <41df00acfec82c67856f0af16539a17c6467ed73.1314219098.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314219098.git.bruce.ashfield@windriver.com>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1314219098.git.bruce.ashfield@windriver.com>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 3/3] meta-yocto: make qemu machines prefer linux-yocto_3.0
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
X-List-Received-Date: Wed, 24 Aug 2011 20:55:12 -0000

Since there aren't individual qemu*.conf files in meta-yocto the
qemu machines follow the default preference in poky.conf, which is
the 2.6.37 kernel. Rather than introducing new .conf files just for
this adding machine specific overrides is lower footprint.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c65cbc4..c5fc3b9 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -13,6 +13,11 @@ LOCALCONF_VERSION = "1"
 DISTRO_FEATURES_append = " largefile opengl"
 
 PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.0%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.0%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.0%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.0%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
1.7.4.1


