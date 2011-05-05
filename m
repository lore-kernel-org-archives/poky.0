Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AC354C810B8
	for <poky@yoctoproject.org>; Thu,  5 May 2011 00:55:21 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 May 2011 22:55:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,318,1301900400"; d="scan'208";a="430866508"
Received: from unknown (HELO localhost) ([10.255.13.36])
	by azsmga001.ch.intel.com with ESMTP; 04 May 2011 22:55:20 -0700
Message-Id: <50f16ee04046f9d24031628334ef0c159a621fd9.1304574705.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1304574705.git.tom.zanussi@intel.com>
References: <cover.1304574705.git.tom.zanussi@intel.com>
Old-Date: Wed, 4 May 2011 22:42:26 -0500
Date: Thu, 05 May 2011  0:55:37 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/2] boot-directdisk: fix bzImage source location
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
X-List-Received-Date: Thu, 05 May 2011 05:55:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes yocto [BUGID #876]

boot-directdisk.class looks in the wrong location for the bzImage to
install.  Make it look in the right place.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/classes/boot-directdisk.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/boot-directdisk.bbclass b/meta/classes/boot-directdisk.bbclass
index d87dc22..8879ba8 100644
--- a/meta/classes/boot-directdisk.bbclass
+++ b/meta/classes/boot-directdisk.bbclass
@@ -49,7 +49,7 @@ build_boot_dd() {
 	IMAGE=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hdddirect
 
 	install -d ${HDDDIR}
-	install -m 0644 ${STAGING_DIR}/${MACHINE}${HOST_VENDOR}-${HOST_OS}/kernel/bzImage ${HDDDIR}/vmlinuz
+	install -m 0644 ${STAGING_DIR_HOST}/kernel/bzImage ${HDDDIR}/vmlinuz
 	install -m 444 ${STAGING_LIBDIR}/syslinux/ldlinux.sys ${HDDDIR}/ldlinux.sys
 
 	BLOCKS=`du -bks ${HDDDIR} | cut -f 1`
-- 
1.7.0.4


