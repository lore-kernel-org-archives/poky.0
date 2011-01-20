Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43EB24C810B6
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 05:42:02 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Jan 2011 03:42:01 -0800
Message-Id: <0d30dc$kqbuu6@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="698743755"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2011 03:42:01 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Thu, 20 Jan 2011 19:21:36 +0800
Date: Thu, 20 Jan 2011 19:23:56 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/3] sstate fixes: whitelist and bitbake-diffsigs
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
X-List-Received-Date: Thu, 20 Jan 2011 11:42:02 -0000

this series include one whitelist fix about USER and USERNAME, which allows sstate packages
generated from opensuse to be usable on ubuntu. other two fixes about bitbake-diffsigs, for
better output and correctness

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (3):
  bitbake.conf: add USERNAME to BB_HASHBASE_WHITELIST
  siggen.py: better print for task hash comparison
  siggen.py: remove path in 'runtaskdeps'

 bitbake/lib/bb/siggen.py |   27 +++++++++++++++++++--------
 meta/conf/bitbake.conf   |    2 +-
 2 files changed, 20 insertions(+), 9 deletions(-)


