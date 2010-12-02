Return-Path: <saul.wold@intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 098AE4C803A5
	for <poky@lists.pokylinux.org>; Wed,  1 Dec 2010 23:29:32 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id 0C66312EC3D7; Thu,  2 Dec 2010 00:07:22 -0600 (CST)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by pug.o-hand.com (Postfix) with ESMTP id 9D4D112EC1F4
	for <poky@o-hand.com>; Thu,  2 Dec 2010 00:07:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2010 21:29:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="632273557"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2010 21:29:30 -0800
Message-ID: <4CF72EB9.4070903@intel.com>
Date: Wed, 01 Dec 2010 21:29:29 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@o-hand.com" <poky@o-hand.com>
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
X-List-Received-Date: Thu, 02 Dec 2010 05:29:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard:

Please pull this as it has fixes for master build.

Thanks

Sau!



Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Dongxiao Xu (26):
   cmake-native: Upgrade to version 2.8.3
   gypsy: Upgrade to version 0.8
   telepathy-python: Upgrade to version 0.15.18
   telepathy-mission-control: Upgrade to version 5.7.0
   connman: Upgrade to version 0.63
   minicom: Upgrade to version 2.4
   wpa-supplicant: Upgrade to version 0.7.3
   gst-openmax: Upgrade to version 0.10.1
   gupnp-tools: Upgrade to version 0.8
   gssdp: Upgrade to version 0.9.0
   ofono: Upgrade to version 0.33
   gupnp-av: Upgrade to version 0.7.0
   libgsmd: Upgrade to rev 5394
   distro_tracking: gupnp-av, gupnp-tools, ofono, etc.
   linux-firmware: Update LIC_FILES_CHKSUM info
   clutter-gst: Update LICENSE and LIC_FILES_CHKSUM info
   gst-ffmpeg: Update LICENSE and LIC_FILES_CHKSUM info
   gst-fluendo-mp3: Update LICENSE and LIC_FILES_CHKSUM info
   gst-fluendo-mpegdemux: Fix LICENSE info
   gupnp: Update LICENSE and LIC_FILES_CHKSUM info
   libomxil: Fix LICENSE and LIC_FILES_CHKSUM info
   libsamplerate0: Fix LICENSE and LIC_FILES_CHKSUM info
   libtelepathy: Fix LICENSE and LIC_FILES_CHKSUM info
   pulseaudio: Fix LICENSE and LIC_FILES_CHKSUM info
   telepathy-idle: Fix LICENSE and LIC_FILES_CHKSUM info
   zeroconf: Fix LICENSE and LIC_FILES_CHKSUM info

Mei Lei (35):
   quicky:Add license checksum to bb file
   modutils-collateral:Add license checksum to bb file
   opkg-config-base:Add license checksum to bb file
   opkg-collateral:Add license checksum to bb file
   poky-feed-config-opkg: Add license checksum to bb file
   consolekit:Add license checksum to bb file
   gobject-introspection:Add license checksum to bb file
   console-tools:Add license checksum and update the GPL information
   libxml-parser-perl:Add license checksum to bb file
   libtimedate-perl:Add license checksum and update the GPL information
   libconvert-ans1-perl:Add license checksum and update the GPL
     information
   gnu-config:Add license checksum and update the GPL information
   gdb:Add license checksum and update the GPL information
   gcc:Add license checksum and update the GPL information
   mpfr:Add license checksum and update the GPL information
   perl:Add license checksum to bb file
   prelink:Add license checksum to bb file
   python:Add license checksum to bb file
   python-dbus:Add license checksum to bb file
   python-imaging:Add license checksum to bb file
   python-pygobject:Add license checksum and update the GPL information
   python-pygtk:Add license checksum and update the GPL information
   python-pyrex:Add license checksum and update the License information
   python-scons:Add license checksum and update the GPL information
   quilt:Add license checksum and update the GPL information
   make:Add license checksum and update the GPL information
   lsof:Add license checksum to bb file
   dtc:Add license checksum and add the GPL information
   libtheora:Add license checksum to bb file
   libxml-simple-perl:Add license checksum to bb file
   mc:Add license checksum to bb file
   qmmp:Add license checksum to bb file
   base-files:Add license checksum to bb file
   flex:Add license checksum and add the license information
   gthumb:Add license checksum to bb file

