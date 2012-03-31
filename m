Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B571E00596
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 22:48:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Mar 2012 22:48:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="127215628"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by orsmga002.jf.intel.com with ESMTP; 30 Mar 2012 22:48:43 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Sat, 31 Mar 2012 13:46:17 +0800
Message-Id: <772bae8a380a006f5bde3154a406a458b7f56313.1333172695.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1333172695.git.dongxiao.xu@intel.com>
References: <cover.1333172695.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1333172695.git.dongxiao.xu@intel.com>
References: <cover.1333172695.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] baryon: Fix variable naming
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
X-List-Received-Date: Sat, 31 Mar 2012 05:48:44 -0000

The POKY_EXTRA_INSTALL is changed to CORE_IMAGE_EXTRA_INSTALL in core
layer. Therefore change it in meta-baryon accordingly.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 recipes-extended/images/baryon-image.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/recipes-extended/images/baryon-image.bb b/recipes-extended/images/baryon-image.bb
index 4ac9dcf..663c80d 100644
--- a/recipes-extended/images/baryon-image.bb
+++ b/recipes-extended/images/baryon-image.bb
@@ -1,6 +1,6 @@
 IMAGE_FEATURES = "nfs-server package-management ssh-server-dropbear debug-tweaks"
 
-POKY_EXTRA_INSTALL = "samba procps mdadm e2fsprogs-mke2fs util-linux \
+CORE_IMAGE_EXTRA_INSTALL = "samba procps mdadm e2fsprogs-mke2fs util-linux \
                      webmin \
                      webmin-module-status \
                      webmin-module-proc \
-- 
1.7.4.1


