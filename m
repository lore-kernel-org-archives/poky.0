Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 299EF4C81069
	for <poky@pokylinux.org>; Tue, 14 Dec 2010 08:14:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Dec 2010 06:14:29 -0800
Message-Id: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,342,1288594800"; d="scan'208";a="686996654"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.126])
	by orsmga001.jf.intel.com with ESMTP; 14 Dec 2010 06:14:28 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Tue, 14 Dec 2010 21:40:03 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 0/1] Fix weird rebuild issue even when sstate signature doesn't change
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
X-List-Received-Date: Tue, 14 Dec 2010 14:14:30 -0000

This patch is to fix one weird issue I've keeping seeing recently when using sstate.
Even with a minimal build, there're around 50 recipes rebuilt from scratch even though
sstate packages in sstate_cache do match. Actually the end result is to just overwrite
sstate packages again with same sigature for those recipes.
https://lists.yoctoproject.org/pipermail/poky/2010-December/001063.html

The cause for this mess is from misinterpretation of the index of a list, which then
points to wrong setscene tasks instead of desired ones. The end result is that some
tasks which don't need execution are scheduled while other setscene tasks which need
run are simply skipped.

It's based on Paul's sstate branch.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/sstate
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/sstate

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  runqueue.py: use correct task ID when checking validity of setscene
    tasks

 bitbake/lib/bb/runqueue.py |   16 +++++++++++-----
 1 files changed, 11 insertions(+), 5 deletions(-)


