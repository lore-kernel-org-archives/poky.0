Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 18FE14C8085F
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 01:43:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Feb 2011 23:42:59 -0800
Message-Id: <849307$bojrdf@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,238,1297065600"; d="scan'208";a="394915251"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by azsmga001.ch.intel.com with ESMTP; 27 Feb 2011 23:42:58 -0800
Old-Date: Mon, 28 Feb 2011 01:37:32 -0600
Date: Mon, 28 Feb 2011  1:42:56 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-sugarbay: update kernel SRCREVs
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
X-List-Received-Date: Mon, 28 Feb 2011 07:43:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update kernel SRCREVs to latest commits.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 14a4aa1..92d7c54 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -55,5 +55,5 @@ PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
 
 PREFERRED_VERSION_grub ?= "1.98"
 
-SRCREV_machine_pn-linux-yocto_sugarbay ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
-SRCREV_meta_pn-linux-yocto_sugarbay ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
+SRCREV_machine_pn-linux-yocto_sugarbay ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
+SRCREV_meta_pn-linux-yocto_sugarbay ?= "e2cabadc059ad8d91f7e4a023106620d93abd23a"
-- 
1.7.0.4


