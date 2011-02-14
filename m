Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67ABD4C8090C
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 09:47:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2011 07:47:03 -0800
Message-Id: <b9dded$huicuq@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="602485728"
Received: from unknown (HELO localhost) ([10.255.14.181])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 07:47:03 -0800
Old-Date: Sun, 13 Feb 2011 22:38:58 -0600
Date: Mon, 14 Feb 2011  9:46:51 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1][KERNEL][2.6.37] Add jasperforest BSP machine branch
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
X-List-Received-Date: Mon, 14 Feb 2011 15:47:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

'Jasper Forest' refers to the Intel Xeon C5500/C3500 processors, which
combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
'Picket Post' CRB this BSP was developed on.

This adds the machine branch for the jasperforest BSP.

While developing it, I ran into problems with the board hanging during
boot, which was caused by the lttng commit reverted by this patchset.
Thanks to Bruce Ashfield for pointing out the possibly faulty commit.

The bad commit also caused the same hang in the sugarbay BSP if I
advanced the SRCREV past the lttng commits, so it should also be
reverted from the sugarbay branch.  I can submit a patch for that too,
or it can just be cherry-picked into the sugarbay branch if that's
easier (it doesn't affect qemux86-64, which is why I didn't just
revert it in common-pc-64 or standard).

Please pull.

Thanks,

Tom

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/yocto/standard/common-pc-64/jasperforest
  Browse:
http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/yocto/standard/common-pc-64/jasperforest

Tom Zanussi (1):
  Revert "nmi-safe-kernel/x86_64-page-fault-nmi-safe"

 arch/x86/mm/fault.c |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)


