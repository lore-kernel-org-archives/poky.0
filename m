Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05BA64C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 08:11:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="581013698"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 08:11:01 -0800
Message-Id: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Mon, 6 Dec 2010 15:59:59 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/10] BitBake GUI fixes
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
X-List-Received-Date: Mon, 06 Dec 2010 16:11:02 -0000

This series of patches fixes the BitBake GUI's and some of the code they
interact with such that I can now successfully use the goggle UI with the
XMLRPC server.

The series is currently pretty useless due to bug#561
(http://bugzilla.pokylinux.org/show_bug.cgi?id=561) preventing use of the
goggle UI with the none server however I would appreciate review on the patch
set before it becomes to large.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (10):
  bitbake/crumbs: Fix crumbs UI for bitbake event class name changes
  bitbake/crumbs: do the test for ignored messages sooner
  bitbake/crumbs: fix the event name determination
  bitbake/goggle: interaction tweaks
  bitbake/depexp: Factor ProgressBar into a separate class in crumbs/
  bitbake/crumbs: add optional pbar parameter to
    RunningBuild.handle_event()
  bitbake/goggle: add a ProgressBar for parse progress
  bitbake/xmlrpc: Modify xmlrpc server to work with Python 2.7
  bitbake/cooker: fix idle command processing in servers
  bitbake/goggle: automatically show most recently added  message

 bitbake/lib/bb/cooker.py                 |    2 +-
 bitbake/lib/bb/server/xmlrpc.py          |   68 +++++++++++++++++++++++++++++-
 bitbake/lib/bb/ui/crumbs/progress.py     |   17 +++++++
 bitbake/lib/bb/ui/crumbs/runningbuild.py |   26 +++++++----
 bitbake/lib/bb/ui/depexp.py              |   19 ++-------
 bitbake/lib/bb/ui/goggle.py              |   15 +++++-
 6 files changed, 117 insertions(+), 30 deletions(-)
 create mode 100644 bitbake/lib/bb/ui/crumbs/progress.py

-- 
1.7.3.2


