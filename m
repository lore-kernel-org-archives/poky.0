Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC5AE4C81146
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:12:59 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 22:12:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="627931249"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 22:12:59 -0800
Message-Id: <cover.1290046217.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Date: Wed, 17 Nov 2010 18:10:17 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/5] Recipe Reorganization
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
X-List-Received-Date: Thu, 18 Nov 2010 06:13:00 -0000

This is the next stage in recipe reorganization to clean up
the world build space.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/stage
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/stage

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (5):
  Meta: Recipe Reogranization
  libsndfile: Upgrade to 1.0.23
  telepathy: initial update
  subversion: Fix host contamination
  web_svn: Fixup Patching and add libowl

 .../farsight/farsight2_0.0.9.bb                    |    0
 .../recipes-connectivity/farsight/libnice_0.0.6.bb |    0
 .../libetpan/files/cxx-is-here.patch               |    0
 .../recipes-connectivity/libetpan/libetpan_0.54.bb |    0
 .../loudmouth/loudmouth_1.4.0.bb                   |    0
 .../openswan/openswan-2.4.7/installflags.patch     |    0
 .../openswan-2.4.7/ld-library-path-breakage.patch  |    0
 .../openswan-2.4.7/openswan-2.4.7-gentoo.patch     |    0
 .../openswan/openswan_2.4.7.bb                     |    0
 .../opensync/libopensync-0.37/build-in-src.patch   |    0
 .../opensync/libopensync-0.37/cmake.patch          |    0
 .../libopensync-0.37/no-python-check.patch         |    0
 .../libopensync-plugin-evolution2/0.37-fixes.patch |    0
 .../opensync/libopensync-plugin-evolution2_0.36.bb |    0
 .../opensync/libopensync-plugin-file_0.37.bb       |    0
 .../libopensync-plugin-google-calendar_0.36.bb     |    0
 .../opensync/libopensync-plugin-irmc_0.36.bb       |    0
 .../libopensync-plugin-syncml/fixerror.patch       |    0
 .../opensync/libopensync-plugin-syncml_0.38.bb     |    0
 .../opensync/libopensync-plugin-vformat_0.37.bb    |    0
 .../opensync/libopensync-plugin_0.36.inc           |    0
 .../opensync/libopensync_0.37.bb                   |    0
 .../recipes-connectivity/opensync/libsync_svn.bb   |    0
 .../opensync/libsyncml/build-in-src.patch          |    0
 .../opensync/libsyncml_0.5.4.bb                    |    0
 .../opensync/msynctool_0.37.bb                     |    0
 .../telepathy/empathy/no-gnome-doc.patch           |    0
 .../telepathy/empathy_2.26.1.bb                    |    0
 .../telepathy/telepathy-farsight_0.0.7.bb          |    0
 .../telepathy/telepathy-gabble/gabble.manager      |    0
 .../telepathy/telepathy-gabble_0.7.8.bb            |    0
 .../wbxml/files/no-doc-install.patch               |    0
 .../recipes-connectivity/wbxml/wbxml2_0.9.2.bb     |    0
 .../recipes-gnome/abiword/abiword-2.5.inc          |    0
 .../abiword/abiword-embedded_2.5.2.bb              |    0
 .../recipes-gnome/abiword/abiword.inc              |    0
 .../recipes-gnome/abiword/abiword_2.5.2.bb         |    0
 .../recipes-gnome/abiword/abiword_cvs.bb           |    0
 .../gcalctool/gcalctool/fix-includedir.patch       |    0
 .../recipes-gnome}/gcalctool/gcalctool_5.7.32.bb   |    0
 .../recipes-gnome}/gcalctool/gcalctool_5.8.17.bb   |    0
 .../gnome/gnome-settings-daemon/configurefix.patch |    0
 .../gnome-settings-daemon/desktop-moblin.patch     |    0
 ...-settings-daemon-2.24.0-catch-deviceadded.patch |    0
 .../gnome-settings-daemon-fix-gthread.patch        |    0
 .../gnome-settings-daemon/mojito-cleanup.patch     |    0
 .../gnome/gnome-settings-daemon/mount-plugin.patch |    0
 .../gnome/gnome-settings-daemon_2.26.1.bb          |    0
 .../30f29e7d8e1b67c40cd18a7155ba30c4382692d5.patch |    0
 .../recipes-gnome/gnome/gnome-terminal_2.26.3.bb   |    0
 .../recipes-gnome/gnome/libgnomecanvas_2.20.0.bb   |    0
 .../recipes-gnome/gnome/libgnomekbd_2.26.0.bb      |    0
 .../recipes-gnome/libgsf/libgsf_1.14.5.bb          |    0
 .../recipes-gnome/libgtkstylus/files/gtkstylus.sh  |    0
 .../recipes-gnome/libgtkstylus/libgtkstylus_0.5.bb |    0
 .../recipes-gnome/wv/wv-1.2.0/pkgconfig.patch      |    0
 .../recipes-gnome/wv/wv_1.2.0.bb                   |    0
 .../recipes-graphics/clutter/table/fixes.patch     |    0
 .../libxklavier/libxklavier/pkgconfigfix.patch     |    0
 .../libxklavier/libxklavier_3.9.bb                 |    0
 .../pong-clock/pong-clock/pong-clock-no-flicker.c  |    0
 .../recipes-graphics/pong-clock/pong-clock_1.0.bb  |    0
 .../recipes-graphics/xorg-app/xbacklight_1.1.bb    |    0
 .../recipes-graphics/xorg-app/xev/diet-x11.patch   |    0
 .../recipes-graphics/xorg-app/xev_1.0.3.bb         |    0
 .../recipes-graphics/xorg-app/xeyes_1.0.1.bb       |    0
 .../recipes-graphics/xorg-app/xrdb/60XDefaults.sh  |    0
 .../recipes-graphics/xorg-app/xrdb_1.0.5.bb        |    0
 .../xorg-lib/liblbxutil/mkg3states.patch           |    0
 .../recipes-graphics/xorg-lib/liblbxutil_1.1.0.bb  |    0
 .../recipes-graphics/xorg-lib/libxaw_1.0.5.bb      |    0
 .../recipes-graphics/xorg-lib/libxevie_1.0.2.bb    |    0
 .../recipes-graphics/xorg-lib/libxkbui_1.0.2.bb    |    0
 .../xorg-lib/libxscrnsaver_1.2.0.bb                |    0
 .../xorg-proto/xproxymanagementprotocol_1.0.3.bb   |    0
 .../recipes-graphics}/xournal/files/ldflags.patch  |    0
 .../xournal/files/no-printing.diff                 |    0
 .../recipes-graphics}/xournal/xournal_0.2.bb       |    0
 .../fuse-2.7.2/not-run-updaterc.d-on-host.patch    |    0
 .../recipes-kernel/fuse/fuse.inc                   |    0
 .../recipes-kernel/fuse/fuse_2.7.2.bb              |    0
 .../recipes-sato/claws-mail/claws-mail.inc         |    0
 .../recipes-sato/claws-mail/claws-mail_2.9.1.bb    |    0
 .../claws-plugin-gtkhtml2-viewer_0.15.bb           |    0
 .../claws-mail/claws-plugin-maildir_0.24.4.bb      |    0
 .../claws-mail/claws-plugin-mailmbox_1.13.bb       |    0
 .../claws-mail/claws-plugin-rssyl_0.13.bb          |    0
 .../recipes-sato/claws-mail/files/desktop.patch    |    0
 .../recipes-sato/claws-mail/files/fix-build.patch  |    0
 .../claws-mail/files/owl-window-menu.patch         |    0
 .../claws-mail/files/streamline-ui.patch           |    0
 .../clipboard-manager/clipboard-manager_0.6.4.bb   |    0
 .../clipboard-manager/files/daemonize.patch        |    0
 .../clipboard-manager/files/makefile.patch         |    0
 .../clipboard-manager/files/script.patch           |    0
 .../epdfview/epdfview/epdfview-ui-print.xml        |    0
 .../recipes-sato/epdfview/epdfview/epdfview-ui.xml |    0
 .../epdfview/epdfview/epdfview.desktop             |    0
 .../recipes-sato/epdfview/epdfview/owl-menus.patch |    0
 .../recipes-sato/epdfview/epdfview_0.1.6.bb        |    0
 .../recipes-sato/epdfview/epdfview_0.1.7.bb        |    0
 .../recipes-sato/kf/files/fix-configure.patch      |    0
 .../recipes-sato/kf/files/fix-desktop-file.patch   |    0
 .../recipes-sato/kf/files/gcc4.patch               |    0
 .../recipes-sato/kf/kf_0.5.4.1.bb                  |    0
 .../matchbox-themes-extra_0.3.bb                   |    0
 .../matchbox-themes-extra_svn.bb                   |    0
 .../recipes-sato/matchbox-themes-gtk/files/gtkrc   |    0
 .../matchbox-themes-gtk/matchbox-themes-gtk.bb     |    0
 .../recipes-support/iso-codes/iso-codes_3.3.bb     |    0
 .../libfribidi/files/libtool-update.patch          |    0
 .../libfribidi/libfribidi_0.10.4.bb                |    0
 .../openobex/files/disable-cable-test.patch        |    0
 .../openobex/files/libusb_crosscompile_check.patch |    0
 .../recipes-support/openobex/openobex_1.5.bb       |    0
 .../recipes-support}/poppler/poppler-data_0.1.bb   |    0
 .../recipes-support}/poppler/poppler-fpu.inc       |    0
 .../recipes-support}/poppler/poppler.inc           |    0
 .../recipes-support}/poppler/poppler_0.9.2.bb      |    0
 meta/recipes-connectivity/bluez/bluez4_4.66.bb     |    1 +
 .../network-suspend-scripts.bb                     |   22 -------
 .../network-suspend-scripts/ifupdown               |   26 --------
 .../network-suspend-scripts/usbnet                 |   16 -----
 ...athy-glib_0.9.2.bb => telepathy-glib_0.13.5.bb} |    2 +-
 ...pathy-idle_0.1.2.bb => telepathy-idle_0.1.6.bb} |    1 +
 .../meta/external-csl-toolchain/SUPPORTED          |    0
 .../meta/external-csl-toolchain_2008q3-72.bb       |    0
 .../meta/external-poky-toolchain.bb                |    0
 .../meta/external-python-tarball.bb                |    0
 .../meta/meta-ide-support.bb                       |    0
 .../meta/meta-toolchain-sdk.bb                     |    0
 .../meta/meta-toolchain.bb                         |    0
 .../meta/package-index.bb                          |    0
 meta/recipes-core/tasks/task-poky-tools.bb         |    2 +
 .../dpkg}/run-postinsts/run-postinsts              |    0
 .../dpkg}/run-postinsts/run-postinsts.awk          |    0
 .../dpkg}/run-postinsts_1.0.bb                     |    0
 .../exmap-console/exmap-console.inc                |   59 ------------------
 .../exmap-console/exmap-console_0.4.1.bb           |    3 -
 .../exmap-console/exmap-console_svn.bb             |    8 ---
 .../subversion/subversion_1.5.5.bb                 |    5 +-
 .../devicekit/devicekit-power_014.bb               |   21 -------
 meta/recipes-extended/devicekit/devicekit/volatile |    1 -
 meta/recipes-extended/devicekit/devicekit_003.bb   |   16 -----
 meta/recipes-extended/devicekit/devicekit_git.bb   |   34 ----------
 meta/recipes-extended/polkit/polkit-gnome_0.96.bb  |   19 ------
 meta/recipes-extended/polkit/polkit_0.96.bb        |   14 ----
 meta/recipes-extended/tasks/task-poky-basic.bb     |    1 +
 meta/recipes-extended/tasks/task-poky-lsb.bb       |    9 ++-
 meta/recipes-extended/zile/files/for_build.patch   |   64 --------------------
 meta/recipes-extended/zile/zile_1.7+2.0beta6.bb    |   19 ------
 .../gthumb/gthumb_2.12.0.bb                        |    0
 .../libunique/libunique_1.1.6.bb                   |    0
 meta/recipes-gnome/tasks/task-sdk-gmae.inc         |   15 +++++
 meta/recipes-graphics/clutter/aaina.inc            |    7 --
 meta/recipes-graphics/clutter/aaina_git.bb         |    7 --
 meta/recipes-graphics/clutter/clutter-0.6_git.bb   |   15 -----
 meta/recipes-graphics/clutter/clutter-0.8_git.bb   |   13 ----
 meta/recipes-graphics/clutter/clutter-box2d.inc    |    2 +-
 .../clutter/clutter-cairo-0.6_git.bb               |   13 ----
 .../clutter/clutter-cairo-0.8_git.bb               |   12 ----
 .../clutter/clutter-gst-0.10_git.bb                |   14 ----
 .../clutter/clutter-gst-0.6_git.bb                 |    9 ---
 .../clutter/clutter-gst-0.8_git.bb                 |    9 ---
 .../clutter/clutter-gtk-0.10_git.bb                |   12 ----
 .../clutter/clutter-gtk-0.6_git.bb                 |    9 ---
 .../clutter/clutter-gtk-0.8_git.bb                 |    9 ---
 meta/recipes-graphics/clutter/tidy.inc             |    2 +-
 meta/recipes-graphics/tasks/task-poky-clutter.bb   |   18 +++---
 meta/recipes-graphics/xorg-lib/libapplewm_1.0.0.bb |    7 --
 meta/recipes-graphics/xorg-lib/libfs_1.0.1.bb      |    8 ---
 meta/recipes-graphics/xorg-lib/liboldx_1.0.1.bb    |    6 --
 .../xorg-lib/libwindowswm_1.0.0.bb                 |    6 --
 .../xorg-proto/applewmproto_1.4.1.bb               |    4 -
 .../xorg-proto/windowswmproto_1.0.4.bb             |    4 -
 meta/recipes-graphics/xorg-util/imake_1.0.2.bb     |    8 ---
 meta/recipes-graphics/xorg-util/lndir_1.0.1.bb     |    6 --
 .../xorg-util/xorg-cf-files_1.0.3.bb               |    8 ---
 meta/recipes-multimedia/alsa/alsa-oss_1.0.17.bb    |   12 ----
 .../libsamplerate/libsamplerate0_0.1.2.bb          |    0
 .../libsndfile/libsndfile1/add-cxx.patch           |    0
 .../libsndfile/libsndfile1_1.0.23.bb}              |    8 ++-
 .../pulseaudio/libatomics-ops/doublefix.patch      |    0
 .../fedora/libatomic_ops-1.2-ppclwzfix.patch       |    0
 .../pulseaudio/libatomics-ops_1.2.bb               |    0
 .../pulseaudio/libcanberra/autoconf_version.patch  |    0
 .../pulseaudio/libcanberra/nofallbackfix.patch     |    0
 .../pulseaudio/libcanberra_0.10.bb                 |    0
 .../pulseaudio/pulseaudio-0.9.15/alsaerror.patch   |    0
 .../pulseaudio-0.9.15/autoconf_version.patch       |    0
 .../pulseaudio/pulseaudio-0.9.15/buildfix.patch    |    0
 .../pulseaudio/pulseaudio-0.9.15/fallback.patch    |    0
 .../pulseaudio-0.9.15/gcc4-compile-fix.patch       |    0
 .../pulseaudio/pulseaudio-0.9.15/periodfix.patch   |    0
 .../pulseaudio-0.9.15/volatiles.04_pulse           |    0
 .../pulseaudio/pulseaudio.inc                      |    0
 .../pulseaudio/pulseaudio_0.9.15.bb                |    0
 meta/recipes-sato/tasks/task-poky-x11-sato.bb      |    2 +
 meta/recipes-sato/web/web/owl-window-menu.patch    |   28 ++++-----
 meta/recipes-sato/web/web_svn.bb                   |   14 ++++-
 .../consolekit/consolekit_0.3.0.bb                 |    0
 .../consolekit/files/nopolkit.patch                |    0
 .../libexif/libexif_0.6.16.bb                      |    0
 meta/recipes-support/ohm/ohm/fix_configure.patch   |   39 ------------
 meta/recipes-support/ohm/ohm_git.bb                |   44 -------------
 .../libsndfile/libsndfile1/acincludefix.patch      |   26 --------
 206 files changed, 73 insertions(+), 666 deletions(-)
 rename {meta => meta-demoapps}/recipes-connectivity/farsight/farsight2_0.0.9.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/farsight/libnice_0.0.6.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/libetpan/files/cxx-is-here.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/libetpan/libetpan_0.54.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/loudmouth/loudmouth_1.4.0.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/openswan/openswan-2.4.7/installflags.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/openswan/openswan-2.4.7/ld-library-path-breakage.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/openswan/openswan-2.4.7/openswan-2.4.7-gentoo.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/openswan/openswan_2.4.7.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-0.37/cmake.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-evolution2_0.36.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-file_0.37.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-google-calendar_0.36.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-irmc_0.36.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-syncml_0.38.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin-vformat_0.37.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync-plugin_0.36.inc (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libopensync_0.37.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libsync_svn.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libsyncml/build-in-src.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/libsyncml_0.5.4.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/opensync/msynctool_0.37.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/telepathy/empathy/no-gnome-doc.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/telepathy/empathy_2.26.1.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/telepathy/telepathy-farsight_0.0.7.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/telepathy/telepathy-gabble/gabble.manager (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/telepathy/telepathy-gabble_0.7.8.bb (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/wbxml/files/no-doc-install.patch (100%)
 rename {meta => meta-demoapps}/recipes-connectivity/wbxml/wbxml2_0.9.2.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/abiword/abiword-2.5.inc (100%)
 rename {meta => meta-demoapps}/recipes-gnome/abiword/abiword-embedded_2.5.2.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/abiword/abiword.inc (100%)
 rename {meta => meta-demoapps}/recipes-gnome/abiword/abiword_2.5.2.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/abiword/abiword_cvs.bb (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-gnome}/gcalctool/gcalctool/fix-includedir.patch (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-gnome}/gcalctool/gcalctool_5.7.32.bb (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-gnome}/gcalctool/gcalctool_5.8.17.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-settings-daemon_2.26.1.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-terminal/30f29e7d8e1b67c40cd18a7155ba30c4382692d5.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/gnome-terminal_2.26.3.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/libgnomecanvas_2.20.0.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/gnome/libgnomekbd_2.26.0.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/libgsf/libgsf_1.14.5.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/libgtkstylus/files/gtkstylus.sh (100%)
 rename {meta => meta-demoapps}/recipes-gnome/libgtkstylus/libgtkstylus_0.5.bb (100%)
 rename {meta => meta-demoapps}/recipes-gnome/wv/wv-1.2.0/pkgconfig.patch (100%)
 rename {meta => meta-demoapps}/recipes-gnome/wv/wv_1.2.0.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/clutter/table/fixes.patch (100%)
 rename {meta => meta-demoapps}/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch (100%)
 rename {meta => meta-demoapps}/recipes-graphics/libxklavier/libxklavier_3.9.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/pong-clock/pong-clock/pong-clock-no-flicker.c (100%)
 rename {meta => meta-demoapps}/recipes-graphics/pong-clock/pong-clock_1.0.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-app/xbacklight_1.1.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-app/xev/diet-x11.patch (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-app/xev_1.0.3.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-app/xeyes_1.0.1.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-app/xrdb/60XDefaults.sh (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-app/xrdb_1.0.5.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-lib/liblbxutil_1.1.0.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-lib/libxaw_1.0.5.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-lib/libxevie_1.0.2.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-lib/libxkbui_1.0.2.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb (100%)
 rename {meta => meta-demoapps}/recipes-graphics/xorg-proto/xproxymanagementprotocol_1.0.3.bb (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-graphics}/xournal/files/ldflags.patch (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-graphics}/xournal/files/no-printing.diff (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-graphics}/xournal/xournal_0.2.bb (100%)
 rename {meta => meta-demoapps}/recipes-kernel/fuse/fuse-2.7.2/not-run-updaterc.d-on-host.patch (100%)
 rename {meta => meta-demoapps}/recipes-kernel/fuse/fuse.inc (100%)
 rename {meta => meta-demoapps}/recipes-kernel/fuse/fuse_2.7.2.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/claws-mail.inc (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/claws-mail_2.9.1.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/claws-plugin-gtkhtml2-viewer_0.15.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/claws-plugin-maildir_0.24.4.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/claws-plugin-mailmbox_1.13.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/claws-plugin-rssyl_0.13.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/files/desktop.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/files/fix-build.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/files/owl-window-menu.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/claws-mail/files/streamline-ui.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/clipboard-manager/clipboard-manager_0.6.4.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/clipboard-manager/files/daemonize.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/clipboard-manager/files/makefile.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/clipboard-manager/files/script.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/epdfview/epdfview/epdfview-ui-print.xml (100%)
 rename {meta => meta-demoapps}/recipes-sato/epdfview/epdfview/epdfview-ui.xml (100%)
 rename {meta => meta-demoapps}/recipes-sato/epdfview/epdfview/epdfview.desktop (100%)
 rename {meta => meta-demoapps}/recipes-sato/epdfview/epdfview/owl-menus.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/epdfview/epdfview_0.1.6.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/epdfview/epdfview_0.1.7.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/kf/files/fix-configure.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/kf/files/fix-desktop-file.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/kf/files/gcc4.patch (100%)
 rename {meta => meta-demoapps}/recipes-sato/kf/kf_0.5.4.1.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_0.3.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb (100%)
 rename {meta => meta-demoapps}/recipes-sato/matchbox-themes-gtk/files/gtkrc (100%)
 rename {meta => meta-demoapps}/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb (100%)
 rename {meta => meta-demoapps}/recipes-support/iso-codes/iso-codes_3.3.bb (100%)
 rename {meta => meta-demoapps}/recipes-support/libfribidi/files/libtool-update.patch (100%)
 rename {meta => meta-demoapps}/recipes-support/libfribidi/libfribidi_0.10.4.bb (100%)
 rename {meta => meta-demoapps}/recipes-support/openobex/files/disable-cable-test.patch (100%)
 rename {meta => meta-demoapps}/recipes-support/openobex/files/libusb_crosscompile_check.patch (100%)
 rename {meta => meta-demoapps}/recipes-support/openobex/openobex_1.5.bb (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-support}/poppler/poppler-data_0.1.bb (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-support}/poppler/poppler-fpu.inc (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-support}/poppler/poppler.inc (100%)
 rename {meta/recipes-tbd => meta-demoapps/recipes-support}/poppler/poppler_0.9.2.bb (100%)
 delete mode 100644 meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts.bb
 delete mode 100644 meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/ifupdown
 delete mode 100644 meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/usbnet
 rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.9.2.bb => telepathy-glib_0.13.5.bb} (97%)
 rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.2.bb => telepathy-idle_0.1.6.bb} (97%)
 rename meta/{recipes-tbd => recipes-core}/meta/external-csl-toolchain/SUPPORTED (100%)
 rename meta/{recipes-tbd => recipes-core}/meta/external-csl-toolchain_2008q3-72.bb (100%)
 rename meta/{recipes-tbd => recipes-core}/meta/external-poky-toolchain.bb (100%)
 rename meta/{recipes-tbd => recipes-core}/meta/external-python-tarball.bb (100%)
 rename meta/{recipes-tbd => recipes-core}/meta/meta-ide-support.bb (100%)
 rename meta/{recipes-tbd => recipes-core}/meta/meta-toolchain-sdk.bb (100%)
 rename meta/{recipes-tbd => recipes-core}/meta/meta-toolchain.bb (100%)
 rename meta/{recipes-tbd => recipes-core}/meta/package-index.bb (100%)
 rename meta/{recipes-tbd/meta => recipes-devtools/dpkg}/run-postinsts/run-postinsts (100%)
 rename meta/{recipes-tbd/meta => recipes-devtools/dpkg}/run-postinsts/run-postinsts.awk (100%)
 rename meta/{recipes-tbd/meta => recipes-devtools/dpkg}/run-postinsts_1.0.bb (100%)
 delete mode 100644 meta/recipes-devtools/exmap-console/exmap-console.inc
 delete mode 100644 meta/recipes-devtools/exmap-console/exmap-console_0.4.1.bb
 delete mode 100644 meta/recipes-devtools/exmap-console/exmap-console_svn.bb
 delete mode 100644 meta/recipes-extended/devicekit/devicekit-power_014.bb
 delete mode 100644 meta/recipes-extended/devicekit/devicekit/volatile
 delete mode 100644 meta/recipes-extended/devicekit/devicekit_003.bb
 delete mode 100644 meta/recipes-extended/devicekit/devicekit_git.bb
 delete mode 100644 meta/recipes-extended/polkit/polkit-gnome_0.96.bb
 delete mode 100644 meta/recipes-extended/polkit/polkit_0.96.bb
 delete mode 100644 meta/recipes-extended/zile/files/for_build.patch
 delete mode 100644 meta/recipes-extended/zile/zile_1.7+2.0beta6.bb
 rename meta/{recipes-tbd => recipes-gnome}/gthumb/gthumb_2.12.0.bb (100%)
 rename meta/{recipes-tbd => recipes-gnome}/libunique/libunique_1.1.6.bb (100%)
 delete mode 100644 meta/recipes-graphics/clutter/aaina.inc
 delete mode 100644 meta/recipes-graphics/clutter/aaina_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-0.6_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-0.8_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-cairo-0.6_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-cairo-0.8_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-gst-0.10_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-gst-0.6_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-gst-0.8_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-gtk-0.10_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-gtk-0.6_git.bb
 delete mode 100644 meta/recipes-graphics/clutter/clutter-gtk-0.8_git.bb
 delete mode 100644 meta/recipes-graphics/xorg-lib/libapplewm_1.0.0.bb
 delete mode 100644 meta/recipes-graphics/xorg-lib/libfs_1.0.1.bb
 delete mode 100644 meta/recipes-graphics/xorg-lib/liboldx_1.0.1.bb
 delete mode 100644 meta/recipes-graphics/xorg-lib/libwindowswm_1.0.0.bb
 delete mode 100644 meta/recipes-graphics/xorg-proto/applewmproto_1.4.1.bb
 delete mode 100644 meta/recipes-graphics/xorg-proto/windowswmproto_1.0.4.bb
 delete mode 100644 meta/recipes-graphics/xorg-util/imake_1.0.2.bb
 delete mode 100644 meta/recipes-graphics/xorg-util/lndir_1.0.1.bb
 delete mode 100644 meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.3.bb
 delete mode 100644 meta/recipes-multimedia/alsa/alsa-oss_1.0.17.bb
 rename meta/{recipes-tbd => recipes-multimedia}/libsamplerate/libsamplerate0_0.1.2.bb (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/libsndfile/libsndfile1/add-cxx.patch (100%)
 rename meta/{recipes-tbd/libsndfile/libsndfile1_1.0.17.bb => recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb} (72%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/libatomics-ops/doublefix.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/libatomics-ops/fedora/libatomic_ops-1.2-ppclwzfix.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/libatomics-ops_1.2.bb (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/libcanberra/autoconf_version.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/libcanberra/nofallbackfix.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/libcanberra_0.10.bb (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio-0.9.15/alsaerror.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio-0.9.15/buildfix.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio-0.9.15/fallback.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio-0.9.15/periodfix.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio-0.9.15/volatiles.04_pulse (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio.inc (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/pulseaudio/pulseaudio_0.9.15.bb (100%)
 rename meta/{recipes-tbd => recipes-support}/consolekit/consolekit_0.3.0.bb (100%)
 rename meta/{recipes-tbd => recipes-support}/consolekit/files/nopolkit.patch (100%)
 rename meta/{recipes-multimedia => recipes-support}/libexif/libexif_0.6.16.bb (100%)
 delete mode 100644 meta/recipes-support/ohm/ohm/fix_configure.patch
 delete mode 100644 meta/recipes-support/ohm/ohm_git.bb
 delete mode 100644 meta/recipes-tbd/libsndfile/libsndfile1/acincludefix.patch


