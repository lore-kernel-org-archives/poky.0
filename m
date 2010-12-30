Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97BCD4C81203
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 18:29:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="691842795"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2010 18:29:29 -0800
Message-Id: <c35f235f6dfa375f6f686527b8349efa1d263ae3.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 19:03:34 +0800
Date: Thu, 30 Dec 2010 10:39:15 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 15/19] linux-firmware: upgrade to rev 40c0f950be7040614dc45df54e25e54d00e3b73b
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:30 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 8ec854b..b5c4580 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -77,7 +77,7 @@ SRCREV_pn-libxext ??= "d1f3bc77a48c8e42771579e3fdf3370b35d3209d"
 SRCREV_pn-libxext-nativesdk ??= "d1f3bc77a48c8e42771579e3fdf3370b35d3209d"
 SRCREV_pn-libxi ??= "d0326fe8cdbb08d4f52d79fd3fd4e1b2a0951d5e"
 SRCREV_pn-libzypp = "4494797d5b0369365b1af63921de45b197ead64f"
-SRCREV_pn-linux-firmware ??= "85212bf6501da865e570f6b2f6fbd6f212850609"
+SRCREV_pn-linux-firmware ??= "40c0f950be7040614dc45df54e25e54d00e3b73b"
 SRCREV_pn-linux-openmoko ??= "5ccaca2adb1c37b5955a4733f68ae08a755e3d78"
 SRCREV_pn-linux-omap ??= "58cf2f1425abfd3a449f9fe985e48be2d2555022"
 SRCREV_pn-linux-omap-zoomsync ??= "015cbaf1035cd9a61d33a27de2a22902555db3c5"
-- 
1.6.3.3


