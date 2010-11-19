Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06C024C811CC
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 03:21:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="679076626"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 03:21:31 -0800
Message-Id: <ecd133b433405dc16079c8de218511d0f0ec1322.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 08:00:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/17] libowl-av: Update to svn r416
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:32 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 09a7452..b91f7cd 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -62,7 +62,7 @@ SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
 SRCREV_pn-libgsmd ??= "4335"
 SRCREV_pn-libmatchbox ??= "1531"
 SRCREV_pn-libowl ??= "408"
-SRCREV_pn-libowl-av ??= "398"
+SRCREV_pn-libowl-av ??= "416"
 SRCREV_pn-libx11 ??= "d23aad31338e7d869d878d5aa1b6b91d20287005"
 SRCREV_pn-libx11-diet ??= "d23aad31338e7d869d878d5aa1b6b91d20287005"
 SRCREV_pn-libx11-native ??= "d23aad31338e7d869d878d5aa1b6b91d20287005"
-- 
1.6.3.3


