Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3733E00306
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:16:15 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(yow-bashfiel-d3.ottawa.windriver.com [128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0UKGBNH019675;
	Mon, 30 Jan 2012 12:16:13 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 30 Jan 2012 15:16:10 -0500
Message-Id: <ca65eb5fc6d8574c68a61d5d1b07c00d2fb3b530.1327954069.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1327954069.git.bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1327954069.git.bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] meta-yocto/poky.conf: set qemu* preferred linux-yocto version to 3.2
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
X-List-Received-Date: Mon, 30 Jan 2012 20:16:15 -0000

With introduction of the 3.2 kernel repository, we can make the qemu
targets prefer this variant. Built and boot testing has been completed
on sato/minimal targets for all emulated targets.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 86f9bf6..0f1d147 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -12,12 +12,12 @@ LOCALCONF_VERSION = "1"
 
 DISTRO_FEATURES_append = " largefile opengl"
 
-PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.0%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.0%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.0%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "3.0%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.2%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.2%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.2%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.02"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.2%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
1.7.4.1


