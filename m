Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 299F1E01448
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:10 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C8019543;
	Thu, 7 Jun 2012 13:04:07 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:47 -0400
Message-Id: <0d4731ad3371c4534ca5e36d145eb64154825783.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 7/7] meta-yocto: make 3.4 the default kernel for qemu*
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
X-List-Received-Date: Thu, 07 Jun 2012 20:04:10 -0000

The 3.4 kernel is available and has been built and booted on
all the qemu machines, so it now becomes the default for the
qemu machines, and machines that don't explicitly set a preferred
version.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 9c1e4b6..cc9fa6c 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -12,12 +12,12 @@ LOCALCONF_VERSION = "1"
 
 DISTRO_FEATURES_append = " largefile opengl"
 
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.2%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.2%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.2%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "3.2%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.4%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.4%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.4%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.4%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.4%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
1.7.5.4


