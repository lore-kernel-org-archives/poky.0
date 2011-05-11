Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E3694C80FFA
	for <poky@yoctoproject.org>; Wed, 11 May 2011 15:02:17 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 May 2011 13:02:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,354,1301900400"; 
   d="scan'208";a="477120"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2011 13:02:10 -0700
Message-Id: <cover.1305143302.git.josh@linux.intel.com>
Old-Date: Wed, 11 May 2011 12:48:22 -0700
Date: Wed, 11 May 2011 13:02:04 -0700
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/1] Fix GUI's
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
X-List-Received-Date: Wed, 11 May 2011 20:02:17 -0000

From: Joshua Lock <josh@linux.intel.com>

A recent sysnc with upstream BitBake changed the behaviour of cache
loading such that we need to handle the ParseStarted event not having
a useful total value.

This patch ensures that our three Gtk+ GUI's will continue to work as
expected.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/gui
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/gui

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  bitbake/ui: Fix Gtk+ GUI's after recent cache changes

 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    2 ++
 bitbake/lib/bb/ui/crumbs/runningbuild.py    |    4 +++-
 bitbake/lib/bb/ui/depexp.py                 |    2 ++
 3 files changed, 7 insertions(+), 1 deletions(-)

-- 
1.7.5.1


