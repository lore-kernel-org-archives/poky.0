Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F3624C80B6A
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:05:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Nov 2010 05:05:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="630938296"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 05:05:48 -0800
Message-Id: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sun, 28 Nov 2010 19:26:00 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/11] recpies upgrade: mesa and other graphics recipes
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
X-List-Received-Date: Sun, 28 Nov 2010 13:05:49 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/upgrade-11-28
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-11-28

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (11):
  sqlite: upgrade from 3.6.23 to 3.7.3
  libxml2-native: remove the --without-debug option
  talloc: add new recipes talloc 2.0.1
  mesa-dri: upgrade from 7.8.2 to 7.9
  mesa-xlib: upgrade from 7.8.2 to 7.9
  mesa: enable glu
  glew: add new recipes glew 1.5.7
  mesa-demo: add new recpies mesa demo 8.0.2
  mesa-dri-glsl-native: upgrade from 7.8.2 to 7.9
  qemugl: upgrade to git commit
    33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9
  xf86-video-omapfb: upgrade to latest commit

 .../conf/distro/include/poky-default-revisions.inc |    6 +-
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 meta/recipes-core/libxml/libxml2.inc               |    2 +-
 meta/recipes-core/libxml/libxml2_2.7.7.bb          |    2 +-
 meta/recipes-extended/talloc/talloc_2.0.1.bb       |   24 ++++
 meta/recipes-graphics/glew/files/autotools.patch   |  146 ++++++++++++++++++++
 meta/recipes-graphics/glew/glew_1.5.7.bb           |   19 +++
 meta/recipes-graphics/mesa/mesa-common.inc         |    5 +-
 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb     |   19 +++
 ...native_7.8.2.bb => mesa-dri-glsl-native_7.9.bb} |    9 +-
 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |   53 -------
 meta/recipes-graphics/mesa/mesa-dri_7.9.bb         |   38 +++++
 .../mesa/{mesa-xlib_7.8.2.bb => mesa-xlib_7.9.bb}  |   15 +--
 meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb    |    3 -
 meta/recipes-support/sqlite/sqlite3_3.7.3.bb       |    5 +
 15 files changed, 270 insertions(+), 78 deletions(-)
 create mode 100644 meta/recipes-extended/talloc/talloc_2.0.1.bb
 create mode 100644 meta/recipes-graphics/glew/files/autotools.patch
 create mode 100644 meta/recipes-graphics/glew/glew_1.5.7.bb
 create mode 100644 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
 rename meta/recipes-graphics/mesa/{mesa-dri-glsl-native_7.8.2.bb => mesa-dri-glsl-native_7.9.bb} (58%)
 delete mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
 create mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.9.bb
 rename meta/recipes-graphics/mesa/{mesa-xlib_7.8.2.bb => mesa-xlib_7.9.bb} (51%)
 delete mode 100644 meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
 create mode 100644 meta/recipes-support/sqlite/sqlite3_3.7.3.bb


