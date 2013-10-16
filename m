Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88132E016B1
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 09:33:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Oct 2013 09:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,508,1378882800"; d="scan'208";a="417825993"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.253])
	by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2013 09:33:06 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 16 Oct 2013 09:33:05 -0700
Message-Id: <3d098ca114a671295fef0f3e6e9c00f8aac0a06d.1381941120.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1381941120.git.sgw@linux.intel.com>
References: <cover.1381941120.git.sgw@linux.intel.com>
In-Reply-To: <cover.1381941120.git.sgw@linux.intel.com>
References: <cover.1381941120.git.sgw@linux.intel.com>
Subject: [PATCH 1/2] local.conf.sample.extended: Add some additional comments for security flags
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
X-List-Received-Date: Wed, 16 Oct 2013 16:33:07 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample.extended | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index a2cb81b..f85310e 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -215,6 +215,14 @@
 # Remove the old image before the new one generated to save disk space
 #RM_OLD_IMAGE = "1"
 
+#
+# GCC/LD FLAGS to enable more secure code generation
+# 
+# By including the security_flags include file you enable flags
+# to the compiler and linker that cause them to generate more secure
+# code, this is enabled by default in the poky-lsb distro.
+# This does affect compile speed slightly.
+#
 # Use the following line to enable the security compiler and linker flags to your build
 #require conf/distro/include/security_flags.inc
 
@@ -262,4 +270,3 @@ export FC = "${CCACHE}${HOST_PREFIX}gfortran ${HOST_CC_ARCH}"
 #INITRAMFS_IMAGE = "core-image-minimal-initramfs"
 #INITRAMFS_IMAGE_BUNDLE = "1"
 
-
-- 
1.8.3.1