Qing He (17):
   aspell: update license
   diffutils: update license
   fakechroot: update license info
   hdparm: update license info
   ncurses: update license info
   parted: update license info
   resolvconf: update license info
   setserial: update license info
   tiff: update license info
   tinylogin: update license info
   v86d: update license info
   zaurusd: update license info
   yaffs2-utils: update license info
   ubootchart: update license info
   u-boot-mkimage: update license info
   bind: add new recipe
   dhcp: fix cross build

Saul Wold (9):
   xrandr: fix License Checksum
   gobject-introspection: Fix pathfix.patch to correct glibconfig.h
     location
   eds-tools: Fix SRCREV and add LIC_FILE_CHKSUM
   table.inc: correct version number
   world-broken: cleanup post reorg and world cleanup
   preferred-xorg-versions: updated for lastest package updates
   gssdp: add dependency on gobject-interospection
   task-poky-clutter: remove cairo packages
   table move missing patch back to correct location

Yu Ke (18):
   fotowall: add license checksum
   iputils: add license checksum
   libdrm: add license checksum
   qemugl: add license checksum
   xf86-video-vesa: add license checksum
   xf86-input-synaptics: add license checksum
   xf86-video-intel: add license checksum
   xf86-video-omapfb: add license checksum
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

Zhai Edwin (12):
   libgdata: Add 0.6.5 as new recipe
   gtk-doc: Add license checksum
   gtk-theme-torturer: Add license check sum
   libcanberra: Add license check sum
   libgalago: Add license checksum
   matchbox-wm-2: Add license checksum
   metacity: Add license checksum
   xvinfo: Add license checksum
   libfakekey: Add license checksum
   matchbox-session-sato: Add license checksum
   matchbox-stroke: Add license checksum
   qemu: Add license checksum

  .../conf/distro/include/distro_tracking_fields.inc |   97 ++++---
  .../conf/distro/include/poky-default-revisions.inc |    9 +-
  meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
  .../distro/include/preferred-xorg-versions.inc     |   54 ++--
  meta/conf/distro/include/world-broken.inc          |   48 +---
  meta/recipes-bsp/setserial/setserial_2.17.bb       |    3 +
  meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb   |    3 +-
  meta/recipes-bsp/v86d/v86d_0.1.9.bb                |    2 +
  meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    3 +-
  .../bind/bind-9.7.2-P2/conf.patch                  |  305 
