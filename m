Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 247594C80AB0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 14:49:54 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Mar 2011 12:49:53 -0700
Message-Id: <1bdc18$k27691@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,270,1299484800"; d="scan'208";a="673421608"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2011 12:49:53 -0700
Old-Date: Tue, 29 Mar 2011 01:09:30 -0500
Date: Wed, 30 Mar 2011 14:49:36 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/2][KERNEL] crownbay: set cpu type to MATOM
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
X-List-Received-Date: Wed, 30 Mar 2011 19:49:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

NET_SKB_PAD was changed by commit 5933dd2f028cdcbb [net: NET_SKB_PAD
should depend on L1_CACHE_BYTES] to L1_CACHE_BYTES.  Atom processors
have L1_CACHE_BYTES at 64, whereas the default M686 sets it to 32.
This causes problems for the pch_gbe driver.

Fix for [BUGID #905].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index 4ab5a86..dde8412 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -1,4 +1,5 @@
 CONFIG_X86_32=y
+CONFIG_MATOM=y
 CONFIG_PRINTK=y
 
 # Basic hardware support for the box - network, USB, PCI, sound
-- 
1.7.0.4


