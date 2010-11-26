Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 710934C8110E
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:29 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 22:53:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="681195918"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 22:53:28 -0800
Message-Id: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 26 Nov 2010 09:51:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/14] [PULL] Connectivity/Multimedia/Base recipes upgrade
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:30 -0000

Hi Saul,

Here are recipes upgrade for connectivity, multimedia, and base group.
Please help to review and pull. Thanks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (14):
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

 .../conf/distro/include/distro_tracking_fields.inc |   97 +++++++++++++-------
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
 .../connman/{connman-0.56 => connman-0.63}/connman |    0
 .../{connman-0.56 => connman-0.63}/dbusperms.patch |    0
 .../fix-shutdown-ap-disconnect.patch               |    0
 meta/recipes-connectivity/connman/connman.inc      |    2 +-
 .../connman/{connman_0.56.bb => connman_0.63.bb}   |    5 +-
 .../gsm/files/fix_machine_init.patch               |   21 +++--
 meta/recipes-connectivity/gsm/gsmd.inc             |    8 +-
 .../gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb}       |    3 +
 meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb    |    8 --
 meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb  |    8 --
 meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb  |   15 +++
 .../gupnp/gupnp-tools_0.8.1.bb                     |   14 +++
 meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb |    7 --
 meta/recipes-connectivity/gypsy/gypsy_0.6.bb       |   15 ---
 meta/recipes-connectivity/gypsy/gypsy_0.8.bb       |   25 +++++
 meta/recipes-connectivity/ofono/ofono.inc          |    4 +-
 .../ofono/{files => ofono}/ofono                   |    0
 meta/recipes-connectivity/ofono/ofono_0.17.bb      |    7 --
 meta/recipes-connectivity/ofono/ofono_0.33.bb      |    9 ++
 .../telepathy-mission-control/pkgconfig.patch      |   24 -----
 ..._4.67.bb => telepathy-mission-control_5.7.0.bb} |   12 ++-
 .../telepathy/telepathy-python_0.15.1.bb           |    8 --
 .../telepathy/telepathy-python_0.15.18.bb          |   16 +++
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
 meta/recipes-devtools/cmake/cmake-native_2.8.2.bb  |    4 -
 meta/recipes-devtools/cmake/cmake-native_2.8.3.bb  |    7 ++
 meta/recipes-devtools/cmake/cmake.inc              |    2 +
 .../{minicom-2.3 => minicom-2.4}/gcc4-scope.patch  |    0
 .../rename-conflicting-functions.patch             |    0
 meta/recipes-extended/minicom/minicom_2.3.bb       |   18 ----
 meta/recipes-extended/minicom/minicom_2.4.bb       |   22 +++++
 .../gstreamer/gst-openmax_0.10.0.2.bb              |   19 ----
 .../gstreamer/gst-openmax_0.10.1.bb                |   20 ++++
 48 files changed, 238 insertions(+), 175 deletions(-)
 rename meta/recipes-connectivity/connman/{connman-0.56 => connman-0.63}/connman (100%)
 mode change 100755 => 100644
 rename meta/recipes-connectivity/connman/{connman-0.56 => connman-0.63}/dbusperms.patch (100%)
 rename meta/recipes-connectivity/connman/{connman-0.56 => connman-0.63}/fix-shutdown-ap-disconnect.patch (100%)
 rename meta/recipes-connectivity/connman/{connman_0.56.bb => connman_0.63.bb} (79%)
 rename meta/recipes-connectivity/gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb} (77%)
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
 delete mode 100644 meta/recipes-connectivity/telepathy/telepathy-mission-control/pkgconfig.patch
 rename meta/recipes-connectivity/telepathy/{telepathy-mission-control_4.67.bb => telepathy-mission-control_5.7.0.bb} (73%)
 delete mode 100644 meta/recipes-connectivity/telepathy/telepathy-python_0.15.1.bb
 create mode 100644 meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/99_wpa_supplicant (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/defaults-sane (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/defconfig (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/defconfig-gnutls (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/init.sh (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa-supplicant.sh (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant-0.5.7-always-scan.patch (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant-fix-deprecated-dbus-function.patch (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant.conf (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant.conf-sane (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant_default.conf (100%)
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.2.bb
 create mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
 delete mode 100644 meta/recipes-devtools/cmake/cmake-native_2.8.2.bb
 create mode 100644 meta/recipes-devtools/cmake/cmake-native_2.8.3.bb
 rename meta/recipes-extended/minicom/{minicom-2.3 => minicom-2.4}/gcc4-scope.patch (100%)
 rename meta/recipes-extended/minicom/{minicom-2.3 => minicom-2.4}/rename-conflicting-functions.patch (100%)
 delete mode 100644 meta/recipes-extended/minicom/minicom_2.3.bb
 create mode 100644 meta/recipes-extended/minicom/minicom_2.4.bb
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-openmax_0.10.0.2.bb
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb


