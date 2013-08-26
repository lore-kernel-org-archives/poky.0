Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D94EFE01358
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 14:22:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Aug 2013 14:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="393712694"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2013 14:22:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 14:26:18 -0700
Message-Id: <1377552381-20138-1-git-send-email-dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/3] Update genericx86 and remove atom-pc
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
X-List-Received-Date: Mon, 26 Aug 2013 21:22:16 -0000

This series updates the genericx86 BSP to use the linux-yocto 3.10 recipe and
fixes some of the meta-data related to that.

It also removes the atom-pc machine in favor of genericx86 which is a super set
of atom-pc. This leaves us with no x86 linux-yocto 3.4 based BSP, but that is
standard operating procedure when introducing new BSPs.

Boot tested on the Toshiba NB305 (Pineview) netbook. Ethernet and wifi are not
currently supported and will need to be added in a SRCREV update after the
linux-yocto meta-data for genericx86 has been augmented. The mode switching and
Xorg graphics drivers work correctly, as do USB HID devices.


