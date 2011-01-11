Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9AE14C80050
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 08:33:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Jan 2011 06:33:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,307,1291622400"; d="scan'208";a="372896230"
Received: from unknown (HELO localhost) ([10.255.16.112])
	by azsmga001.ch.intel.com with ESMTP; 11 Jan 2011 06:33:45 -0800
Message-Id: <cover.1294756107.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Tue, 11 Jan 2011 14:28:27 +0000
Date: Tue, 11 Jan 2011 14:33:39 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/4] Fix XML-RPC server and Goggle UI
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
X-List-Received-Date: Tue, 11 Jan 2011 14:33:47 -0000

This series contains two important fixes and two trivial UI enhancements.

With this series the XML-RPC server now works correctly and the goggle UI has a
subtle, long-standing, bug fixed.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/umm
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/umm

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (4):
  bitbake/uievent: fix queueing of events for xmlrpc before UI has
    loaded
  bitbake/goggle: closing the progress dialog kills the UI
  bitbake/depexp: closing progress dialog kills gui
  bitbake/goggle: don't drop events

 bitbake/lib/bb/ui/depexp.py  |    1 +
 bitbake/lib/bb/ui/goggle.py  |    3 ++-
 bitbake/lib/bb/ui/uievent.py |    7 +++++--
 3 files changed, 8 insertions(+), 3 deletions(-)

-- 
1.7.3.4


