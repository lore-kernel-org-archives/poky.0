Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1EE04C808B6
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 01:13:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 23:13:10 -0800
Message-Id: <0d30dc$k8jjqv@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="680120163"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by orsmga001.jf.intel.com with ESMTP; 22 Nov 2010 23:13:09 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Tue, 23 Nov 2010 14:40:36 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/5] another series of sstate enhancement
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
X-List-Received-Date: Tue, 23 Nov 2010 07:13:11 -0000

This includes some bug fixes and enhancements on both checksum calculation and
bitbake-diffsigs tool. With those fixes, two sato builds with same source tree 
can fully reuse sstate packages except final rootfs genaration, while two builds
with different source tree (same content) still have several mismatches left.

For the shell variables, I adopted Richard's suggestion to simply whitelist 
them for now. That way allows wider test on sstate feature.

Remaining works:
  o better shell variable handling
  o gcc/libc bootstrap investigation
  o more incremental based tests
  o so far the setscene stage is still a bit slow. need understand whether it's
    desired due to vast disk operations

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/sstate
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/sstate

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (5):
  poky.conf: add more hash whitelist
  siggen.py: set 'runtaskdeps' correctly
  siggen.py: fix python error when comparing sstate generated from
    different srcpath
  siggen.py: fix the wrong usage on BB_TASKHASH_WHITELIST
  poky.conf: whitelist shell variables which are volatile to build
    system

 bitbake/lib/bb/siggen.py   |   42 ++++++++++++++++++++++++++----------------
 meta/conf/distro/poky.conf |    3 ++-
 2 files changed, 28 insertions(+), 17 deletions(-)


