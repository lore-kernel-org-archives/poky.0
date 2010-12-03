Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46C164C811CD
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 20:57:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 18:57:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="863877999"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 18:57:43 -0800
Message-Id: <cover.1291344572.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Thu, 2 Dec 2010 18:49:32 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/6] devel/toolchain recipe upgrades
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
X-List-Received-Date: Fri, 03 Dec 2010 02:57:59 -0000

Richard, Saul,
  This is another round of devel/toolchain recipe upgrades bunch. I have tested it on x86, arm, ppc, mips arches, but building for them, and booting in qemu.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/upgrades
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/upgrades

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (6):
  subversion: upgrade from 1.5.5 to 1.6.13
  m4: upgrade from 1.4.13 to 1.4.15
  makedepend: upgrade from 1.0.2 to 1.0.3
  git: upgrade from 1.7.2.1 to 1.7.3.2
  tcl: upgrade from 8.5.8 to 8.5.9
  distro_tracking_fields: update fields for devel/toolchain recipes

 .../conf/distro/include/distro_tracking_fields.inc |   39 ++++++++---------
 meta/recipes-devtools/git/git_1.7.2.1.bb           |    8 ---
 meta/recipes-devtools/git/git_1.7.3.2.bb           |   10 ++++
 .../{m4-native_1.4.13.bb => m4-native_1.4.15.bb}   |    0
 meta/recipes-devtools/m4/m4_1.4.13.bb              |   10 ----
 meta/recipes-devtools/m4/m4_1.4.15.bb              |   15 ++++++
 .../subversion-1.5.5/neon-detection.patch          |   36 ---------------
 .../disable-revision-install.patch                 |    0
 .../libtool2.patch                                 |    0
 .../subversion/subversion/neon-detection.patch     |   13 ++++++
 .../{subversion_1.5.5.bb => subversion_1.6.13.bb}  |    5 ++-
 .../tcltk/tcl/fix_non_native_build_issue.patch     |   46 ++++++++++----------
 .../tcltk/tcl/mips-tclstrtod.patch                 |   28 ------------
 .../tcltk/{tcl_8.5.8.bb => tcl_8.5.9.bb}           |    8 ++-
 .../recipes-graphics/xorg-util/makedepend_1.0.2.bb |    8 ---
 .../recipes-graphics/xorg-util/makedepend_1.0.3.bb |   14 ++++++
 16 files changed, 102 insertions(+), 138 deletions(-)
 delete mode 100644 meta/recipes-devtools/git/git_1.7.2.1.bb
 create mode 100644 meta/recipes-devtools/git/git_1.7.3.2.bb
 rename meta/recipes-devtools/m4/{m4-native_1.4.13.bb => m4-native_1.4.15.bb} (100%)
 delete mode 100644 meta/recipes-devtools/m4/m4_1.4.13.bb
 create mode 100644 meta/recipes-devtools/m4/m4_1.4.15.bb
 delete mode 100644 meta/recipes-devtools/subversion/subversion-1.5.5/neon-detection.patch
 rename meta/recipes-devtools/subversion/{subversion-1.5.5 => subversion}/disable-revision-install.patch (100%)
 rename meta/recipes-devtools/subversion/{subversion-1.5.5 => subversion}/libtool2.patch (100%)
 create mode 100644 meta/recipes-devtools/subversion/subversion/neon-detection.patch
 rename meta/recipes-devtools/subversion/{subversion_1.5.5.bb => subversion_1.6.13.bb} (86%)
 delete mode 100644 meta/recipes-devtools/tcltk/tcl/mips-tclstrtod.patch
 rename meta/recipes-devtools/tcltk/{tcl_8.5.8.bb => tcl_8.5.9.bb} (89%)
 delete mode 100644 meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
 create mode 100644 meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb

-- 
1.7.2.2


