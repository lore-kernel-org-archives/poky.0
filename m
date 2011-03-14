Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0ACDA4C80A73
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 09:45:49 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2011 07:45:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="897066163"
Received: from unknown (HELO localhost) ([10.255.16.55])
	by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2011 07:45:49 -0700
Message-Id: <cover.1300113623.git.josh@linux.intel.com>
Old-Date: Mon, 14 Mar 2011 14:40:23 +0000
Date: Mon, 14 Mar 2011 14:45:43 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/2] Image creator bug fixes
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
X-List-Received-Date: Mon, 14 Mar 2011 14:45:50 -0000

From: Joshua Lock <josh@linux.intel.com>

This series contains a couple of GUI bug fixes intended for Bernard and master.

The first stops unbuildable targets from breaking the image creator, though I'd
like to investigate the possibility of stopping such recipes even being shown
in the GUI I thought it useful to provide a workaround for the Bernard release.

The second fixes a logic inversions and ensures that the cancel button does the
right thing.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/hob-bernard
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/hob-bernard

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (2):
  bitbake/cooker: don't error in prepareTreeData for unbuildable
    targets
  bitbake/hob: fix cancel button

 bitbake/lib/bb/cooker.py |    4 +++-
 bitbake/lib/bb/ui/hob.py |    2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
1.7.4


