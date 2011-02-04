Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3489E4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:38:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2011 19:38:23 -0800
Message-Id: <b9dded$hrjbng@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,424,1291622400"; d="scan'208";a="599371507"
Received: from unknown (HELO localhost) ([10.255.14.151])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2011 19:38:23 -0800
Old-Date: Thu, 3 Feb 2011 14:33:17 -0600
Date: Thu, 03 Feb 2011 21:38:16 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/2] sugarbay: update kernel SRCREVs
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
X-List-Received-Date: Fri, 04 Feb 2011 03:38:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update kernel SRCREVs to match linux-yocto.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 4d58d05..626131d 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -53,5 +53,5 @@ PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
 
 PREFERRED_VERSION_grub ?= "1.98"
 
-#SRCREV_machine_pn-linux-yocto_sugarbay ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-#SRCREV_meta_pn-linux-yocto_sugarbay ?= "39b796c508a80dcab6b4511b46183d4dfee6284d"
+SRCREV_machine_pn-linux-yocto_sugarbay ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
+SRCREV_meta_pn-linux-yocto_sugarbay ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
-- 
1.7.0.4


