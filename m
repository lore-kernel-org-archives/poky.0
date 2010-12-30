Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 60BB14C80FFE
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:28:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Dec 2010 18:28:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="641614692"
Received: from unknown (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 29 Dec 2010 18:28:31 -0800
Message-Id: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Thu, 30 Dec 2010 10:32:08 +0800
Date: Thu, 30 Dec 2010 10:37:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/19][PULL] recipe upgrade, Dongxiao Xu, 2010/12/30
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
X-List-Received-Date: Thu, 30 Dec 2010 02:28:32 -0000

Hi Saul,

This pull request contains recipe upgrades targeted in M3, please help to review and pull.

I tested incremental build for qemux86, qemuarm, qemuppc, and qemumips on a i686 host, along with a full build for atom-pc machine. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (19):
  pulseaudio: upgrade to version 0.9.22
  ofono: upgrade to version 0.37
  netbase: upgrade to version 4.44
  bluez4: upgrade to version 4.82
  gstreamer: upgrade to version 0.10.31
  gst-plugins-base: upgrade to version 0.10.31
  gst-plugins-good: upgrade to version 0.10.26
  telepathy-glib: upgrade to version 0.13.6
  telepathy-idle: upgrade to version 0.1.7
  telepathy-python: upgrade to version 0.15.19
  dpkg: upgrade to version 1.15.8.7
  glib-2.0: upgrade to version 2.27.5
  telepathy-mission-control: upgrade to version 5.7.1
  libogg: upgrade to version 1.2.2
  linux-firmware: upgrade to rev
    40c0f950be7040614dc45df54e25e54d00e3b73b
  tremor: upgrade to rev 17636
  connman: upgrade to version 0.65
  connman-gnome: update service name
  distro_tracking: update pulseaudio, ofono, netbase, etc.

 .../conf/distro/include/distro_tracking_fields.inc |  142 +++++++++++---------
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
 .../{bluez4-4.79 => bluez4-4.82}/bluetooth.conf    |    0
 .../fix-dfutool-usb-declaration-mismatch.patch     |    0
 .../hid2hci_usb_init.patch                         |    0
 .../{bluez4-4.79 => bluez4-4.82}/sbc-thumb.patch   |    0
 .../bluez/{bluez4_4.79.bb => bluez4_4.82.bb}       |    4 +-
 .../connman/{connman-0.64 => connman-0.65}/connman |    0
 .../{connman-0.64 => connman-0.65}/dbusperms.patch |    0
 .../fix-shutdown-ap-disconnect.patch               |    0
 .../connman-gnome/service_name_update.patch        |   36 +++++
 .../connman/connman-gnome_0.5.bb                   |    5 +-
 .../connman/{connman_0.64.bb => connman_0.65.bb}   |    4 +-
 meta/recipes-connectivity/ofono/ofono_0.33.bb      |    9 --
 meta/recipes-connectivity/ofono/ofono_0.37.bb      |    9 ++
 ...thy-glib_0.13.5.bb => telepathy-glib_0.13.6.bb} |    4 +-
 ...pathy-idle_0.1.6.bb => telepathy-idle_0.1.7.bb} |    4 +-
 ...5.7.0.bb => telepathy-mission-control_5.7.1.bb} |    4 +-
 ...thon_0.15.18.bb => telepathy-python_0.15.19.bb} |    6 +-
 .../60_wait-longer-for-threads-to-die.patch        |    0
 .../configure-libtool.patch                        |    0
 .../glib-gettextize-dir.patch                      |    0
 .../{glib-2.0_2.27.3.bb => glib-2.0_2.27.5.bb}     |    4 +-
 .../colinux/interfaces                             |    0
 .../{netbase-4.43 => netbase-4.44}/epia/interfaces |    0
 .../netbase/{netbase-4.43 => netbase-4.44}/hosts   |    0
 .../netbase/{netbase-4.43 => netbase-4.44}/init    |    0
 .../{netbase-4.43 => netbase-4.44}/interfaces      |    0
 .../mtx-1/interfaces                               |    0
 .../netbase/{netbase-4.43 => netbase-4.44}/nfsroot |    0
 .../nokia800/interfaces                            |    0
 .../{netbase-4.43 => netbase-4.44}/openmn/hosts    |    0
 .../openmn/interfaces                              |    0
 .../qemuarm/interfaces                             |    0
 .../qemuarmv6/interfaces                           |    0
 .../qemuarmv7/interfaces                           |    0
 .../qemux86-64/interfaces                          |    0
 .../qemux86/interfaces                             |    0
 .../{netbase-4.43 => netbase-4.44}/tosa/interfaces |    0
 .../wrt54/interfaces                               |    0
 .../xxs1500/interfaces                             |    0
 .../netbase/{netbase_4.43.bb => netbase_4.44.bb}   |    4 +-
 .../dpkg/{dpkg_1.15.8.5.bb => dpkg_1.15.8.7.bb}    |    6 +-
 .../gst-plugins-base-tremor.patch                  |    0
 ...base_0.10.30.bb => gst-plugins-base_0.10.31.bb} |    9 +-
 ...good_0.10.25.bb => gst-plugins-good_0.10.26.bb} |    4 +-
 .../gstreamer/gst-plugins/make-382.patch           |   25 ----
 .../gstreamer/gstreamer-0.10.30/make-382.patch     |   32 -----
 .../check_fix.patch                                |    0
 .../gst-inspect-check-error.patch                  |    0
 .../gstregistrybinary.c                            |    0
 .../gstregistrybinary.h                            |    0
 .../{gstreamer_0.10.30.bb => gstreamer_0.10.31.bb} |    9 +-
 .../libogg/{libogg_1.2.1.bb => libogg_1.2.2.bb}    |    4 +-
 .../armv4+v5asm.patch                              |    0
 .../autoconf_version.patch                         |    0
 .../buildfix.patch                                 |    0
 .../configure_silent_rules.patch                   |    0
 .../gcc4-compile-fix.patch                         |    0
 .../tls_m4.patch                                   |    0
 .../volatiles.04_pulse                             |    0
 .../{pulseaudio_0.9.21.bb => pulseaudio_0.9.22.bb} |    4 +-
 .../{tremor_20101027.bb => tremor_20101121.bb}     |    2 +-
 64 files changed, 162 insertions(+), 172 deletions(-)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/bluetooth.conf (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/fix-dfutool-usb-declaration-mismatch.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/hid2hci_usb_init.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/sbc-thumb.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4_4.79.bb => bluez4_4.82.bb} (94%)
 rename meta/recipes-connectivity/connman/{connman-0.64 => connman-0.65}/connman (100%)
 rename meta/recipes-connectivity/connman/{connman-0.64 => connman-0.65}/dbusperms.patch (100%)
 rename meta/recipes-connectivity/connman/{connman-0.64 => connman-0.65}/fix-shutdown-ap-disconnect.patch (100%)
 create mode 100644 meta/recipes-connectivity/connman/connman-gnome/service_name_update.patch
 rename meta/recipes-connectivity/connman/{connman_0.64.bb => connman_0.65.bb} (80%)
 delete mode 100644 meta/recipes-connectivity/ofono/ofono_0.33.bb
 create mode 100644 meta/recipes-connectivity/ofono/ofono_0.37.bb
 rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.13.5.bb => telepathy-glib_0.13.6.bb} (80%)
 rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.6.bb => telepathy-idle_0.1.7.bb} (81%)
 rename meta/recipes-connectivity/telepathy/{telepathy-mission-control_5.7.0.bb => telepathy-mission-control_5.7.1.bb} (92%)
 rename meta/recipes-connectivity/telepathy/{telepathy-python_0.15.18.bb => telepathy-python_0.15.19.bb} (78%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.3 => glib-2.0-2.27.5}/60_wait-longer-for-threads-to-die.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.3 => glib-2.0-2.27.5}/configure-libtool.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.3 => glib-2.0-2.27.5}/glib-gettextize-dir.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0_2.27.3.bb => glib-2.0_2.27.5.bb} (68%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/colinux/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/epia/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/hosts (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/init (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/mtx-1/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/nfsroot (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/nokia800/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/openmn/hosts (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/openmn/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemuarm/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemuarmv6/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemuarmv7/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemux86-64/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemux86/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/tosa/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/wrt54/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/xxs1500/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase_4.43.bb => netbase_4.44.bb} (94%)
 rename meta/recipes-devtools/dpkg/{dpkg_1.15.8.5.bb => dpkg_1.15.8.7.bb} (76%)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-base-0.10.30 => gst-plugins-base-0.10.31}/gst-plugins-base-tremor.patch (100%)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-base_0.10.30.bb => gst-plugins-base_0.10.31.bb} (78%)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-good_0.10.25.bb => gst-plugins-good_0.10.26.bb} (83%)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
 delete mode 100644 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/check_fix.patch (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/gst-inspect-check-error.patch (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/gstregistrybinary.c (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/gstregistrybinary.h (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer_0.10.30.bb => gstreamer_0.10.31.bb} (84%)
 rename meta/recipes-multimedia/libogg/{libogg_1.2.1.bb => libogg_1.2.2.bb} (81%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/armv4+v5asm.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/autoconf_version.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/buildfix.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/configure_silent_rules.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/gcc4-compile-fix.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/tls_m4.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/volatiles.04_pulse (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio_0.9.21.bb => pulseaudio_0.9.22.bb} (76%)
 rename meta/recipes-multimedia/tremor/{tremor_20101027.bb => tremor_20101121.bb} (88%)