++++++++++++++++++++
  .../bind/bind-9.7.2-P2/cross-build-fix.patch       |   19 ++
  meta/recipes-connectivity/bind/bind_9.7.2-P2.bb    |   54 ++++
  .../connman/{connman-0.56 => connman-0.63}/connman |    0
  .../{connman-0.56 => connman-0.63}/dbusperms.patch |    0
  .../fix-shutdown-ap-disconnect.patch               |    0
  meta/recipes-connectivity/connman/connman.inc      |    2 +-
  .../connman/{connman_0.56.bb => connman_0.63.bb}   |    5 +-
  .../dhcp/dhcp-4.2.0/fix-external-bind.patch        |  101 +++++++
  meta/recipes-connectivity/dhcp/dhcp4.inc           |    6 +-
  meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb       |    6 +-
  .../recipes-connectivity/galago/libgalago_0.5.2.bb |    5 +-
  .../gsm/files/fix_machine_init.patch               |   21 +-
  meta/recipes-connectivity/gsm/gsmd.inc             |    8 +-
  .../gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb}       |    7 +-
  meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb    |    8 -
  meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb  |    8 -
  meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb  |   15 +
  .../gupnp/gupnp-tools_0.8.1.bb                     |   14 +
  meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb |    7 -
  meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb    |    4 +-
  meta/recipes-connectivity/gypsy/gypsy_0.6.bb       |   15 -
  meta/recipes-connectivity/gypsy/gypsy_0.8.bb       |   25 ++
  meta/recipes-connectivity/ofono/ofono.inc          |    4 +-
  .../ofono/{files => ofono}/ofono                   |    0
  meta/recipes-connectivity/ofono/ofono_0.17.bb      |    7 -
  meta/recipes-connectivity/ofono/ofono_0.33.bb      |    9 +
  .../resolvconf/resolvconf_1.43.bb                  |    3 +-
  .../telepathy/libtelepathy_0.3.3.bb                |    4 +-
  .../telepathy/telepathy-idle_0.1.6.bb              |    4 +-
  .../telepathy-mission-control/pkgconfig.patch      |   24 --
  ..._4.67.bb => telepathy-mission-control_5.7.0.bb} |   12 +-
  .../telepathy/telepathy-python_0.15.1.bb           |    8 -
  .../telepathy/telepathy-python_0.15.18.bb          |   16 +
  .../99_wpa_supplicant                              |    0
  .../defaults-sane                                  |    0
  .../defconfig                                      |    0
  .../defconfig-gnutls                               |    0
  .../init.sh                                        |    0
  .../wpa-supplicant.sh                              |    0
  .../wpa_supplicant-0.5.7-always-scan.patch         |    0
  ...a_supplicant-fix-deprecated-dbus-function.patch |    0
  .../wpa_supplicant.conf                            |    0
  .../wpa_supplicant.conf-sane                       |    0
  .../wpa_supplicant_default.conf                    |    0
  .../wpa-supplicant/wpa-supplicant_0.7.2.bb         |    3 -
  .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    6 +
  meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb |    4 +-
  meta/recipes-core/base-files/base-files_3.0.14.bb  |    2 +-
  .../console-tools/console-tools_0.3.2.bb           |    3 +-
  .../feed-config/poky-feed-config-opkg_1.0.bb       |    2 +-
  meta/recipes-core/libxml/libxml2.inc               |    2 +-
  meta/recipes-core/libxml/libxml2_2.7.7.bb          |    2 +-
  meta/recipes-core/ncurses/ncurses.inc              |    1 +
  meta/recipes-core/tinylogin/tinylogin_1.4.bb       |    3 +-
  meta/recipes-devtools/cmake/cmake-native_2.8.2.bb  |    4 -
  meta/recipes-devtools/cmake/cmake-native_2.8.3.bb  |    7 +
  meta/recipes-devtools/cmake/cmake.inc              |    2 +
  meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |    3 +-
  meta/recipes-devtools/flex/flex_2.5.35.bb          |    3 +-
  meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    7 +-
  meta/recipes-devtools/gdb/gdb_7.2.bb               |    6 +-
  .../gnu-config/gnu-config_20080123.bb              |    3 +-
  meta/recipes-devtools/make/make_3.82.bb            |    4 +-
  meta/recipes-devtools/opkg/opkg-collateral.bb      |    2 +-
  meta/recipes-devtools/opkg/opkg-config-base_1.0.bb |    3 +-
  .../perl/libxml-parser-perl_2.36.bb                |    1 +
  .../perl/libxml-simple-perl_2.18.bb                |    1 +
  meta/recipes-devtools/perl/perl_5.8.8.bb           |    2 +
  meta/recipes-devtools/prelink/prelink_git.bb       |    1 +
  meta/recipes-devtools/python/python-dbus_0.83.1.bb |    1 +
  .../python/python-imaging_1.1.7.bb                 |    3 +-
  .../python/python-pygobject_2.21.1.bb              |    3 +-
  .../recipes-devtools/python/python-pygtk_2.17.0.bb |    3 +-
  meta/recipes-devtools/python/python-pyrex_0.9.9.bb |    3 +-
  meta/recipes-devtools/python/python-scons_2.0.1.bb |    3 +-
  meta/recipes-devtools/python/python_2.6.6.bb       |    2 +-
  meta/recipes-devtools/qemu/qemu.inc                |    2 +-
  meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 +
  meta/recipes-devtools/quilt/quilt_0.48.bb          |    3 +-
  meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    1 +
  meta/recipes-devtools/yaffs2/yaffs2-utils.inc      |    1 +
  meta/recipes-extended/diffutils/diffutils_2.8.1.bb |    6 +-
  meta/recipes-extended/hdparm/hdparm_6.3.bb         |    1 +
  meta/recipes-extended/iputils/iputils_s20100418.bb |    5 +
  meta/recipes-extended/lsof/lsof_4.84.bb            |    3 +-
  meta/recipes-extended/mc/mc_4.7.3.bb               |    1 +
  .../{minicom-2.3 => minicom-2.4}/gcc4-scope.patch  |    0
  .../rename-conflicting-functions.patch             |    0
  meta/recipes-extended/minicom/minicom_2.3.bb       |   18 --
  meta/recipes-extended/minicom/minicom_2.4.bb       |   22 ++
  meta/recipes-extended/parted/parted_1.9.0.bb       |    3 +-
  .../perl/libconvert-asn1-perl_0.21.bb              |    3 +-
  .../recipes-extended/perl/libtimedate-perl_1.20.bb |    3 +-
  .../gnome/gobject-introspection/pathfix.patch      |   21 +--
  .../gnome/gobject-introspection_git.bb             |    3 +-
  meta/recipes-gnome/gnome/libgdata_0.6.5.bb         |   12 +
  meta/recipes-gnome/gnome/metacity_2.22.0.bb        |    5 +-
  meta/recipes-gnome/gthumb/gthumb_2.12.0.bb         |    1 +
  meta/recipes-gnome/gtk-doc/gtk-doc.bb              |    2 +
  .../gtk-theme-torturer/gtk-theme-torturer_git.bb   |    1 +
  .../clutter/clutter-gst-1.0_git.bb                 |    3 +
  meta/recipes-graphics/clutter/clutter-gst.inc      |    2 +-
  meta/recipes-graphics/clutter/table.inc            |    2 +-
  .../recipes-graphics/clutter/table/fixes.patch     |    0
  meta/recipes-graphics/drm/libdrm_2.4.22.bb         |    2 +
  meta/recipes-graphics/glew/files/autotools.patch   |  146 ++++++++++
  meta/recipes-graphics/glew/glew_1.5.7.bb           |   19 ++
  meta/recipes-graphics/libfakekey/libfakekey_svn.bb |    1 +
  .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    4 +-
  meta/recipes-graphics/mesa/mesa-common.inc         |    5 +-
  meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb     |   19 ++
  ...native_7.8.2.bb => mesa-dri-glsl-native_7.9.bb} |    9 +-
  meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |   53 ----
  meta/recipes-graphics/mesa/mesa-dri_7.9.bb         |   38 +++
  .../mesa/{mesa-xlib_7.8.2.bb => mesa-xlib_7.9.bb}  |   15 +-
  meta/recipes-graphics/mesa/qemugl_git.bb           |    4 +-
  meta/recipes-graphics/tasks/task-poky-clutter.bb   |    2 -
  meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb     |    2 +-
  meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb     |    1 +
  .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |    2 +
  .../xorg-driver/xf86-video-intel_2.13.0.bb         |    2 +
  .../xorg-driver/xf86-video-omapfb_git.bb           |    2 +
  .../xorg-driver/xf86-video-vesa_2.3.0.bb           |    2 +
  meta/recipes-kernel/dtc/dtc_git.bb                 |    4 +
  .../linux-firmware/linux-firmware_git.bb           |   13 +
  .../recipes-kernel/modutils/modutils-collateral.bb |    4 +-
  .../gstreamer/gst-ffmpeg_0.10.1.bb                 |    5 +-
  .../gstreamer/gst-fluendo-mp3_0.10.2.bb            |    3 +
  .../gstreamer/gst-fluendo-mpegdemux_0.10.7.bb      |    4 +
  meta/recipes-multimedia/gstreamer/gst-fluendo.inc  |    1 -
  .../gstreamer/gst-openmax_0.10.0.2.bb              |   19 --
  .../gstreamer/gst-openmax_0.10.1.bb                |   20 ++
  meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb |    4 +-
  .../libsamplerate/libsamplerate0_0.1.2.bb          |    4 +-
  .../libtheora/libtheora_1.1.1.bb                   |    2 +-
  meta/recipes-multimedia/libtiff/tiff_3.8.2.bb      |    1 +
  .../pulseaudio/libcanberra_0.10.bb                 |    5 +-
  meta/recipes-multimedia/pulseaudio/pulseaudio.inc  |    6 +-
  meta/recipes-qt/qt-apps/fotowall_0.9.bb            |    2 +
  meta/recipes-qt/qt-apps/qmmp_0.4.1.bb              |    1 +
  meta/recipes-qt/qt-apps/quicky_0.4.bb              |    1 +
  meta/recipes-sato/eds/eds-tools_bzr.bb             |    8 +-
  .../matchbox-sato/matchbox-session-sato_0.1.bb     |    1 +
  .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
  meta/recipes-support/aspell/aspell_0.60.6.bb       |    3 +-
  .../recipes-support/consolekit/consolekit_0.3.0.bb |    1 +
  meta/recipes-support/mpfr/mpfr_3.0.0.bb            |    4 +-
  meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb    |    3 -
  meta/recipes-support/sqlite/sqlite3_3.7.3.bb       |    5 +
  meta/recipes-support/talloc/talloc_2.0.1.bb        |   24 ++
  160 files changed, 1244 insertions(+), 402 deletions(-)
  create mode 100644 meta/recipes-connectivity/bind/bind-9.7.2-P2/conf.patch
  create mode 100644 
