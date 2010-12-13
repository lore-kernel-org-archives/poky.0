Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F11B4C80048
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 10:46:39 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2010 08:46:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="635852909"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2010 08:46:38 -0800
Message-Id: <cover.1292258655.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Mon, 13 Dec 2010 08:44:15 -0800
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
X-List-Received-Date: Mon, 13 Dec 2010 16:46:39 -0000

Saul,
  Here are the upgrades for remaining devel/toolchain recipes. The commits 
related to autoconf are dropped from this branch, as I was seeing rpm 
packaging issue after upgrading autoconf.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/upgrades
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/upgrades

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (6):
  patch_2.5.9: clean up the recipe
  patch-2.6.1: implement new patch recipe with latest upstream
  fstests: upgrade to svn revision #426
  gnu-config: upgrade recipe to the latest repo head
  python-pygobject: upgrade from 2.21.1 to 2.27.0
  distro_tracking: update status for upgraded recipes

 .../conf/distro/include/distro_tracking_fields.inc |   21 +-
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../gnu-config/config-guess-uclibc.patch           |  130 +-
 .../gnu-config/gnu-config_20080123.bb              |   38 -
 meta/recipes-devtools/gnu-config/gnu-config_git.bb |   48 +
 .../recipes-devtools/patch/patch-2.5.9/2.5.9.patch |27399 --------------------
 .../global-reject-file.diff                        |  137 +-
 meta/recipes-devtools/patch/patch.inc              |    1 -
 .../patch/{patch-2.5.9 => patch}/debian.patch      |    0
 .../{patch-2.5.9 => patch}/global-reject-file.diff |    0
 .../patch/{patch-2.5.9 => patch}/install.patch     |    0
 .../unified-reject-files.diff                      |    0
 meta/recipes-devtools/patch/patch_2.5.9.bb         |   13 +-
 meta/recipes-devtools/patch/patch_2.6.1.bb         |   14 +
 ...2.21.1.bb => python-pygobject-native_2.27.0.bb} |    0
 ...object_2.21.1.bb => python-pygobject_2.27.0.bb} |    2 +-
 meta/recipes-graphics/fstests/fstests_svn.bb       |    6 +-
 17 files changed, 204 insertions(+), 27607 deletions(-)
 delete mode 100644 meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
 create mode 100644 meta/recipes-devtools/gnu-config/gnu-config_git.bb
 delete mode 100644 meta/recipes-devtools/patch/patch-2.5.9/2.5.9.patch
 copy meta/recipes-devtools/patch/{patch-2.5.9 => patch-2.6.1}/global-reject-file.diff (57%)
 rename meta/recipes-devtools/patch/{patch-2.5.9 => patch}/debian.patch (100%)
 rename meta/recipes-devtools/patch/{patch-2.5.9 => patch}/global-reject-file.diff (100%)
 rename meta/recipes-devtools/patch/{patch-2.5.9 => patch}/install.patch (100%)
 rename meta/recipes-devtools/patch/{patch-2.5.9 => patch}/unified-reject-files.diff (100%)
 create mode 100644 meta/recipes-devtools/patch/patch_2.6.1.bb
 rename meta/recipes-devtools/python/{python-pygobject-native_2.21.1.bb => python-pygobject-native_2.27.0.bb} (100%)
 rename meta/recipes-devtools/python/{python-pygobject_2.21.1.bb => python-pygobject_2.27.0.bb} (98%)

-- 
1.7.2.2


