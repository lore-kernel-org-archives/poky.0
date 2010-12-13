Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B686C4C80FA4
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 11:47:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 09:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="583272662"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 09:47:06 -0800
Message-Id: <cover.1292262360.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Mon, 13 Dec 2010 09:46:00 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/2] gcc & eglibc LIC_FILES_CHKSUM updates
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
X-List-Received-Date: Mon, 13 Dec 2010 17:47:06 -0000

Saul,
 Here are the commits adding LIC_FILES_CHKSUM fields for gcc & eglibc recipes. I have pushed these on top of my earlier pull request commits.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/upgrades
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/upgrades

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (2):
  gcc_4.5.1: Move the license related information in the right file
  eglibc: organize the recipes lic and other meta data in common file

 meta/recipes-core/eglibc/eglibc-common.inc  |   11 +++++++++++
 meta/recipes-core/eglibc/eglibc-initial.inc |    3 ++-
 meta/recipes-core/eglibc/eglibc.inc         |    9 ++-------
 meta/recipes-devtools/gcc/gcc-4.5.1.inc     |    9 ++++++++-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb      |    6 ------
 5 files changed, 23 insertions(+), 15 deletions(-)
 create mode 100644 meta/recipes-core/eglibc/eglibc-common.inc

-- 
1.7.2.2


