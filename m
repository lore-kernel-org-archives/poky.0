Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EABEA4C80FAD
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 01:26:22 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 23:26:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="643978558"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 23:26:22 -0800
Message-ID: <4D256E75.8090905@linux.intel.com>
Date: Wed, 05 Jan 2011 23:25:41 -0800
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
X-List-Received-Date: Thu, 06 Jan 2011 07:26:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

Please review this pull request made up of a number of updates and 
tweaks to the build system.  Most notably is Kevin's fixes for sstate 
and some of my fixes for the LIC_FILES_CHKSUM and world build enabling.

This does not have the Perl update as I ran into some issue and will be 
in touch with Nitin on.

Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Darren Hart (4):
   trace-cmd: fix cross-compilation
   trace-cmd: license file updates
   glib-2.0: fix g_once_init_enter compile failure
   kernelshark: add ftrace gui viewer

Dexuan Cui (12):
   renderproto: upgrade from 0.11 to the latest version 0.11.1
   inputproto: upgrade from 2.0 to 2.0.1
   xproto: upgrade from 7.0.19 to 7.0.20
   compositeproto: upgrade from 0.4 to 0.4.2
   resourceproto: upgrade from 1.1.0 to 1.1.1
   scrnsaverproto: upgrade from 1.2.0 to 1.2.1
   pixman: upgrade from 0.20.0 to 0.21.2
   libdmx: upgrade from 1.1.0 to 1.1.1
   libxxf86misc: upgrade from 1.0.2 to 1.0.3
   librsvg: upgrade from 2.32.0 to 2.32.1
   preferred-xorg-versions.inc: updated for lastest package updates
   distro_tracking_fields.inc: update for lastest package updates

Jiajun Xu (1):
   qemuimagetest: Remove connman test for lsb image and fix one warning
     in Test_Create_Qemu

Kevin Tian (3):
   binutils: use default ${CC} instead of defining it own
   flex-native: create a wrapper script for sstate installation
   bison-native: create a wrapper script for sstate installation

Nitin A Kamble (4):
   distro-tracking: update recently updated recipes
   git: upgrade from 1.7.3.2 to 1.7.3.4
   byacc: upgrade recipe from 20100610 to 20101127
   python-dbus: upgrade from 0.83.1 to 0.83.2

Saul Wold (4):
   rpm: Bump PR to force rebuild due to new beecrypt
   xserver: Add COMPATIBLE_MACHINE
   modutils: Extend gcc4 patch for obj_ppc.c
   insane.bbclass: Fix message for LIC_FILES_CHKSUM Errors

Scott Garman (8):
   pax-utils: upgrade to version 2.2.2
   apmd: delete unused patch
   apmd: added HOMEPAGE, minor formatting changes
   blktool: minor formatting changes
   libgdbus_git: metadata fixes and minor formatting changes
   dbus-glib: delete unused patch
   dbus-glib: upgrade to version 0.92
   distro_tracking_fields.inc: update apmd, blktool, dbus-glib,
     libgdbus, and pax-utils

Zhai Edwin (5):
   beecrypt: Update to 4.2.1
   xvinfo: Upgrade to 1.1.1
   libcanberra: Upgrade to 0.26
   metacity: Upgrade to 2.30.3
   matchbox-wm-2: Upgrade to svn r2106

  meta/classes/insane.bbclass                        |   16 +-
  .../conf/distro/include/distro_tracking_fields.inc |  154 
