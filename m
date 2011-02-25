Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F4A24C800AC
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 13:13:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2011 11:13:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,227,1297065600"; d="scan'208";a="891336906"
Received: from unknown (HELO localhost) ([10.255.16.236])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2011 11:13:45 -0800
Message-Id: <cover.1298661117.git.josh@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 19:11:57 +0000
Date: Fri, 25 Feb 2011 19:13:39 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/3] A few GUI related patches, including a bug fix
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
X-List-Received-Date: Fri, 25 Feb 2011 19:13:52 -0000

From: Joshua Lock <josh@linux.intel.com>

This series tries to sneak in an extra feature before the freeze, the ability
to disable GPLv3 recipes in hob.

Furthermore I've fixed a bug whereby you'd see two progress dialogs when
changing machine.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/gui
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/gui

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (3):
  base.bbclass: enable INCOMPATIBLE_LICENSE to match slight variations
  bitbake/hob: only show one progress dialog when changing machine
  bitbake/hob: add checkbox to disable GPLv3 recipes

 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |   14 ++++++++-
 bitbake/lib/bb/ui/hob.py                    |   42 ++++++++++++++++++++++++--
 meta/classes/base.bbclass                   |    9 +++++-
 3 files changed, 59 insertions(+), 6 deletions(-)

-- 
1.7.4


