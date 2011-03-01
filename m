Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D2514C80AAA
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 15:21:42 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Mar 2011 13:21:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,249,1297065600"; d="scan'208";a="714866283"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2011 13:21:36 -0800
Message-Id: <cover.1298991086.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 1 Mar 2011 06:51:26 -0800
Date: Tue, 01 Mar 2011  6:52:26 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] bugfix for bug#754
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
X-List-Received-Date: Tue, 01 Mar 2011 21:21:42 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  gcc: take out libiberty files from gcc packages

 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate.inc                 |    3 ++-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-package-cross.inc    |    4 ++++
 meta/recipes-devtools/gcc/gcc-package-target.inc   |    4 ++++
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 10 files changed, 17 insertions(+), 8 deletions(-)

-- 
1.7.2.2


