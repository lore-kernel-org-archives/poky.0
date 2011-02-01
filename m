Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1F274C800A3
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 16:43:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="382913433"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
Message-Id: <cover.1296600047.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 1 Feb 2011 14:40:47 -0800
Date: Tue, 01 Feb 2011 14:43:33 -0800
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/6] mklibs library size optimization commits
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
X-List-Received-Date: Tue, 01 Feb 2011 22:43:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Here are the commits implementing the mklibs library size optimization for 
images. More information in the commit logs.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/mklibs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/mklibs

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (6):
  distro_tracking: update latest upstream versions
  elfutils: add a missing depedancy
  mklibs-native: new recipe for optimizing size of library files
  image-mklibs.bbclass: add the library optimization functionality
  subversion: upgrade from 1.6.13 to 1.6 15
  distro_Tracking: update as per current devel/toolchain recipes

 meta/classes/image-mklibs.bbclass                  |   70 ++++++++++++++++++++
 .../conf/distro/include/distro_tracking_fields.inc |   41 ++++++-----
 meta/conf/local.conf.sample                        |   10 +++-
 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
 .../mklibs/files/ac_init_fix.patch                 |   17 +++++
 .../mklibs/mklibs-native_0.1.31.bb                 |   23 +++++++
 .../subversion/disable-revision-install.patch      |   24 +++++--
 .../{subversion_1.6.13.bb => subversion_1.6.15.bb} |    6 +-
 8 files changed, 164 insertions(+), 30 deletions(-)
 create mode 100644 meta/classes/image-mklibs.bbclass
 create mode 100644 meta/recipes-devtools/mklibs/files/ac_init_fix.patch
 create mode 100644 meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb
 rename meta/recipes-devtools/subversion/{subversion_1.6.13.bb => subversion_1.6.15.bb} (86%)

-- 
1.7.3.4


