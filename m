Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F1084C811DF
	for <poky@pokylinux.org>; Tue, 21 Dec 2010 01:28:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Dec 2010 23:27:45 -0800
Message-Id: <849307$arkaj1@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="364522112"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by azsmga001.ch.intel.com with ESMTP; 20 Dec 2010 23:27:45 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Tue, 21 Dec 2010 15:07:33 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/1] fix broken sstate in fork() model
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
X-List-Received-Date: Tue, 21 Dec 2010 07:28:46 -0000

Frankly speaking I'm not very clear about which part of data requires re-initialization
and which part doesn't in the child. But one obvious difference from previous exec()
model is that environmental variables are not exported again since they're already in
the data store. Original way to pass BB_TASKHASH through env now simply breaks and thus
there's no signature in sstate packages. The fix is simple, to simply set variable 
directly, but I'm not sure whether there're other similar issues regarding to env handle
here...

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  runqueue.py: set BB_TASKHASH approriately after moving to fork()

 bitbake/lib/bb/runqueue.py |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)


