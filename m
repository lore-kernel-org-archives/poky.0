Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A5834C804FF
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:03 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Apr 2011 23:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="634102939"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga002.jf.intel.com with ESMTP; 25 Apr 2011 23:43:02 -0700
Message-Id: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Tue, 26 Apr 2011 14:10:23 +0800
Date: Tue, 26 Apr 2011 14:45:56 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 00/13][PULL] Connectivity/Multimedia/Base, Dongxiao Xu, 2011/04/26
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:03 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Saul,

This pull request upgrades some connectivity/multimedia/base recipes.
Please help to review and pull.

This pull request also contains a fix for security bug 980.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/upgrade
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/upgrade

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (13):
  rxvt-unicode: upgrade to version 9.10
  valgrind: upgrade to version 3.6.1
  bluez-hcidump: upgrade to version 2.0
  gupnp-av: upgrade to version 0.8.0
  libsndfile1: upgrade to version 1.0.24
  glib-2.0: upgrade to version 2.28.6
  libfm: Remove the flag of G_DISABLE_DEPRECATED
  polkit: upgrade to version 0.101.
  gst-fluendo-mpegdemux: upgrade to version 0.10.67
  libsamplerate0: upgrade to version 0.1.7
  alsa-utils: upgrade to version 1.0.24.2
  cwautomacros: upgrade to version 20110201
  distro_tracking_fields: cwautomacros, valgrind, etc

 .../conf/distro/include/distro_tracking_fields.inc |   72 +++++++-------
 ...{bluez-hcidump_1.42.bb => bluez-hcidump_2.0.bb} |    8 +-
 .../gupnp/{gupnp-av_0.7.0.bb => gupnp-av_0.8.0.bb} |    4 +-
 .../60_wait-longer-for-threads-to-die.patch        |    2 +
 .../glib-2.0/glib-2.0/configure-libtool.patch      |    2 +
 .../glib-2.0/glib-2.0/g_once_init_enter.patch      |    2 +
 .../glib-2.0/glib-2.0/glib-gettextize-dir.patch    |    2 +
 .../{glib-2.0_2.26.1.bb => glib-2.0_2.28.6.bb}     |    8 +-
 meta/recipes-core/glib-2.0/glib.inc                |    2 +-
 .../fix_issue_caused_by_ccache.patch               |    2 +
 .../fixed-perl-path.patch                          |    2 +
 .../{valgrind_3.6.0.bb => valgrind_3.6.1.bb}       |    4 +-
 ...macros_20090610.bb => cwautomacros_20110201.bb} |    4 +-
 .../polkit/polkit-0.101/introspection.patch        |  104 ++++++++++++++++++++
 .../polkit/{polkit_0.99.bb => polkit_0.101.bb}     |   11 +-
 .../ncursesfix.patch                               |   22 +++--
 ...alsa-utils_1.0.23.bb => alsa-utils_1.0.24.2.bb} |    4 +-
 ...0.10.62.bb => gst-fluendo-mpegdemux_0.10.67.bb} |    4 +-
 .../libsamplerate-0.1.7-macro-quoting.patch        |   22 ++++
 ...amplerate0_0.1.2.bb => libsamplerate0_0.1.7.bb} |   11 +-
 .../libsndfile/libsndfile1/acincludefix.patch      |   26 -----
 .../libsndfile/libsndfile1/add-cxx.patch           |   18 ----
 ...libsndfile1_1.0.23.bb => libsndfile1_1.0.24.bb} |    4 +-
 .../recipes-sato/rxvt-unicode/files/makefile.patch |   20 ----
 meta/recipes-sato/rxvt-unicode/files/rxvt.desktop  |   11 --
 .../rxvt-unicode/files/signedchar.patch            |   11 --
 meta/recipes-sato/rxvt-unicode/files/xwc.patch     |   28 -----
 .../rxvt-unicode/rxvt-unicode-5.6/xwc.patch        |   24 -----
 .../rxvt-unicode/rxvt-unicode-9.10/rxvt.desktop    |    9 ++
 .../{files => rxvt-unicode-9.10}/rxvt.png          |  Bin 2847 -> 2847 bytes
 .../rxvt-unicode/rxvt-unicode-9.10/xwc.patch       |   26 +++++
 .../{rxvt-unicode_5.6.bb => rxvt-unicode_9.10.bb}  |   39 +++-----
 .../libfm/libfm-0.1.14/use_deprecate_func.patch    |   11 ++
 meta/recipes-support/libfm/libfm_0.1.14.bb         |    5 +-
 34 files changed, 286 insertions(+), 238 deletions(-)
 rename meta/recipes-connectivity/bluez/{bluez-hcidump_1.42.bb => bluez-hcidump_2.0.bb} (69%)
 rename meta/recipes-connectivity/gupnp/{gupnp-av_0.7.0.bb => gupnp-av_0.8.0.bb} (77%)
 rename meta/recipes-core/glib-2.0/{glib-2.0_2.26.1.bb => glib-2.0_2.28.6.bb} (57%)
 rename meta/recipes-devtools/valgrind/{valgrind-3.6.0 => valgrind-3.6.1}/fix_issue_caused_by_ccache.patch (94%)
 rename meta/recipes-devtools/valgrind/{valgrind-3.6.0 => valgrind-3.6.1}/fixed-perl-path.patch (97%)
 rename meta/recipes-devtools/valgrind/{valgrind_3.6.0.bb => valgrind_3.6.1.bb} (86%)
 rename meta/recipes-extended/cwautomacros/{cwautomacros_20090610.bb => cwautomacros_20110201.bb} (74%)
 create mode 100644 meta/recipes-extended/polkit/polkit-0.101/introspection.patch
 rename meta/recipes-extended/polkit/{polkit_0.99.bb => polkit_0.101.bb} (77%)
 rename meta/recipes-multimedia/alsa/{alsa-utils-1.0.23 => alsa-utils-1.0.24.2}/ncursesfix.patch (70%)
 rename meta/recipes-multimedia/alsa/{alsa-utils_1.0.23.bb => alsa-utils_1.0.24.2.bb} (95%)
 rename meta/recipes-multimedia/gstreamer/{gst-fluendo-mpegdemux_0.10.62.bb => gst-fluendo-mpegdemux_0.10.67.bb} (71%)
 create mode 100644 meta/recipes-multimedia/libsamplerate/libsamplerate0-0.1.7/libsamplerate-0.1.7-macro-quoting.patch
 rename meta/recipes-multimedia/libsamplerate/{libsamplerate0_0.1.2.bb => libsamplerate0_0.1.7.bb} (59%)
 delete mode 100644 meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch
 delete mode 100644 meta/recipes-multimedia/libsndfile/libsndfile1/add-cxx.patch
 rename meta/recipes-multimedia/libsndfile/{libsndfile1_1.0.23.bb => libsndfile1_1.0.24.bb} (80%)
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/makefile.patch
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/rxvt.desktop
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/signedchar.patch
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/xwc.patch
 delete mode 100644 meta/recipes-sato/rxvt-unicode/rxvt-unicode-5.6/xwc.patch
 create mode 100644 meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/rxvt.desktop
 rename meta/recipes-sato/rxvt-unicode/{files => rxvt-unicode-9.10}/rxvt.png (100%)
 create mode 100644 meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/xwc.patch
 rename meta/recipes-sato/rxvt-unicode/{rxvt-unicode_5.6.bb => rxvt-unicode_9.10.bb} (69%)
 create mode 100644 meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch


