Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C5984C80A78
	for <poky@yoctoproject.org>; Tue, 19 Apr 2011 19:03:08 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Apr 2011 17:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,242,1301900400"; d="scan'208";a="735779451"
Received: from unknown (HELO localhost) ([10.255.12.227])
	by orsmga001.jf.intel.com with ESMTP; 19 Apr 2011 17:02:45 -0700
Message-Id: <cover.1303257574.git.dvhart@linux.intel.com>
Old-Date: Tue, 19 Apr 2011 16:59:34 -0700
Date: Tue, 19 Apr 2011 17:02:46 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] kernel-rt: fix build issues
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
X-List-Received-Date: Wed, 20 Apr 2011 00:03:08 -0000

From: Darren Hart <dvhart@linux.intel.com>

The linux-yocto-rt recipe wasn't building in master or bernard. This brings the
recipe up to date with the linux-yocto* recipes and corrects the build failures.
This patch should be applied to both bernard and master.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/bernard/rt
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/rt

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  kernel-rt: use correct branch names and new git SRC_REV format

 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb |   12 +++++-------
 1 files changed, 5 insertions(+), 7 deletions(-)


