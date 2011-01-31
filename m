Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 659084C80050
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 10:59:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2011 08:59:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,404,1291622400"; d="scan'208";a="652904901"
Received: from unknown (HELO [10.255.14.125]) ([10.255.14.125])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 08:59:12 -0800
Message-ID: <4D46EA60.5010503@linux.intel.com>
Date: Mon, 31 Jan 2011 08:59:12 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Pull Request
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
X-List-Received-Date: Mon, 31 Jan 2011 16:59:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

These series of changes have been built.

This includes Paul's QT4, Scott's Doc's enableing and Lianhao's rootfs 
and SDK generation changes.

Please review and pull if acceptable.

Sau!



Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Dexuan Cui (2):
   xkeyboard-config: upgrade from 2.0 to 2.1
   gdk-pixbuf: add jpeg into DEPENDS

Dongxiao Xu (1):
   xserver-kdrive: add missing RDEPENDS of hal

Lianhao Lu (8):
   image/package_xx/rootfs_xx.bbclass: move rootfs_xx_log_check().
   rootfs_deb/package_deb.bbclass: move func from rootfs_deb to
     package_deb
   rootfs_ipk/package_ipk.bbclass: Move func from rootfs_ipk to
     package_ipk
   rootfs_rpm/package_rpm.bbclass: Move func from rootfs_rpm to
     package_rpm
   populate_sdk_rpm.bbclass: Added rpm support for populate_sdk task.
   populate_sdk_deb.bbclass: Added deb support for populate_sdk task.
   populate_sdk_ipk.bbclass: Added ipk support in populate_sdk task.
   populate_sdk.bbclass/meta-toolchain: Made populate_sdk task more
     generic

Mei Lei (1):
   distrodata.bbclass: Imporve the checkpkg task more precisely and
     generate data for pkg-report-system

Paul Eggleton (12):
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
   qt4: set RRECOMMENDS correctly for qt4 demos and examples packages

Scott Garman (9):
   sgml-common: new recipe v0.6.3
   docbook-sgml-dtd: new recipes - v3.1, v4.1, v4.5
   docbook-dsssl-stylesheets: new recipe v1.79
   sgmlspl: new recipe, v1.03ii
   opensp: new recipe v1.5
   openjade: new recipe v1.3.2
   docbook-utils: new recipe v0.6.14
   iputils: enable generation of man pages
   distro_tracking_fields.inc: added docbook-utils and dependencies

  meta/classes/distrodata.bbclass                    |   35 +-
  meta/classes/image.bbclass                         |    5 +-
  meta/classes/package.bbclass                       |    2 +
  meta/classes/package_deb.bbclass                   |  145 ++
  meta/classes/package_ipk.bbclass                   |   63 +
  meta/classes/package_rpm.bbclass                   |  250 +++-
  meta/classes/populate_sdk.bbclass                  |   82 +
  meta/classes/populate_sdk_deb.bbclass              |   60 +
  meta/classes/populate_sdk_ipk.bbclass              |   44 +
  meta/classes/populate_sdk_rpm.bbclass              |   80 +
  meta/classes/qt4e.bbclass                          |   18 +
  meta/classes/qt4x11.bbclass                        |    9 +
  meta/classes/rootfs_deb.bbclass                    |  111 +-
  meta/classes/rootfs_ipk.bbclass                    |   45 +-
  meta/classes/rootfs_rpm.bbclass                    |  165 +--
  .../conf/distro/include/distro_tracking_fields.inc |   69 +
  meta/recipes-connectivity/avahi/avahi.inc          |    9 +-
  meta/recipes-connectivity/avahi/avahi_0.6.28.bb    |    2 +-
  meta/recipes-core/dbus/dbus.inc                    |    3 +-
  meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb      |    2 +-
  meta/recipes-core/glib-2.0/glib.inc                |    1 +
  meta/recipes-core/meta/meta-toolchain.bb           |  103 +-
  .../docbook-dsssl-stylesheets-native_1.79.bb       |   52 +
  .../docbook-sgml-dtd-3.1-native.bb                 |   23 +
  .../docbook-sgml-dtd-4.1-native.bb                 |   23 +
  .../docbook-sgml-dtd-4.5-native.bb                 |   17 +
  .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   53 +
  .../docbook-sgml-dtd/files/LICENSE-OASIS           |   16 +
  .../docbook-utils/docbook-utils_0.6.14.bb          |   20 +
  .../openjade/openjade-1.3.2/autoconf.patch         |  173 ++
  .../openjade/openjade-1.3.2/configure.patch        |   68 +
  .../openjade/openjade-1.3.2/makefile.patch         |   34 +
  .../openjade-1.3.2/oj-native-libosp-fix.patch      |   15 +
  meta/recipes-devtools/openjade/openjade_1.3.2.bb   |   66 +
  .../opensp/opensp/attributevalue.patch             |   62 +
  .../opensp/opensp/fix-docdir.patch                 |   14 +
  meta/recipes-devtools/opensp/opensp/m4.patch       | 1925 
