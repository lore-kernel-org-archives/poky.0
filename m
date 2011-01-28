Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6942B4C81267
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:27 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 16:36:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="651940206"
Received: from unknown (HELO helios) ([10.255.16.167])
	by fmsmga002.fm.intel.com with SMTP; 27 Jan 2011 16:36:17 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:18 +0000
Message-Id: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 28 Jan 2011 00:27:52 +0000
Date: Fri, 28 Jan 2011  0:36:18 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 00/11] Qt4 update
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:27 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

These patches bring in the latest version of the Qt4 recipes from 
meta-openembedded, and make some significant general recipe cleanups as
well. We will now have support for the latest version of Qt (4.7.1) in
addition to 4.6.3, as well as the embedded (framebuffer-only as opposed
to requiring X11) flavours of both versions.

This patchset also contains the necessary changes to add meta-toolchain-qte 
from OpenEmbedded, and make it build successfully within Poky. Amongst other 
things this required some tweaking of avahi to avoid dependency of avahi-dev
/ avahi-utils on gtk+, which in turn required the addition of a flag to 
control automatic RRECOMMENDS_ generation in package.bbclass.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/qt-fixes2a
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/qt-fixes2a

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (11):
  Add directfb 1.4.6 from meta-openembedded
  qt4: Bring in improvements from meta-openembedded
  qt4: add qt4-embedded 4.6.3 from meta-openembedded
  qt4: add 4.7.1 version from meta-openembedded
  qt4-tools-native: update from OpenEmbedded
  glib-2.0: extend to nativesdk
  dbus: extend to nativesdk
  qt4: Add qt4-tools-nativesdk based on qt4-tools-sdk from OpenEmbedded
  package.bbclass: add nodeprrecs flag to RRECOMMENDS_pkgname
  avahi: prevent unnecessary runtime dependency on gtk+
  qt4: Add meta-toolchain-qte and dependent tasks from OpenEmbedded

 meta/classes/package.bbclass                       |    2 +
 meta/classes/qt4e.bbclass                          |   18 ++
 meta/classes/qt4x11.bbclass                        |    9 +
 meta/recipes-connectivity/avahi/avahi.inc          |    9 +-
 meta/recipes-connectivity/avahi/avahi_0.6.28.bb    |    2 +-
 meta/recipes-core/dbus/dbus.inc                    |    3 +-
 meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb      |    2 +-
 meta/recipes-core/glib-2.0/glib.inc                |    1 +
 .../directfb/directfb-1.4.6/mkdfiff.patch          |   24 ++
 meta/recipes-graphics/directfb/directfb.inc        |   73 ++++++
 meta/recipes-graphics/directfb/directfb_1.4.6.bb   |   27 +++
 .../directfb-1.2.x-fix-pkgconfig-cflags.patch      |   47 ++++
 .../directfb/files/dont-use-linux-config.patch     |   12 +
 meta/recipes-qt/meta/meta-toolchain-qte.bb         |   32 +++
 .../recipes-qt/qt4/files/compile.test-lflags.patch |   13 +
 meta/recipes-qt/qt4/files/configure-lflags.patch   |   13 +
 meta/recipes-qt/qt4/files/configure-paths.patch    |   21 ++
 meta/recipes-qt/qt4/files/qmake-exists-check.patch |   18 ++
 meta/recipes-qt/qt4/files/qte.sh                   |    7 +
 .../qt4/files/qthelp-lib-qtclucene.patch           |   86 +++++++
 meta/recipes-qt/qt4/qt-4.6.3.inc                   |   54 ++---
 meta/recipes-qt/qt4/qt-4.7.1.inc                   |   58 +++++
 .../0001-Added-Openembedded-crossarch-option.patch |   44 ++++
 meta/recipes-qt/qt4/qt-4.7.1/g++.conf              |   60 +++++
 .../qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch          |   19 ++
 meta/recipes-qt/qt4/qt-4.7.1/linux.conf            |   66 ++++++
 meta/recipes-qt/qt4/qt4-embedded.inc               |   34 +++
 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    9 +
 meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb          |   10 +
 meta/recipes-qt/qt4/qt4-tools-native.inc           |   44 +++--
 meta/recipes-qt/qt4/qt4-tools-native_4.6.3.bb      |   12 +-
 meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb      |   13 +
 meta/recipes-qt/qt4/qt4-tools-nativesdk.inc        |  111 ++++++++++
 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb   |    6 +
 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb   |    6 +
 meta/recipes-qt/qt4/qt4-x11-free.inc               |    9 +-
 meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb          |    7 +-
 meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb          |   12 +
 meta/recipes-qt/qt4/qt4.inc                        |  232 ++++++++++----------
 meta/recipes-qt/qt4/qt4_arch.inc                   |   25 ++
 meta/recipes-qt/tasks/task-qte-toolchain-host.bb   |    7 +
 meta/recipes-qt/tasks/task-qte-toolchain-target.bb |   39 ++++
 42 files changed, 1111 insertions(+), 185 deletions(-)
 create mode 100644 meta/classes/qt4e.bbclass
 create mode 100644 meta/classes/qt4x11.bbclass
 create mode 100644 meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch
 create mode 100644 meta/recipes-graphics/directfb/directfb.inc
 create mode 100644 meta/recipes-graphics/directfb/directfb_1.4.6.bb
 create mode 100644 meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.patch
 create mode 100644 meta/recipes-graphics/directfb/files/dont-use-linux-config.patch
 create mode 100644 meta/recipes-qt/meta/meta-toolchain-qte.bb
 create mode 100644 meta/recipes-qt/qt4/files/compile.test-lflags.patch
 create mode 100644 meta/recipes-qt/qt4/files/configure-lflags.patch
 create mode 100644 meta/recipes-qt/qt4/files/configure-paths.patch
 create mode 100644 meta/recipes-qt/qt4/files/qmake-exists-check.patch
 create mode 100644 meta/recipes-qt/qt4/files/qte.sh
 create mode 100644 meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1.inc
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/0001-Added-Openembedded-crossarch-option.patch
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/g++.conf
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/linux.conf
 create mode 100644 meta/recipes-qt/qt4/qt4-embedded.inc
 create mode 100644 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb
 create mode 100644 meta/recipes-qt/qt4/qt4_arch.inc
 create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-host.bb
 create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-target.bb


