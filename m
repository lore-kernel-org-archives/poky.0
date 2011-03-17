Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E5FD4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 23:00:55 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 21:00:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="613992080"
Received: from unknown (HELO localhost) ([10.255.12.146])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2011 21:00:54 -0700
Message-Id: <cover.1300334282.git.dvhart@linux.intel.com>
Old-Date: Wed, 16 Mar 2011 20:58:02 -0700
Date: Wed, 16 Mar 2011 21:00:25 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	Richard Purdie <richard.purdie@intel.com>
Subject: [PATCH 0/1] Cleanup after atom-pc FULL_OPTIMIZATION fix for Bug 853
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
X-List-Received-Date: Thu, 17 Mar 2011 04:00:55 -0000

From: Darren Hart <dvhart@linux.intel.com>

After the localized fix for Bug 853, Richard pushed a more general fix to
tune-atom.inc, rendering all the local fixes unnecessary. Tested on atom-pc
and n450.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/bernard/n450
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/n450

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  gtk+: remove per-machine gtk+ FULL_OPTIMIZATION in favor of
    tune-atom.inc

 meta/recipes-gnome/gtk+/gtk+_2.22.1.bb |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)