meta/recipes-connectivity/bind/bind-9.7.2-P2/cross-build-fix.patch
  create mode 100644 meta/recipes-connectivity/bind/bind_9.7.2-P2.bb
  rename meta/recipes-connectivity/connman/{connman-0.56 => 
connman-0.63}/connman (100%)
  mode change 100755 => 100644
  rename meta/recipes-connectivity/connman/{connman-0.56 => 
connman-0.63}/dbusperms.patch (100%)
  rename meta/recipes-connectivity/connman/{connman-0.56 => 
connman-0.63}/fix-shutdown-ap-disconnect.patch (100%)
  rename meta/recipes-connectivity/connman/{connman_0.56.bb => 
connman_0.63.bb} (79%)
  create mode 100644 
meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-external-bind.patch
  rename meta/recipes-connectivity/gupnp/{gssdp_0.7.1.bb => 
gssdp_0.9.0.bb} (67%)
  delete mode 100644 meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb
  delete mode 100644 meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb
  create mode 100644 meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb
  create mode 100644 meta/recipes-connectivity/gupnp/gupnp-tools_0.8.1.bb
  delete mode 100644 meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb
  delete mode 100644 meta/recipes-connectivity/gypsy/gypsy_0.6.bb
  create mode 100644 meta/recipes-connectivity/gypsy/gypsy_0.8.bb
  rename meta/recipes-connectivity/ofono/{files => ofono}/ofono (100%)
  delete mode 100644 meta/recipes-connectivity/ofono/ofono_0.17.bb
  create mode 100644 meta/recipes-connectivity/ofono/ofono_0.33.bb
  delete mode 100644 
