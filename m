Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 877644C805BB
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 16:03:56 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 14:03:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="613859225"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2011 14:03:56 -0700
Message-Id: <cover.1300309327.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 16 Mar 2011 14:02:07 -0700
Date: Wed, 16 Mar 2011 14:03:55 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/2] GPLv2 versions of m4 & bison
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
X-List-Received-Date: Wed, 16 Mar 2011 21:03:56 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

These commits adds GPLv2 versions of m4 & bison recipes.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (2):
  bison: bring back GPLv2 version 2.3 of bison recipe
  m4: bring back GPLv2 version 1.4.9 of m4 recipe

 .../bison/bison/bison-2.3_m4.patch                 |  590 ++++++++++++++++++++
 meta/recipes-devtools/bison/bison_2.3.bb           |   35 ++
 meta/recipes-devtools/m4/m4-native_1.4.9.bb        |   12 +
 .../m4/m4/fix_for_circular_dependency.patch        |   75 +++
 meta/recipes-devtools/m4/m4_1.4.9.bb               |   18 +
 5 files changed, 730 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/bison/bison/bison-2.3_m4.patch
 create mode 100644 meta/recipes-devtools/bison/bison_2.3.bb
 create mode 100644 meta/recipes-devtools/m4/m4-native_1.4.9.bb
 create mode 100644 meta/recipes-devtools/m4/m4/fix_for_circular_dependency.patch
 create mode 100644 meta/recipes-devtools/m4/m4_1.4.9.bb

-- 
1.7.3.4


