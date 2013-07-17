Return-Path: <cristiana.voicu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F100E013A2
	for <poky@yoctoproject.org>; Wed, 17 Jul 2013 06:48:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jul 2013 06:48:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,684,1367996400"; d="scan'208";a="371661693"
Received: from cvoicu-vostro-460.rb.intel.com ([10.237.105.72])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2013 06:48:19 -0700
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 17 Jul 2013 16:50:32 +0300
Message-Id: <1374069032-21676-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] poky-tiny.conf: blacklist core-image-weston option
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
X-List-Received-Date: Wed, 17 Jul 2013 13:48:31 -0000

[YOCTO #4861]
Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 755667f..83e232a 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -137,3 +137,4 @@ PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
 PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
-- 
1.7.9.5