++++++++++++++++++++
  .../opensp/opensp/rangmap-fix.patch                |   15 +
  meta/recipes-devtools/opensp/opensp_1.5.bb         |   27 +
  .../sgml-common/sgml-common-0.6.3/autohell.patch   |   58 +
  .../sgml-common/sgml-common-0.6.3/license.patch    |   26 +
  .../sgml-common/sgml-common-native_0.6.3.bb        |   50 +
  .../sgml-common/sgml-common_0.6.3.bb               |   52 +
  meta/recipes-devtools/sgmlspl/files/combined.patch |  457 +++++
  .../sgmlspl/sgmlspl-native_1.03ii.bb               |   17 +
  meta/recipes-extended/iputils/iputils_s20101006.bb |   10 +-
  meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |    2 +
  .../directfb/directfb-1.4.6/mkdfiff.patch          |   24 +
  meta/recipes-graphics/directfb/directfb.inc        |   68 +
  meta/recipes-graphics/directfb/directfb_1.4.6.bb   |   27 +
  .../directfb-1.2.x-fix-pkgconfig-cflags.patch      |   47 +
  .../directfb/files/dont-use-linux-config.patch     |   12 +
  ...board-config_2.0.bb => xkeyboard-config_2.1.bb} |    4 +-
  .../xorg-xserver/xserver-kdrive_1.7.99.2.bb        |    4 +-
  meta/recipes-qt/meta/meta-toolchain-qte.bb         |   32 +
  .../recipes-qt/qt4/files/compile.test-lflags.patch |   13 +
  meta/recipes-qt/qt4/files/configure-lflags.patch   |   13 +
  meta/recipes-qt/qt4/files/configure-paths.patch    |   21 +
  meta/recipes-qt/qt4/files/qmake-exists-check.patch |   18 +
  meta/recipes-qt/qt4/files/qte.sh                   |    7 +
  .../qt4/files/qthelp-lib-qtclucene.patch           |   86 +
  meta/recipes-qt/qt4/qt-4.6.3.inc                   |   54 +-
  meta/recipes-qt/qt4/qt-4.7.1.inc                   |   58 +
  .../0001-Added-Openembedded-crossarch-option.patch |   44 +
  meta/recipes-qt/qt4/qt-4.7.1/g++.conf              |   60 +
  .../qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch          |   19 +
  meta/recipes-qt/qt4/qt-4.7.1/linux.conf            |   66 +
  meta/recipes-qt/qt4/qt4-embedded.inc               |   34 +
  meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    9 +
  meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb          |   10 +
  meta/recipes-qt/qt4/qt4-tools-native.inc           |   44 +-
  meta/recipes-qt/qt4/qt4-tools-native_4.6.3.bb      |   12 +-
  meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb      |   13 +
  meta/recipes-qt/qt4/qt4-tools-nativesdk.inc        |  111 ++
  meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb   |    6 +
  meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb   |    6 +
  meta/recipes-qt/qt4/qt4-x11-free.inc               |    9 +-
  meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb          |    7 +-
  meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb          |   12 +
  meta/recipes-qt/qt4/qt4.inc                        |  242 ++--
  meta/recipes-qt/qt4/qt4_arch.inc                   |   25 +
  meta/recipes-qt/tasks/task-qte-toolchain-host.bb   |    7 +
  meta/recipes-qt/tasks/task-qte-toolchain-target.bb |   35 +
  83 files changed, 5244 insertions(+), 593 deletions(-)
  create mode 100644 meta/classes/populate_sdk.bbclass
  create mode 100644 meta/classes/populate_sdk_deb.bbclass
  create mode 100644 meta/classes/populate_sdk_ipk.bbclass
  create mode 100644 meta/classes/populate_sdk_rpm.bbclass
  create mode 100644 meta/classes/qt4e.bbclass
  create mode 100644 meta/classes/qt4x11.bbclass
  create mode 100644 
meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
  create mode 100644 
meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
  create mode 100644 
meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
  create mode 100644 
meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
  create mode 100644 
meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
  create mode 100644 
meta/recipes-devtools/docbook-sgml-dtd/files/LICENSE-OASIS
  create mode 100644 
meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
  create mode 100644 
meta/recipes-devtools/openjade/openjade-1.3.2/autoconf.patch
  create mode 100644 
meta/recipes-devtools/openjade/openjade-1.3.2/configure.patch
  create mode 100644 
meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
  create mode 100644 
meta/recipes-devtools/openjade/openjade-1.3.2/oj-native-libosp-fix.patch
  create mode 100644 meta/recipes-devtools/openjade/openjade_1.3.2.bb
  create mode 100644 
meta/recipes-devtools/opensp/opensp/attributevalue.patch
  create mode 100644 meta/recipes-devtools/opensp/opensp/fix-docdir.patch
  create mode 100644 meta/recipes-devtools/opensp/opensp/m4.patch
  create mode 100644 meta/recipes-devtools/opensp/opensp/rangmap-fix.patch
  create mode 100644 meta/recipes-devtools/opensp/opensp_1.5.bb
  create mode 100644 
meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
  create mode 100644 
meta/recipes-devtools/sgml-common/sgml-common-0.6.3/license.patch
  create mode 100644 
meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
  create mode 100644 meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
  create mode 100644 meta/recipes-devtools/sgmlspl/files/combined.patch
  create mode 100644 meta/recipes-devtools/sgmlspl/sgmlspl-native_1.03ii.bb
  create mode 100644 
meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch
  create mode 100644 meta/recipes-graphics/directfb/directfb.inc
  create mode 100644 meta/recipes-graphics/directfb/directfb_1.4.6.bb
  create mode 100644 
meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.patch
  create mode 100644 
meta/recipes-graphics/directfb/files/dont-use-linux-config.patch
  rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_2.0.bb => 
xkeyboard-config_2.1.bb} (83%)
  create mode 100644 meta/recipes-qt/meta/meta-toolchain-qte.bb
  create mode 100644 meta/recipes-qt/qt4/files/compile.test-lflags.patch
  create mode 100644 meta/recipes-qt/qt4/files/configure-lflags.patch
  create mode 100644 meta/recipes-qt/qt4/files/configure-paths.patch
  create mode 100644 meta/recipes-qt/qt4/files/qmake-exists-check.patch
  create mode 100644 meta/recipes-qt/qt4/files/qte.sh
  create mode 100644 meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch
  create mode 100644 meta/recipes-qt/qt4/qt-4.7.1.inc
  create mode 100644 
meta/recipes-qt/qt4/qt-4.7.1/0001-Added-Openembedded-crossarch-option.patch
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

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


