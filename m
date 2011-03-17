Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3B2E4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 23:04:02 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Mar 2011 21:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="721038376"
Received: from unknown (HELO localhost) ([10.255.12.146])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2011 21:04:02 -0700
Message-Id: <cover.1300334468.git.dvhart@linux.intel.com>
Old-Date: Wed, 16 Mar 2011 21:01:08 -0700
Date: Wed, 16 Mar 2011 21:03:33 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	Richard Purdie <richard.purdie@intel.com>
Subject: [PATCH 0/1][meta-intel] Cleanup following FULL_OPTIMIZATION fix for Bug
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
X-List-Received-Date: Thu, 17 Mar 2011 04:04:02 -0000

From: Darren Hart <dvhart@linux.intel.com>

853

After the follow-up fix from Richard which placed FULL_OPTIMIZATION flags for
gtk+ in tune-atom.inc, the per machine gtk+ bbappends are no longer necessary.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: dvhart/bernard/n450
  Browse: http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=dvhart/bernard/n450

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  gtk+: remove per-machine gtk+ FULL_OPTIMIZATION in favor of
    tune-atom.inc

 .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    5 -----
 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend  |    2 --
 2 files changed, 0 insertions(+), 7 deletions(-)
 delete mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
 delete mode 100644 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend


