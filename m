Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B70AF4C81060
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 18:57:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 16:57:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,280,1291622400"; d="scan'208";a="643885213"
Received: from unknown (HELO localhost) ([10.255.14.42])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 16:57:46 -0800
Message-Id: <21fafc889e81411735de7d04ffe504e5cff4830d.1294275316.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1294275316.git.dvhart@linux.intel.com>
References: <cover.1294275316.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Wed, 5 Jan 2011 16:45:56 -0800
Date: Wed, 05 Jan 2011 16:57:26 -0800
To: richard.purdie@linuxfoundation.org,poky@yoctoproject.org
Subject: [PATCH 1/1] rootfs_rpm: fix rootfs generation rm error
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
X-List-Received-Date: Thu, 06 Jan 2011 00:57:49 -0000

During a poky-image-minimal build I ran into the following error:
rm: cannot remove `/vol/1/dvhart/poky.git/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-initramfs-1.0-r0/rootfs/install': Is a directory

This is caused by a missing -r (recursive) argument to rm. This patch
adds that to the rm command of rootfs_rpm.bbclass.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/rootfs_rpm.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 2f7d691..8646eec 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -206,7 +206,7 @@ EOF
 	mv ${IMAGE_ROOTFS}/install/*.manifest ${T}/
 
 	# Remove all remaining resolver files
-	rm -f ${IMAGE_ROOTFS}/install
+	rm -rf ${IMAGE_ROOTFS}/install
 
 	log_check rootfs
 
-- 
1.7.1


