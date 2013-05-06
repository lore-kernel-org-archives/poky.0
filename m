Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E09E00312
	for <poky@yoctoproject.org>; Sun,  5 May 2013 22:32:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 May 2013 22:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,619,1363158000"; d="scan'208";a="332301049"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.12.247])
	by orsmga002.jf.intel.com with ESMTP; 05 May 2013 22:32:09 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun,  5 May 2013 22:32:09 -0700
Message-Id: <1367818329-3720-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.0.2
Subject: [PATCH] poky-lsb: Ensure kernel nfsd module is enabled
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
X-List-Received-Date: Mon, 06 May 2013 05:32:10 -0000

LSB Test require NFS be enabled soe ensure that the kernel
feature is on.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/poky-lsb.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index 404c3ec..53d088f 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -6,4 +6,7 @@ DISTROOVERRIDES = "poky:linuxstdbase"
 DISTRO_FEATURES_append = " pam largefile opengl"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
+# Ensure the kernel nfs server is enabled
+KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
+
 
-- 
1.8.0.2


