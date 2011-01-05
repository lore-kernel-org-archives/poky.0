Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81D594C8109B
	for <poky@pokylinux.org>; Wed,  5 Jan 2011 05:58:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 03:58:56 -0800
Message-Id: <b9dded$hinogg@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="590078483"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 03:58:55 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Wed, 5 Jan 2011 19:20:03 +0800
Date: Wed, 05 Jan 2011 19:41:42 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/4] fix some relocation issues for sstate
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
X-List-Received-Date: Wed, 05 Jan 2011 11:58:56 -0000

This series fix relocation issues of some sstate packages, which either encode
original staging path in binaries, or depend on default sysroot option of the 
toolchain which also point to original staging paths. Those links, to original
staging path where sstate packages are generated, are bogus to cause build
failures when sstate packages are used in a new build environment.

I've not finished the whole debug process yet, and there may be more to come.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (4):
  binutils: use default ${CC} instead of defining it own
  flex-native: create a wrapper script for sstate installation
  bison-native: create a wrapper script for sstate installation
  perl: use ${CCLD} instead of its own LD definition

 meta/recipes-devtools/binutils/binutils.inc       |    2 --
 meta/recipes-devtools/binutils/binutils_2.20.1.bb |    2 +-
 meta/recipes-devtools/bison/bison_2.4.3.bb        |   10 +++++++++-
 meta/recipes-devtools/flex/flex.inc               |    6 ++++++
 meta/recipes-devtools/flex/flex_2.5.35.bb         |    2 +-
 meta/recipes-devtools/perl/perl_5.8.8.bb          |    4 ++--
 6 files changed, 19 insertions(+), 7 deletions(-)


