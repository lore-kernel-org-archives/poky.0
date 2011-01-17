Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F0004C811F7
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:46:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jan 2011 14:46:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="878266084"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2011 14:45:51 -0800
Message-Id: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Mon, 17 Jan 2011 14:41:20 -0800
Date: Mon, 17 Jan 2011 14:45:51 -0800
To: poky@yoctoproject.org
Subject: [PATCH 00/12] gcc dso linking change, and related fixes
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
X-List-Received-Date: Mon, 17 Jan 2011 22:46:11 -0000

This commit set, changes the dso linking to avoid automatic linking of 
shared libraries. This caused, as expected, linking of few recipes to fail.
All these recipes are fixed by specifying the linked libraries explicitely.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/dso_linking_change
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/dso_linking_change

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (12):
  gcc_4.5.1: add DSO linking change patch
  sat-solver: fix the build failure caused by gcc dso linkcing change
  libmusicbrainz: fix the build failure caused by gcc dso linkcing
    change
  oprofileui: fix the build failure after gcc dso change
  settings-daemon: fix build error with new gcc dso linking change
  matchbox-desktop: fix build issue with gcc dso linking change
  xtscal: fix build issue with gcc dso linking change
  blktrace: fix build issue with gcc dso linking change
  fstests: fix build issue with gcc dso linking change
  dates: fix build issue with gcc dso linking change
  matchbox-stroke: : fix build issue with gcc dso linking change
  screenshot: fix build issue with gcc dso linking change

 meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch |   52 ++++++++++++++
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 .../sat-solver/dso_linking_change_build_fix.patch  |   31 +++++++++
 meta/recipes-extended/sat-solver/sat-solver_git.bb |    5 +-
 .../files/dso_linking_change_build_fix.patch       |   72 ++++++++++++++++++++
 meta/recipes-graphics/fstests/fstests_svn.bb       |    5 +-
 .../xtscal/dso_linking_change_build_fix.patch      |   25 +++++++
 meta/recipes-graphics/xtscal/xtscal_0.6.3.bb       |    3 +-
 .../blktrace/dso_linking_change_build_fix.patch    |   26 +++++++
 meta/recipes-kernel/blktrace/blktrace_git.bb       |    5 +-
 meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    5 +-
 .../oprofileui/dso_linking_change_build_fix.patch  |   25 +++++++
 .../dso_linking_change_build_fix.patch             |   29 ++++++++
 .../musicbrainz/libmusicbrainz_3.0.3.bb            |    5 +-
 .../files/dso_linking_change_build_fix.patch       |   26 +++++++
 .../matchbox-desktop/matchbox-desktop_2.0.bb       |    5 +-
 .../matchbox-desktop/matchbox-desktop_svn.bb       |    5 +-
 .../files/dso_linking_change_build_fix.patch       |   36 ++++++++++
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    4 +-
 .../dates/dso_linking_change_build_fix.patch       |   36 ++++++++++
 meta/recipes-sato/pimlico/dates_git.bb             |    5 +-
 .../files/dso_linking_change_build_fix.patch       |   41 +++++++++++
 meta/recipes-sato/screenshot/screenshot_svn.bb     |    4 +-
 .../files/dso_linking_change_build_fix.patch       |   29 ++++++++
 .../settings-daemon/settings-daemon_svn.bb         |    5 +-
 34 files changed, 473 insertions(+), 30 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch
 create mode 100644 meta/recipes-extended/sat-solver/sat-solver/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-graphics/fstests/files/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-graphics/xtscal/xtscal/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-kernel/blktrace/blktrace/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-sato/matchbox-desktop/files/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-sato/matchbox-stroke/files/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-sato/pimlico/dates/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch

-- 
1.7.3.4


