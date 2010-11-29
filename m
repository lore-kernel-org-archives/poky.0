Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1A6D4C80052
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 21:06:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Nov 2010 19:06:00 -0800
Message-Id: <0d30dc$ka7g7g@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="681820404"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2010 19:06:00 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 29 Nov 2010 10:45:23 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/5] [v2]sstate enhancements
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
X-List-Received-Date: Mon, 29 Nov 2010 03:06:01 -0000

This includes some bug fixes and enhancements on both checksum calculation and
bitbake-diffsigs tool. With those fixes, two sato builds either with same source 
tree or different source tree can fully reuse sstate packages.

For the shell variables, I adopted Richard's suggestion to simply whitelist 
them for now. That way allows wider test on sstate feature.

changes since v1:

- rebase to latest master
- add FILESEXTRAPATHS to BB_BASEHASH_WHITELIST which contributes to rest
gap when different source tree is used

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