++++++++++----------
  .../conf/distro/include/poky-default-revisions.inc |    6 +-
  .../distro/include/preferred-xorg-versions.inc     |   28 ++--
  .../apmd/apmd-3.2.2-14/workaround.patch            |   59 --------
  meta/recipes-bsp/apmd/apmd_3.2.2-14.bb             |    9 +-
  .../dbus/dbus-glib-0.88/fix_asneeded.patch         |   17 --
  .../no-examples.patch                              |    0
  meta/recipes-core/dbus/dbus-glib.inc               |   12 +-
  meta/recipes-core/dbus/dbus-glib_0.88.bb           |    6 -
  meta/recipes-core/dbus/dbus-glib_0.92.bb           |    6 +
  .../glib-2.0-2.27.5/g_once_init_enter.patch        |   22 +++
  meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb      |    6 +-
  meta/recipes-devtools/binutils/binutils.inc        |    2 -
  meta/recipes-devtools/binutils/binutils_2.20.1.bb  |    2 +-
  meta/recipes-devtools/bison/bison_2.4.3.bb         |   10 +-
  meta/recipes-devtools/flex/flex.inc                |    6 +
  meta/recipes-devtools/flex/flex_2.5.35.bb          |    2 +-
  .../git/{git_1.7.3.2.bb => git_1.7.3.4.bb}         |    4 +-
  meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |   19 ---
  meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb |   21 +++
  ...python-dbus_0.83.1.bb => python-dbus_0.83.2.bb} |    6 +-
  meta/recipes-devtools/rpm/rpm_5.1.10.bb            |    2 +-
  meta/recipes-extended/blktool/blktool_4-6.bb       |    9 +-
  meta/recipes-extended/byacc/byacc_20100610.bb      |    7 -
  meta/recipes-extended/byacc/byacc_20101127.bb      |    7 +
  .../gnome/metacity/crosscompile.patch              |   60 ++++++++
  .../{metacity_2.22.0.bb => metacity_2.30.3.bb}     |   14 ++-
  .../doc_Makefile.patch                             |    0
  .../{librsvg_2.32.0.bb => librsvg_2.32.1.bb}       |    7 +-
  .../xorg-app/{xvinfo_1.0.2.bb => xvinfo_1.1.1.bb}  |    4 +-
  meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb     |   14 --
  meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb     |   16 ++
  ...libxxf86misc_1.0.2.bb => libxxf86misc_1.0.3.bb} |    5 +-
  .../{pixman_0.20.0.bb => pixman_0.21.2.bb}         |    9 +-
  .../xorg-proto/compositeproto_0.4.2.bb             |   14 ++
  .../xorg-proto/compositeproto_0.4.bb               |   11 --
  .../xorg-proto/inputproto_2.0.1.bb                 |   16 ++
  meta/recipes-graphics/xorg-proto/inputproto_2.0.bb |   15 --
  .../{renderproto_0.11.bb => renderproto_0.11.1.bb} |    9 +-
  ...sourceproto_1.1.0.bb => resourceproto_1.1.1.bb} |    8 +-
  ...saverproto_1.2.0.bb => scrnsaverproto_1.2.1.bb} |    9 +-
  meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb  |   13 --
  meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb  |   14 ++
  .../xorg-xserver/xserver-xf86-common.inc           |    2 +
  meta/recipes-kernel/modutils/files/gcc4.patch      |   57 +++++--
  meta/recipes-kernel/trace-cmd/kernelshark_git.bb   |   21 +++
  meta/recipes-kernel/trace-cmd/trace-cmd_git.bb     |   17 +-
  .../pulseaudio/libcanberra/autoconf_version.patch  |   38 -----
  .../pulseaudio/libcanberra/nofallbackfix.patch     |   16 --
  .../{libcanberra_0.10.bb => libcanberra_0.26.bb}   |   10 +-
  .../beecrypt/beecrypt/disable-icu-check.patch      |   12 +-
  .../beecrypt/beecrypt/fix-security.patch           |   51 ++++---
  .../recipes-support/beecrypt/beecrypt/x64fix.patch |   23 ---
  .../{beecrypt_4.1.2.bb => beecrypt_4.2.1.bb}       |   13 +-
  meta/recipes-support/libgdbus/libgdbus_git.bb      |   22 ++-
  scripts/qemuimage-testlib                          |    2 +-
  .../scenario/qemuarm/poky-image-lsb                |    1 -
  .../scenario/qemumips/poky-image-lsb               |    1 -
  .../scenario/qemuppc/poky-image-lsb                |    1 -
  .../scenario/qemux86-64/poky-image-lsb             |    1 -
  .../scenario/qemux86/poky-image-lsb                |    1 -
  62 files changed, 497 insertions(+), 468 deletions(-)
  delete mode 100644 meta/recipes-bsp/apmd/apmd-3.2.2-14/workaround.patch
  delete mode 100644 
meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch
  rename meta/recipes-core/dbus/{dbus-glib-0.88 => 
dbus-glib-0.92}/no-examples.patch (100%)
  delete mode 100644 meta/recipes-core/dbus/dbus-glib_0.88.bb
  create mode 100644 meta/recipes-core/dbus/dbus-glib_0.92.bb
  create mode 100644 
meta/recipes-core/glib-2.0/glib-2.0-2.27.5/g_once_init_enter.patch
  rename meta/recipes-devtools/git/{git_1.7.3.2.bb => git_1.7.3.4.bb} (59%)
  delete mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
  create mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb
  rename meta/recipes-devtools/python/{python-dbus_0.83.1.bb => 
python-dbus_0.83.2.bb} (82%)
  delete mode 100644 meta/recipes-extended/byacc/byacc_20100610.bb
  create mode 100644 meta/recipes-extended/byacc/byacc_20101127.bb
  create mode 100644 meta/recipes-gnome/gnome/metacity/crosscompile.patch
  rename meta/recipes-gnome/gnome/{metacity_2.22.0.bb => 
metacity_2.30.3.bb} (53%)
  rename meta/recipes-gnome/librsvg/{librsvg-2.32.0 => 
librsvg-2.32.1}/doc_Makefile.patch (100%)
  rename meta/recipes-gnome/librsvg/{librsvg_2.32.0.bb => 
librsvg_2.32.1.bb} (90%)
  rename meta/recipes-graphics/xorg-app/{xvinfo_1.0.2.bb => 
xvinfo_1.1.1.bb} (58%)
  delete mode 100644 meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb
  create mode 100644 meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
  rename meta/recipes-graphics/xorg-lib/{libxxf86misc_1.0.2.bb => 
libxxf86misc_1.0.3.bb} (66%)
  rename meta/recipes-graphics/xorg-lib/{pixman_0.20.0.bb => 
pixman_0.21.2.bb} (69%)
  create mode 100644 
meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
  delete mode 100644 meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb
  create mode 100644 meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
  delete mode 100644 meta/recipes-graphics/xorg-proto/inputproto_2.0.bb
  rename meta/recipes-graphics/xorg-proto/{renderproto_0.11.bb => 
renderproto_0.11.1.bb} (60%)
  rename meta/recipes-graphics/xorg-proto/{resourceproto_1.1.0.bb => 
resourceproto_1.1.1.bb} (50%)
  rename meta/recipes-graphics/xorg-proto/{scrnsaverproto_1.2.0.bb => 
scrnsaverproto_1.2.1.bb} (53%)
  delete mode 100644 meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
  create mode 100644 meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
  create mode 100644 meta/recipes-kernel/trace-cmd/kernelshark_git.bb
  delete mode 100644 
meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch
  delete mode 100644 
meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch
  rename meta/recipes-multimedia/pulseaudio/{libcanberra_0.10.bb => 
libcanberra_0.26.bb} (73%)
  delete mode 100644 meta/recipes-support/beecrypt/beecrypt/x64fix.patch
  rename meta/recipes-support/beecrypt/{beecrypt_4.1.2.bb => 
beecrypt_4.2.1.bb} (56%)



-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System