meta/recipes-connectivity/telepathy/telepathy-mission-control/pkgconfig.patch
  rename 
meta/recipes-connectivity/telepathy/{telepathy-mission-control_4.67.bb 
=> telepathy-mission-control_5.7.0.bb} (73%)
  delete mode 100644 
meta/recipes-connectivity/telepathy/telepathy-python_0.15.1.bb
  create mode 100644 
meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/99_wpa_supplicant (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/defaults-sane (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/defconfig (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/defconfig-gnutls (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/init.sh (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/wpa-supplicant.sh (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/wpa_supplicant-0.5.7-always-scan.patch (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> 
wpa-supplicant-0.7.3}/wpa_supplicant-fix-deprecated-dbus-function.patch 
(100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/wpa_supplicant.conf (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/wpa_supplicant.conf-sane (100%)
  rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 
=> wpa-supplicant-0.7.3}/wpa_supplicant_default.conf (100%)
  delete mode 100644 
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.2.bb
  create mode 100644 
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
  delete mode 100644 meta/recipes-devtools/cmake/cmake-native_2.8.2.bb
  create mode 100644 meta/recipes-devtools/cmake/cmake-native_2.8.3.bb
  rename meta/recipes-extended/minicom/{minicom-2.3 => 
minicom-2.4}/gcc4-scope.patch (100%)
  rename meta/recipes-extended/minicom/{minicom-2.3 => 
minicom-2.4}/rename-conflicting-functions.patch (100%)
  delete mode 100644 meta/recipes-extended/minicom/minicom_2.3.bb
  create mode 100644 meta/recipes-extended/minicom/minicom_2.4.bb
  create mode 100644 meta/recipes-gnome/gnome/libgdata_0.6.5.bb
  rename {meta-demoapps => 
meta}/recipes-graphics/clutter/table/fixes.patch (100%)
  create mode 100644 meta/recipes-graphics/glew/files/autotools.patch
  create mode 100644 meta/recipes-graphics/glew/glew_1.5.7.bb
  create mode 100644 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
  rename meta/recipes-graphics/mesa/{mesa-dri-glsl-native_7.8.2.bb => 
mesa-dri-glsl-native_7.9.bb} (58%)
  delete mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
  create mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.9.bb
  rename meta/recipes-graphics/mesa/{mesa-xlib_7.8.2.bb => 
mesa-xlib_7.9.bb} (51%)
  delete mode 100644 
meta/recipes-multimedia/gstreamer/gst-openmax_0.10.0.2.bb
  create mode 100644 meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
  delete mode 100644 meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
  create mode 100644 meta/recipes-support/sqlite/sqlite3_3.7.3.bb
  create mode 100644 meta/recipes-support/talloc/talloc_2.0.1.bb


