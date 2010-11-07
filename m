Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFA234C811CB
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:13:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 22:13:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="350245894"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 22:12:59 -0800
Message-Id: <d08034b54b5cd2dbf4acf072441d1bc31d916a0f.1290046217.git.sgw@linux.intel.com>
In-Reply-To: <cover.1290046217.git.sgw@linux.intel.com>
References: <cover.1290046217.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Sun, 7 Nov 2010 09:16:20 -0800
To: poky@yoctoproject.org
X-Mailman-Approved-At: Thu, 18 Nov 2010 00:20:40 -0600
Cc: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 1/5] Meta: Recipe Reogranization
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
X-List-Received-Date: Thu, 18 Nov 2010 06:13:02 -0000

This is the next stage of recipe reorganization, in this stage
many recipes where moved to a new meta-demoapps layer since this
is more appropriate for demo usage then the core.  Additional some
recipes were moved to meta-extras to indicate they may be depercated
at a future time.

A number of recipes were modified since dependencies need to be
corrected.

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
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
 .../libsndfile/libsndfile1/acincludefix.patch      |    0
 .../libsndfile/libsndfile1/add-cxx.patch           |    0
 .../libsndfile/libsndfile1_1.0.17.bb               |    0
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
 meta/recipes-sato/web/web/owl-window-menu.patch    |   17 -----
 meta/recipes-sato/web/web_svn.bb                   |    2 +-
 .../consolekit/consolekit_0.3.0.bb                 |    0
 .../consolekit/files/nopolkit.patch                |    0
 .../libexif/libexif_0.6.16.bb                      |    0
 meta/recipes-support/ohm/ohm/fix_configure.patch   |   39 ------------
 meta/recipes-support/ohm/ohm_git.bb                |   44 -------------
 203 files changed, 39 insertions(+), 635 deletions(-)
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
 rename meta/{recipes-tbd => recipes-multimedia}/libsndfile/libsndfile1/acincludefix.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/libsndfile/libsndfile1/add-cxx.patch (100%)
 rename meta/{recipes-tbd => recipes-multimedia}/libsndfile/libsndfile1_1.0.17.bb (100%)
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

diff --git a/meta/recipes-connectivity/farsight/farsight2_0.0.9.bb b/meta-demoapps/recipes-connectivity/farsight/farsight2_0.0.9.bb
similarity index 100%
rename from meta/recipes-connectivity/farsight/farsight2_0.0.9.bb
rename to meta-demoapps/recipes-connectivity/farsight/farsight2_0.0.9.bb
diff --git a/meta/recipes-connectivity/farsight/libnice_0.0.6.bb b/meta-demoapps/recipes-connectivity/farsight/libnice_0.0.6.bb
similarity index 100%
rename from meta/recipes-connectivity/farsight/libnice_0.0.6.bb
rename to meta-demoapps/recipes-connectivity/farsight/libnice_0.0.6.bb
diff --git a/meta/recipes-connectivity/libetpan/files/cxx-is-here.patch b/meta-demoapps/recipes-connectivity/libetpan/files/cxx-is-here.patch
similarity index 100%
rename from meta/recipes-connectivity/libetpan/files/cxx-is-here.patch
rename to meta-demoapps/recipes-connectivity/libetpan/files/cxx-is-here.patch
diff --git a/meta/recipes-connectivity/libetpan/libetpan_0.54.bb b/meta-demoapps/recipes-connectivity/libetpan/libetpan_0.54.bb
similarity index 100%
rename from meta/recipes-connectivity/libetpan/libetpan_0.54.bb
rename to meta-demoapps/recipes-connectivity/libetpan/libetpan_0.54.bb
diff --git a/meta/recipes-connectivity/loudmouth/loudmouth_1.4.0.bb b/meta-demoapps/recipes-connectivity/loudmouth/loudmouth_1.4.0.bb
similarity index 100%
rename from meta/recipes-connectivity/loudmouth/loudmouth_1.4.0.bb
rename to meta-demoapps/recipes-connectivity/loudmouth/loudmouth_1.4.0.bb
diff --git a/meta/recipes-connectivity/openswan/openswan-2.4.7/installflags.patch b/meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/installflags.patch
similarity index 100%
rename from meta/recipes-connectivity/openswan/openswan-2.4.7/installflags.patch
rename to meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/installflags.patch
diff --git a/meta/recipes-connectivity/openswan/openswan-2.4.7/ld-library-path-breakage.patch b/meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/ld-library-path-breakage.patch
similarity index 100%
rename from meta/recipes-connectivity/openswan/openswan-2.4.7/ld-library-path-breakage.patch
rename to meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/ld-library-path-breakage.patch
diff --git a/meta/recipes-connectivity/openswan/openswan-2.4.7/openswan-2.4.7-gentoo.patch b/meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/openswan-2.4.7-gentoo.patch
similarity index 100%
rename from meta/recipes-connectivity/openswan/openswan-2.4.7/openswan-2.4.7-gentoo.patch
rename to meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/openswan-2.4.7-gentoo.patch
diff --git a/meta/recipes-connectivity/openswan/openswan_2.4.7.bb b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
similarity index 100%
rename from meta/recipes-connectivity/openswan/openswan_2.4.7.bb
rename to meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
diff --git a/meta/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch
diff --git a/meta/recipes-connectivity/opensync/libopensync-0.37/cmake.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/cmake.patch
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-0.37/cmake.patch
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/cmake.patch
diff --git a/meta/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-evolution2_0.36.bb b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2_0.36.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-evolution2_0.36.bb
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2_0.36.bb
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-file_0.37.bb b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-file_0.37.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-file_0.37.bb
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-file_0.37.bb
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-google-calendar_0.36.bb b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-google-calendar_0.36.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-google-calendar_0.36.bb
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-google-calendar_0.36.bb
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-irmc_0.36.bb b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-irmc_0.36.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-irmc_0.36.bb
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-irmc_0.36.bb
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-syncml_0.38.bb b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml_0.38.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-syncml_0.38.bb
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml_0.38.bb
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin-vformat_0.37.bb b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-vformat_0.37.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin-vformat_0.37.bb
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-vformat_0.37.bb
diff --git a/meta/recipes-connectivity/opensync/libopensync-plugin_0.36.inc b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin_0.36.inc
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync-plugin_0.36.inc
rename to meta-demoapps/recipes-connectivity/opensync/libopensync-plugin_0.36.inc
diff --git a/meta/recipes-connectivity/opensync/libopensync_0.37.bb b/meta-demoapps/recipes-connectivity/opensync/libopensync_0.37.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libopensync_0.37.bb
rename to meta-demoapps/recipes-connectivity/opensync/libopensync_0.37.bb
diff --git a/meta/recipes-connectivity/opensync/libsync_svn.bb b/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libsync_svn.bb
rename to meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
diff --git a/meta/recipes-connectivity/opensync/libsyncml/build-in-src.patch b/meta-demoapps/recipes-connectivity/opensync/libsyncml/build-in-src.patch
similarity index 100%
rename from meta/recipes-connectivity/opensync/libsyncml/build-in-src.patch
rename to meta-demoapps/recipes-connectivity/opensync/libsyncml/build-in-src.patch
diff --git a/meta/recipes-connectivity/opensync/libsyncml_0.5.4.bb b/meta-demoapps/recipes-connectivity/opensync/libsyncml_0.5.4.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/libsyncml_0.5.4.bb
rename to meta-demoapps/recipes-connectivity/opensync/libsyncml_0.5.4.bb
diff --git a/meta/recipes-connectivity/opensync/msynctool_0.37.bb b/meta-demoapps/recipes-connectivity/opensync/msynctool_0.37.bb
similarity index 100%
rename from meta/recipes-connectivity/opensync/msynctool_0.37.bb
rename to meta-demoapps/recipes-connectivity/opensync/msynctool_0.37.bb
diff --git a/meta/recipes-connectivity/telepathy/empathy/no-gnome-doc.patch b/meta-demoapps/recipes-connectivity/telepathy/empathy/no-gnome-doc.patch
similarity index 100%
rename from meta/recipes-connectivity/telepathy/empathy/no-gnome-doc.patch
rename to meta-demoapps/recipes-connectivity/telepathy/empathy/no-gnome-doc.patch
diff --git a/meta/recipes-connectivity/telepathy/empathy_2.26.1.bb b/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
similarity index 100%
rename from meta/recipes-connectivity/telepathy/empathy_2.26.1.bb
rename to meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
diff --git a/meta/recipes-connectivity/telepathy/telepathy-farsight_0.0.7.bb b/meta-demoapps/recipes-connectivity/telepathy/telepathy-farsight_0.0.7.bb
similarity index 100%
rename from meta/recipes-connectivity/telepathy/telepathy-farsight_0.0.7.bb
rename to meta-demoapps/recipes-connectivity/telepathy/telepathy-farsight_0.0.7.bb
diff --git a/meta/recipes-connectivity/telepathy/telepathy-gabble/gabble.manager b/meta-demoapps/recipes-connectivity/telepathy/telepathy-gabble/gabble.manager
similarity index 100%
rename from meta/recipes-connectivity/telepathy/telepathy-gabble/gabble.manager
rename to meta-demoapps/recipes-connectivity/telepathy/telepathy-gabble/gabble.manager
diff --git a/meta/recipes-connectivity/telepathy/telepathy-gabble_0.7.8.bb b/meta-demoapps/recipes-connectivity/telepathy/telepathy-gabble_0.7.8.bb
similarity index 100%
rename from meta/recipes-connectivity/telepathy/telepathy-gabble_0.7.8.bb
rename to meta-demoapps/recipes-connectivity/telepathy/telepathy-gabble_0.7.8.bb
diff --git a/meta/recipes-connectivity/wbxml/files/no-doc-install.patch b/meta-demoapps/recipes-connectivity/wbxml/files/no-doc-install.patch
similarity index 100%
rename from meta/recipes-connectivity/wbxml/files/no-doc-install.patch
rename to meta-demoapps/recipes-connectivity/wbxml/files/no-doc-install.patch
diff --git a/meta/recipes-connectivity/wbxml/wbxml2_0.9.2.bb b/meta-demoapps/recipes-connectivity/wbxml/wbxml2_0.9.2.bb
similarity index 100%
rename from meta/recipes-connectivity/wbxml/wbxml2_0.9.2.bb
rename to meta-demoapps/recipes-connectivity/wbxml/wbxml2_0.9.2.bb
diff --git a/meta/recipes-gnome/abiword/abiword-2.5.inc b/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
similarity index 100%
rename from meta/recipes-gnome/abiword/abiword-2.5.inc
rename to meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
diff --git a/meta/recipes-gnome/abiword/abiword-embedded_2.5.2.bb b/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
similarity index 100%
rename from meta/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
rename to meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
diff --git a/meta/recipes-gnome/abiword/abiword.inc b/meta-demoapps/recipes-gnome/abiword/abiword.inc
similarity index 100%
rename from meta/recipes-gnome/abiword/abiword.inc
rename to meta-demoapps/recipes-gnome/abiword/abiword.inc
diff --git a/meta/recipes-gnome/abiword/abiword_2.5.2.bb b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
similarity index 100%
rename from meta/recipes-gnome/abiword/abiword_2.5.2.bb
rename to meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
diff --git a/meta/recipes-gnome/abiword/abiword_cvs.bb b/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
similarity index 100%
rename from meta/recipes-gnome/abiword/abiword_cvs.bb
rename to meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
diff --git a/meta/recipes-tbd/gcalctool/gcalctool/fix-includedir.patch b/meta-demoapps/recipes-gnome/gcalctool/gcalctool/fix-includedir.patch
similarity index 100%
rename from meta/recipes-tbd/gcalctool/gcalctool/fix-includedir.patch
rename to meta-demoapps/recipes-gnome/gcalctool/gcalctool/fix-includedir.patch
diff --git a/meta/recipes-tbd/gcalctool/gcalctool_5.7.32.bb b/meta-demoapps/recipes-gnome/gcalctool/gcalctool_5.7.32.bb
similarity index 100%
rename from meta/recipes-tbd/gcalctool/gcalctool_5.7.32.bb
rename to meta-demoapps/recipes-gnome/gcalctool/gcalctool_5.7.32.bb
diff --git a/meta/recipes-tbd/gcalctool/gcalctool_5.8.17.bb b/meta-demoapps/recipes-gnome/gcalctool/gcalctool_5.8.17.bb
similarity index 100%
rename from meta/recipes-tbd/gcalctool/gcalctool_5.8.17.bb
rename to meta-demoapps/recipes-gnome/gcalctool/gcalctool_5.8.17.bb
diff --git a/meta/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch
rename to meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch
diff --git a/meta/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch
rename to meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch
diff --git a/meta/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch
rename to meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch
diff --git a/meta/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch
rename to meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch
diff --git a/meta/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch
rename to meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch
diff --git a/meta/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch
rename to meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch
diff --git a/meta/recipes-gnome/gnome/gnome-settings-daemon_2.26.1.bb b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon_2.26.1.bb
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-settings-daemon_2.26.1.bb
rename to meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon_2.26.1.bb
diff --git a/meta/recipes-gnome/gnome/gnome-terminal/30f29e7d8e1b67c40cd18a7155ba30c4382692d5.patch b/meta-demoapps/recipes-gnome/gnome/gnome-terminal/30f29e7d8e1b67c40cd18a7155ba30c4382692d5.patch
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-terminal/30f29e7d8e1b67c40cd18a7155ba30c4382692d5.patch
rename to meta-demoapps/recipes-gnome/gnome/gnome-terminal/30f29e7d8e1b67c40cd18a7155ba30c4382692d5.patch
diff --git a/meta/recipes-gnome/gnome/gnome-terminal_2.26.3.bb b/meta-demoapps/recipes-gnome/gnome/gnome-terminal_2.26.3.bb
similarity index 100%
rename from meta/recipes-gnome/gnome/gnome-terminal_2.26.3.bb
rename to meta-demoapps/recipes-gnome/gnome/gnome-terminal_2.26.3.bb
diff --git a/meta/recipes-gnome/gnome/libgnomecanvas_2.20.0.bb b/meta-demoapps/recipes-gnome/gnome/libgnomecanvas_2.20.0.bb
similarity index 100%
rename from meta/recipes-gnome/gnome/libgnomecanvas_2.20.0.bb
rename to meta-demoapps/recipes-gnome/gnome/libgnomecanvas_2.20.0.bb
diff --git a/meta/recipes-gnome/gnome/libgnomekbd_2.26.0.bb b/meta-demoapps/recipes-gnome/gnome/libgnomekbd_2.26.0.bb
similarity index 100%
rename from meta/recipes-gnome/gnome/libgnomekbd_2.26.0.bb
rename to meta-demoapps/recipes-gnome/gnome/libgnomekbd_2.26.0.bb
diff --git a/meta/recipes-gnome/libgsf/libgsf_1.14.5.bb b/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
similarity index 100%
rename from meta/recipes-gnome/libgsf/libgsf_1.14.5.bb
rename to meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
diff --git a/meta/recipes-gnome/libgtkstylus/files/gtkstylus.sh b/meta-demoapps/recipes-gnome/libgtkstylus/files/gtkstylus.sh
similarity index 100%
rename from meta/recipes-gnome/libgtkstylus/files/gtkstylus.sh
rename to meta-demoapps/recipes-gnome/libgtkstylus/files/gtkstylus.sh
diff --git a/meta/recipes-gnome/libgtkstylus/libgtkstylus_0.5.bb b/meta-demoapps/recipes-gnome/libgtkstylus/libgtkstylus_0.5.bb
similarity index 100%
rename from meta/recipes-gnome/libgtkstylus/libgtkstylus_0.5.bb
rename to meta-demoapps/recipes-gnome/libgtkstylus/libgtkstylus_0.5.bb
diff --git a/meta/recipes-gnome/wv/wv-1.2.0/pkgconfig.patch b/meta-demoapps/recipes-gnome/wv/wv-1.2.0/pkgconfig.patch
similarity index 100%
rename from meta/recipes-gnome/wv/wv-1.2.0/pkgconfig.patch
rename to meta-demoapps/recipes-gnome/wv/wv-1.2.0/pkgconfig.patch
diff --git a/meta/recipes-gnome/wv/wv_1.2.0.bb b/meta-demoapps/recipes-gnome/wv/wv_1.2.0.bb
similarity index 100%
rename from meta/recipes-gnome/wv/wv_1.2.0.bb
rename to meta-demoapps/recipes-gnome/wv/wv_1.2.0.bb
diff --git a/meta/recipes-graphics/clutter/table/fixes.patch b/meta-demoapps/recipes-graphics/clutter/table/fixes.patch
similarity index 100%
rename from meta/recipes-graphics/clutter/table/fixes.patch
rename to meta-demoapps/recipes-graphics/clutter/table/fixes.patch
diff --git a/meta/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch b/meta-demoapps/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch
similarity index 100%
rename from meta/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch
rename to meta-demoapps/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch
diff --git a/meta/recipes-graphics/libxklavier/libxklavier_3.9.bb b/meta-demoapps/recipes-graphics/libxklavier/libxklavier_3.9.bb
similarity index 100%
rename from meta/recipes-graphics/libxklavier/libxklavier_3.9.bb
rename to meta-demoapps/recipes-graphics/libxklavier/libxklavier_3.9.bb
diff --git a/meta/recipes-graphics/pong-clock/pong-clock/pong-clock-no-flicker.c b/meta-demoapps/recipes-graphics/pong-clock/pong-clock/pong-clock-no-flicker.c
similarity index 100%
rename from meta/recipes-graphics/pong-clock/pong-clock/pong-clock-no-flicker.c
rename to meta-demoapps/recipes-graphics/pong-clock/pong-clock/pong-clock-no-flicker.c
diff --git a/meta/recipes-graphics/pong-clock/pong-clock_1.0.bb b/meta-demoapps/recipes-graphics/pong-clock/pong-clock_1.0.bb
similarity index 100%
rename from meta/recipes-graphics/pong-clock/pong-clock_1.0.bb
rename to meta-demoapps/recipes-graphics/pong-clock/pong-clock_1.0.bb
diff --git a/meta/recipes-graphics/xorg-app/xbacklight_1.1.bb b/meta-demoapps/recipes-graphics/xorg-app/xbacklight_1.1.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xbacklight_1.1.bb
rename to meta-demoapps/recipes-graphics/xorg-app/xbacklight_1.1.bb
diff --git a/meta/recipes-graphics/xorg-app/xev/diet-x11.patch b/meta-demoapps/recipes-graphics/xorg-app/xev/diet-x11.patch
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xev/diet-x11.patch
rename to meta-demoapps/recipes-graphics/xorg-app/xev/diet-x11.patch
diff --git a/meta/recipes-graphics/xorg-app/xev_1.0.3.bb b/meta-demoapps/recipes-graphics/xorg-app/xev_1.0.3.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xev_1.0.3.bb
rename to meta-demoapps/recipes-graphics/xorg-app/xev_1.0.3.bb
diff --git a/meta/recipes-graphics/xorg-app/xeyes_1.0.1.bb b/meta-demoapps/recipes-graphics/xorg-app/xeyes_1.0.1.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xeyes_1.0.1.bb
rename to meta-demoapps/recipes-graphics/xorg-app/xeyes_1.0.1.bb
diff --git a/meta/recipes-graphics/xorg-app/xrdb/60XDefaults.sh b/meta-demoapps/recipes-graphics/xorg-app/xrdb/60XDefaults.sh
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xrdb/60XDefaults.sh
rename to meta-demoapps/recipes-graphics/xorg-app/xrdb/60XDefaults.sh
diff --git a/meta/recipes-graphics/xorg-app/xrdb_1.0.5.bb b/meta-demoapps/recipes-graphics/xorg-app/xrdb_1.0.5.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-app/xrdb_1.0.5.bb
rename to meta-demoapps/recipes-graphics/xorg-app/xrdb_1.0.5.bb
diff --git a/meta/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch b/meta-demoapps/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch
similarity index 100%
rename from meta/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch
rename to meta-demoapps/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch
diff --git a/meta/recipes-graphics/xorg-lib/liblbxutil_1.1.0.bb b/meta-demoapps/recipes-graphics/xorg-lib/liblbxutil_1.1.0.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-lib/liblbxutil_1.1.0.bb
rename to meta-demoapps/recipes-graphics/xorg-lib/liblbxutil_1.1.0.bb
diff --git a/meta/recipes-graphics/xorg-lib/libxaw_1.0.5.bb b/meta-demoapps/recipes-graphics/xorg-lib/libxaw_1.0.5.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-lib/libxaw_1.0.5.bb
rename to meta-demoapps/recipes-graphics/xorg-lib/libxaw_1.0.5.bb
diff --git a/meta/recipes-graphics/xorg-lib/libxevie_1.0.2.bb b/meta-demoapps/recipes-graphics/xorg-lib/libxevie_1.0.2.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-lib/libxevie_1.0.2.bb
rename to meta-demoapps/recipes-graphics/xorg-lib/libxevie_1.0.2.bb
diff --git a/meta/recipes-graphics/xorg-lib/libxkbui_1.0.2.bb b/meta-demoapps/recipes-graphics/xorg-lib/libxkbui_1.0.2.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-lib/libxkbui_1.0.2.bb
rename to meta-demoapps/recipes-graphics/xorg-lib/libxkbui_1.0.2.bb
diff --git a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb b/meta-demoapps/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb
rename to meta-demoapps/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb
diff --git a/meta/recipes-graphics/xorg-proto/xproxymanagementprotocol_1.0.3.bb b/meta-demoapps/recipes-graphics/xorg-proto/xproxymanagementprotocol_1.0.3.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-proto/xproxymanagementprotocol_1.0.3.bb
rename to meta-demoapps/recipes-graphics/xorg-proto/xproxymanagementprotocol_1.0.3.bb
diff --git a/meta/recipes-tbd/xournal/files/ldflags.patch b/meta-demoapps/recipes-graphics/xournal/files/ldflags.patch
similarity index 100%
rename from meta/recipes-tbd/xournal/files/ldflags.patch
rename to meta-demoapps/recipes-graphics/xournal/files/ldflags.patch
diff --git a/meta/recipes-tbd/xournal/files/no-printing.diff b/meta-demoapps/recipes-graphics/xournal/files/no-printing.diff
similarity index 100%
rename from meta/recipes-tbd/xournal/files/no-printing.diff
rename to meta-demoapps/recipes-graphics/xournal/files/no-printing.diff
diff --git a/meta/recipes-tbd/xournal/xournal_0.2.bb b/meta-demoapps/recipes-graphics/xournal/xournal_0.2.bb
similarity index 100%
rename from meta/recipes-tbd/xournal/xournal_0.2.bb
rename to meta-demoapps/recipes-graphics/xournal/xournal_0.2.bb
diff --git a/meta/recipes-kernel/fuse/fuse-2.7.2/not-run-updaterc.d-on-host.patch b/meta-demoapps/recipes-kernel/fuse/fuse-2.7.2/not-run-updaterc.d-on-host.patch
similarity index 100%
rename from meta/recipes-kernel/fuse/fuse-2.7.2/not-run-updaterc.d-on-host.patch
rename to meta-demoapps/recipes-kernel/fuse/fuse-2.7.2/not-run-updaterc.d-on-host.patch
diff --git a/meta/recipes-kernel/fuse/fuse.inc b/meta-demoapps/recipes-kernel/fuse/fuse.inc
similarity index 100%
rename from meta/recipes-kernel/fuse/fuse.inc
rename to meta-demoapps/recipes-kernel/fuse/fuse.inc
diff --git a/meta/recipes-kernel/fuse/fuse_2.7.2.bb b/meta-demoapps/recipes-kernel/fuse/fuse_2.7.2.bb
similarity index 100%
rename from meta/recipes-kernel/fuse/fuse_2.7.2.bb
rename to meta-demoapps/recipes-kernel/fuse/fuse_2.7.2.bb
diff --git a/meta/recipes-sato/claws-mail/claws-mail.inc b/meta-demoapps/recipes-sato/claws-mail/claws-mail.inc
similarity index 100%
rename from meta/recipes-sato/claws-mail/claws-mail.inc
rename to meta-demoapps/recipes-sato/claws-mail/claws-mail.inc
diff --git a/meta/recipes-sato/claws-mail/claws-mail_2.9.1.bb b/meta-demoapps/recipes-sato/claws-mail/claws-mail_2.9.1.bb
similarity index 100%
rename from meta/recipes-sato/claws-mail/claws-mail_2.9.1.bb
rename to meta-demoapps/recipes-sato/claws-mail/claws-mail_2.9.1.bb
diff --git a/meta/recipes-sato/claws-mail/claws-plugin-gtkhtml2-viewer_0.15.bb b/meta-demoapps/recipes-sato/claws-mail/claws-plugin-gtkhtml2-viewer_0.15.bb
similarity index 100%
rename from meta/recipes-sato/claws-mail/claws-plugin-gtkhtml2-viewer_0.15.bb
rename to meta-demoapps/recipes-sato/claws-mail/claws-plugin-gtkhtml2-viewer_0.15.bb
diff --git a/meta/recipes-sato/claws-mail/claws-plugin-maildir_0.24.4.bb b/meta-demoapps/recipes-sato/claws-mail/claws-plugin-maildir_0.24.4.bb
similarity index 100%
rename from meta/recipes-sato/claws-mail/claws-plugin-maildir_0.24.4.bb
rename to meta-demoapps/recipes-sato/claws-mail/claws-plugin-maildir_0.24.4.bb
diff --git a/meta/recipes-sato/claws-mail/claws-plugin-mailmbox_1.13.bb b/meta-demoapps/recipes-sato/claws-mail/claws-plugin-mailmbox_1.13.bb
similarity index 100%
rename from meta/recipes-sato/claws-mail/claws-plugin-mailmbox_1.13.bb
rename to meta-demoapps/recipes-sato/claws-mail/claws-plugin-mailmbox_1.13.bb
diff --git a/meta/recipes-sato/claws-mail/claws-plugin-rssyl_0.13.bb b/meta-demoapps/recipes-sato/claws-mail/claws-plugin-rssyl_0.13.bb
similarity index 100%
rename from meta/recipes-sato/claws-mail/claws-plugin-rssyl_0.13.bb
rename to meta-demoapps/recipes-sato/claws-mail/claws-plugin-rssyl_0.13.bb
diff --git a/meta/recipes-sato/claws-mail/files/desktop.patch b/meta-demoapps/recipes-sato/claws-mail/files/desktop.patch
similarity index 100%
rename from meta/recipes-sato/claws-mail/files/desktop.patch
rename to meta-demoapps/recipes-sato/claws-mail/files/desktop.patch
diff --git a/meta/recipes-sato/claws-mail/files/fix-build.patch b/meta-demoapps/recipes-sato/claws-mail/files/fix-build.patch
similarity index 100%
rename from meta/recipes-sato/claws-mail/files/fix-build.patch
rename to meta-demoapps/recipes-sato/claws-mail/files/fix-build.patch
diff --git a/meta/recipes-sato/claws-mail/files/owl-window-menu.patch b/meta-demoapps/recipes-sato/claws-mail/files/owl-window-menu.patch
similarity index 100%
rename from meta/recipes-sato/claws-mail/files/owl-window-menu.patch
rename to meta-demoapps/recipes-sato/claws-mail/files/owl-window-menu.patch
diff --git a/meta/recipes-sato/claws-mail/files/streamline-ui.patch b/meta-demoapps/recipes-sato/claws-mail/files/streamline-ui.patch
similarity index 100%
rename from meta/recipes-sato/claws-mail/files/streamline-ui.patch
rename to meta-demoapps/recipes-sato/claws-mail/files/streamline-ui.patch
diff --git a/meta/recipes-sato/clipboard-manager/clipboard-manager_0.6.4.bb b/meta-demoapps/recipes-sato/clipboard-manager/clipboard-manager_0.6.4.bb
similarity index 100%
rename from meta/recipes-sato/clipboard-manager/clipboard-manager_0.6.4.bb
rename to meta-demoapps/recipes-sato/clipboard-manager/clipboard-manager_0.6.4.bb
diff --git a/meta/recipes-sato/clipboard-manager/files/daemonize.patch b/meta-demoapps/recipes-sato/clipboard-manager/files/daemonize.patch
similarity index 100%
rename from meta/recipes-sato/clipboard-manager/files/daemonize.patch
rename to meta-demoapps/recipes-sato/clipboard-manager/files/daemonize.patch
diff --git a/meta/recipes-sato/clipboard-manager/files/makefile.patch b/meta-demoapps/recipes-sato/clipboard-manager/files/makefile.patch
similarity index 100%
rename from meta/recipes-sato/clipboard-manager/files/makefile.patch
rename to meta-demoapps/recipes-sato/clipboard-manager/files/makefile.patch
diff --git a/meta/recipes-sato/clipboard-manager/files/script.patch b/meta-demoapps/recipes-sato/clipboard-manager/files/script.patch
similarity index 100%
rename from meta/recipes-sato/clipboard-manager/files/script.patch
rename to meta-demoapps/recipes-sato/clipboard-manager/files/script.patch
diff --git a/meta/recipes-sato/epdfview/epdfview/epdfview-ui-print.xml b/meta-demoapps/recipes-sato/epdfview/epdfview/epdfview-ui-print.xml
similarity index 100%
rename from meta/recipes-sato/epdfview/epdfview/epdfview-ui-print.xml
rename to meta-demoapps/recipes-sato/epdfview/epdfview/epdfview-ui-print.xml
diff --git a/meta/recipes-sato/epdfview/epdfview/epdfview-ui.xml b/meta-demoapps/recipes-sato/epdfview/epdfview/epdfview-ui.xml
similarity index 100%
rename from meta/recipes-sato/epdfview/epdfview/epdfview-ui.xml
rename to meta-demoapps/recipes-sato/epdfview/epdfview/epdfview-ui.xml
diff --git a/meta/recipes-sato/epdfview/epdfview/epdfview.desktop b/meta-demoapps/recipes-sato/epdfview/epdfview/epdfview.desktop
similarity index 100%
rename from meta/recipes-sato/epdfview/epdfview/epdfview.desktop
rename to meta-demoapps/recipes-sato/epdfview/epdfview/epdfview.desktop
diff --git a/meta/recipes-sato/epdfview/epdfview/owl-menus.patch b/meta-demoapps/recipes-sato/epdfview/epdfview/owl-menus.patch
similarity index 100%
rename from meta/recipes-sato/epdfview/epdfview/owl-menus.patch
rename to meta-demoapps/recipes-sato/epdfview/epdfview/owl-menus.patch
diff --git a/meta/recipes-sato/epdfview/epdfview_0.1.6.bb b/meta-demoapps/recipes-sato/epdfview/epdfview_0.1.6.bb
similarity index 100%
rename from meta/recipes-sato/epdfview/epdfview_0.1.6.bb
rename to meta-demoapps/recipes-sato/epdfview/epdfview_0.1.6.bb
diff --git a/meta/recipes-sato/epdfview/epdfview_0.1.7.bb b/meta-demoapps/recipes-sato/epdfview/epdfview_0.1.7.bb
similarity index 100%
rename from meta/recipes-sato/epdfview/epdfview_0.1.7.bb
rename to meta-demoapps/recipes-sato/epdfview/epdfview_0.1.7.bb
diff --git a/meta/recipes-sato/kf/files/fix-configure.patch b/meta-demoapps/recipes-sato/kf/files/fix-configure.patch
similarity index 100%
rename from meta/recipes-sato/kf/files/fix-configure.patch
rename to meta-demoapps/recipes-sato/kf/files/fix-configure.patch
diff --git a/meta/recipes-sato/kf/files/fix-desktop-file.patch b/meta-demoapps/recipes-sato/kf/files/fix-desktop-file.patch
similarity index 100%
rename from meta/recipes-sato/kf/files/fix-desktop-file.patch
rename to meta-demoapps/recipes-sato/kf/files/fix-desktop-file.patch
diff --git a/meta/recipes-sato/kf/files/gcc4.patch b/meta-demoapps/recipes-sato/kf/files/gcc4.patch
similarity index 100%
rename from meta/recipes-sato/kf/files/gcc4.patch
rename to meta-demoapps/recipes-sato/kf/files/gcc4.patch
diff --git a/meta/recipes-sato/kf/kf_0.5.4.1.bb b/meta-demoapps/recipes-sato/kf/kf_0.5.4.1.bb
similarity index 100%
rename from meta/recipes-sato/kf/kf_0.5.4.1.bb
rename to meta-demoapps/recipes-sato/kf/kf_0.5.4.1.bb
diff --git a/meta/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_0.3.bb b/meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_0.3.bb
similarity index 100%
rename from meta/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_0.3.bb
rename to meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_0.3.bb
diff --git a/meta/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb b/meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb
similarity index 100%
rename from meta/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb
rename to meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb
diff --git a/meta/recipes-sato/matchbox-themes-gtk/files/gtkrc b/meta-demoapps/recipes-sato/matchbox-themes-gtk/files/gtkrc
similarity index 100%
rename from meta/recipes-sato/matchbox-themes-gtk/files/gtkrc
rename to meta-demoapps/recipes-sato/matchbox-themes-gtk/files/gtkrc
diff --git a/meta/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb b/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
similarity index 100%
rename from meta/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
rename to meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
diff --git a/meta/recipes-support/iso-codes/iso-codes_3.3.bb b/meta-demoapps/recipes-support/iso-codes/iso-codes_3.3.bb
similarity index 100%
rename from meta/recipes-support/iso-codes/iso-codes_3.3.bb
rename to meta-demoapps/recipes-support/iso-codes/iso-codes_3.3.bb
diff --git a/meta/recipes-support/libfribidi/files/libtool-update.patch b/meta-demoapps/recipes-support/libfribidi/files/libtool-update.patch
similarity index 100%
rename from meta/recipes-support/libfribidi/files/libtool-update.patch
rename to meta-demoapps/recipes-support/libfribidi/files/libtool-update.patch
diff --git a/meta/recipes-support/libfribidi/libfribidi_0.10.4.bb b/meta-demoapps/recipes-support/libfribidi/libfribidi_0.10.4.bb
similarity index 100%
rename from meta/recipes-support/libfribidi/libfribidi_0.10.4.bb
rename to meta-demoapps/recipes-support/libfribidi/libfribidi_0.10.4.bb
diff --git a/meta/recipes-support/openobex/files/disable-cable-test.patch b/meta-demoapps/recipes-support/openobex/files/disable-cable-test.patch
similarity index 100%
rename from meta/recipes-support/openobex/files/disable-cable-test.patch
rename to meta-demoapps/recipes-support/openobex/files/disable-cable-test.patch
diff --git a/meta/recipes-support/openobex/files/libusb_crosscompile_check.patch b/meta-demoapps/recipes-support/openobex/files/libusb_crosscompile_check.patch
similarity index 100%
rename from meta/recipes-support/openobex/files/libusb_crosscompile_check.patch
rename to meta-demoapps/recipes-support/openobex/files/libusb_crosscompile_check.patch
diff --git a/meta/recipes-support/openobex/openobex_1.5.bb b/meta-demoapps/recipes-support/openobex/openobex_1.5.bb
similarity index 100%
rename from meta/recipes-support/openobex/openobex_1.5.bb
rename to meta-demoapps/recipes-support/openobex/openobex_1.5.bb
diff --git a/meta/recipes-tbd/poppler/poppler-data_0.1.bb b/meta-demoapps/recipes-support/poppler/poppler-data_0.1.bb
similarity index 100%
rename from meta/recipes-tbd/poppler/poppler-data_0.1.bb
rename to meta-demoapps/recipes-support/poppler/poppler-data_0.1.bb
diff --git a/meta/recipes-tbd/poppler/poppler-fpu.inc b/meta-demoapps/recipes-support/poppler/poppler-fpu.inc
similarity index 100%
rename from meta/recipes-tbd/poppler/poppler-fpu.inc
rename to meta-demoapps/recipes-support/poppler/poppler-fpu.inc
diff --git a/meta/recipes-tbd/poppler/poppler.inc b/meta-demoapps/recipes-support/poppler/poppler.inc
similarity index 100%
rename from meta/recipes-tbd/poppler/poppler.inc
rename to meta-demoapps/recipes-support/poppler/poppler.inc
diff --git a/meta/recipes-tbd/poppler/poppler_0.9.2.bb b/meta-demoapps/recipes-support/poppler/poppler_0.9.2.bb
similarity index 100%
rename from meta/recipes-tbd/poppler/poppler_0.9.2.bb
rename to meta-demoapps/recipes-support/poppler/poppler_0.9.2.bb
diff --git a/meta/recipes-connectivity/bluez/bluez4_4.66.bb b/meta/recipes-connectivity/bluez/bluez4_4.66.bb
index ee4ee45..c9ef38f 100644
--- a/meta/recipes-connectivity/bluez/bluez4_4.66.bb
+++ b/meta/recipes-connectivity/bluez/bluez4_4.66.bb
@@ -9,6 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e \
                     file://src/main.c;beginline=1;endline=24;md5=9bc54b93cd7e17bf03f52513f39f926e \
                     file://sbc/sbc.c;beginline=1;endline=25;md5=1a40781ed30d50d8639323a184aeb191"
 DEPENDS = "gst-plugins-base alsa-lib libusb dbus-glib libnl"
+RDEPENDS_${PN}-dev = "bluez-hcidump"
 
 # For angstrom we want this to replace at least bluez-libs
 PROVIDES_append_angstrom = " bluez-utils bluez-libs"
diff --git a/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts.bb b/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts.bb
deleted file mode 100644
index dc22ed8..0000000
--- a/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts.bb
+++ /dev/null
@@ -1,22 +0,0 @@
-DESCRIPTION = "Network suspend/resume scripts"
-SECTION = "base"
-LICENSE = "GPLv2"
-PV = "1.1"
-PR = "r2"
-
-SRC_URI = "file://ifupdown \
-           file://usbnet"
-
-do_install() {
-	install -d ${D}${sysconfdir}/apm/scripts.d
-	install -m 0755 ${WORKDIR}/ifupdown ${D}${sysconfdir}/apm/scripts.d
-	install -m 0755 ${WORKDIR}/usbnet ${D}${sysconfdir}/apm/scripts.d
-	install -d ${D}${sysconfdir}/apm/suspend.d
-	ln -s ../scripts.d/ifupdown ${D}${sysconfdir}/apm/suspend.d/05ifupdown
-	ln -s ../scripts.d/usbnet ${D}${sysconfdir}/apm/suspend.d/10usbnet
-	install -d ${D}${sysconfdir}/apm/resume.d
-	ln -sf ../scripts.d/ifupdown ${D}${sysconfdir}/apm/resume.d/30ifupdown
-	ln -sf ../scripts.d/usbnet ${D}${sysconfdir}/apm/resume.d/20usbnet
-}
-
-FILES = "${sysconfdir}/apm"
diff --git a/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/ifupdown b/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/ifupdown
deleted file mode 100644
index d458da6..0000000
--- a/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/ifupdown
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/sh
-# Unloads/loads all interface that are up at time of suspend
-
-if [ "$1" = suspend ]; then
-	rm -f /var/run/ifstate-suspend
-	rm -f /var/run/ifstate-old
-	cp /var/run/ifstate /var/run/ifstate-old
-	cat /var/run/ifstate-old | (
-	IFS="="
-	while read IFACE LOGICAL; do
-		ifdown $IFACE
-		echo "$IFACE=$LOGICAL" >>/var/run/ifstate-suspend
-	done
-	rm -f /var/run/ifstate-old
-	)
-elif [ "$1" = resume ] && [ "$2" != standby ] && [ -f /var/run/ifstate-suspend ]; then
-	cat /var/run/ifstate-suspend | (
-	while read LINE; do
-		ifup $LINE
-	done
-    	)
-	rm -f /var/run/ifstate-suspend
-fi
-
-: exit 0
-
diff --git a/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/usbnet b/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/usbnet
deleted file mode 100644
index 3731f63..0000000
--- a/meta/recipes-connectivity/network-suspend-scripts/network-suspend-scripts/usbnet
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-# Unloads/loads usb-eth so it always works
-
-. /etc/default/usbd
-
-if [ "$1" = suspend ]; then
-	rmmod usb-eth
-	rmmod sa1100usb_core
-elif [ "$1" = resume ] && [ "$2" != standby ]; then
-	modprobe usb-eth
-	modprobe -r $usbdmodule
-	modprobe $usbdmodule
-fi
-
-: exit 0
-
diff --git a/meta/recipes-tbd/meta/external-csl-toolchain/SUPPORTED b/meta/recipes-core/meta/external-csl-toolchain/SUPPORTED
similarity index 100%
rename from meta/recipes-tbd/meta/external-csl-toolchain/SUPPORTED
rename to meta/recipes-core/meta/external-csl-toolchain/SUPPORTED
diff --git a/meta/recipes-tbd/meta/external-csl-toolchain_2008q3-72.bb b/meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb
similarity index 100%
rename from meta/recipes-tbd/meta/external-csl-toolchain_2008q3-72.bb
rename to meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb
diff --git a/meta/recipes-tbd/meta/external-poky-toolchain.bb b/meta/recipes-core/meta/external-poky-toolchain.bb
similarity index 100%
rename from meta/recipes-tbd/meta/external-poky-toolchain.bb
rename to meta/recipes-core/meta/external-poky-toolchain.bb
diff --git a/meta/recipes-tbd/meta/external-python-tarball.bb b/meta/recipes-core/meta/external-python-tarball.bb
similarity index 100%
rename from meta/recipes-tbd/meta/external-python-tarball.bb
rename to meta/recipes-core/meta/external-python-tarball.bb
diff --git a/meta/recipes-tbd/meta/meta-ide-support.bb b/meta/recipes-core/meta/meta-ide-support.bb
similarity index 100%
rename from meta/recipes-tbd/meta/meta-ide-support.bb
rename to meta/recipes-core/meta/meta-ide-support.bb
diff --git a/meta/recipes-tbd/meta/meta-toolchain-sdk.bb b/meta/recipes-core/meta/meta-toolchain-sdk.bb
similarity index 100%
rename from meta/recipes-tbd/meta/meta-toolchain-sdk.bb
rename to meta/recipes-core/meta/meta-toolchain-sdk.bb
diff --git a/meta/recipes-tbd/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
similarity index 100%
rename from meta/recipes-tbd/meta/meta-toolchain.bb
rename to meta/recipes-core/meta/meta-toolchain.bb
diff --git a/meta/recipes-tbd/meta/package-index.bb b/meta/recipes-core/meta/package-index.bb
similarity index 100%
rename from meta/recipes-tbd/meta/package-index.bb
rename to meta/recipes-core/meta/package-index.bb
diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
index 0a2533c..0bb07a2 100644
--- a/meta/recipes-core/tasks/task-poky-tools.bb
+++ b/meta/recipes-core/tasks/task-poky-tools.bb
@@ -63,6 +63,7 @@ RDEPENDS_task-poky-tools-profile_append_atom-pc = " lttng-ust"
 
 RDEPENDS_task-poky-tools-testapps = "\
     blktool \
+    fstests \
     tslib-calibrate \
     tslib-tests \
     lrzsz \
@@ -72,6 +73,7 @@ RDEPENDS_task-poky-tools-testapps = "\
     owl-video \
     gst-meta-video \
     gst-meta-audio \
+    x11perf \
     xrestop \
     xwininfo \
     xprop \
diff --git a/meta/recipes-tbd/meta/run-postinsts/run-postinsts b/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts
similarity index 100%
rename from meta/recipes-tbd/meta/run-postinsts/run-postinsts
rename to meta/recipes-devtools/dpkg/run-postinsts/run-postinsts
diff --git a/meta/recipes-tbd/meta/run-postinsts/run-postinsts.awk b/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk
similarity index 100%
rename from meta/recipes-tbd/meta/run-postinsts/run-postinsts.awk
rename to meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk
diff --git a/meta/recipes-tbd/meta/run-postinsts_1.0.bb b/meta/recipes-devtools/dpkg/run-postinsts_1.0.bb
similarity index 100%
rename from meta/recipes-tbd/meta/run-postinsts_1.0.bb
rename to meta/recipes-devtools/dpkg/run-postinsts_1.0.bb
diff --git a/meta/recipes-devtools/exmap-console/exmap-console.inc b/meta/recipes-devtools/exmap-console/exmap-console.inc
deleted file mode 100644
index efbd79f..0000000
--- a/meta/recipes-devtools/exmap-console/exmap-console.inc
+++ /dev/null
@@ -1,59 +0,0 @@
-DESCRIPTION = "Console based version of exmap, a memory usage analysis tool"
-HOMEPAGE = "http://projects.o-hand.com/exmap-console"
-SECTION = "devel"
-LICENSE = "GPL"
-DEPENDS = "virtual/kernel readline glib-2.0"
-
-SRC_URI = "http://projects.o-hand.com/sources/exmap-console/exmap-console-${PV}.tgz"
-
-TEMPPACKAGE_ARCH := "${PACKAGE_ARCH}"
-
-inherit module-base
-inherit autotools
-
-PACKAGE_ARCH = "${TEMPPACKAGE_ARCH}"
-
-PACKAGES =+ "exmap-server kernel-module-exmap"
-
-FILES_exmap-console = "${bindir}/exmap ${bindir}/exmapd"
-RDEPENDS_exmap-console += "kernel-module-exmap"
-
-FILES_exmap-server = "${bindir}/exmapserver"
-RDEPENDS_exmap-server += "kernel-module-exmap"
-
-FILES_kernel-module-exmap = "${base_libdir}"
-PACKAGE_ARCH_kernel-module-exmap = "${MACHINE_ARCH}"
-RDEPENDS_kernel-module-exmap += "update-modules kernel-image-${KERNEL_VERSION}"
-
-S = "${WORKDIR}/exmap-console-${PV}"
-
-export MODULE_PATH="${D}${base_libdir}/modules/${KERNEL_VERSION}"
-
-do_compile() {
-	cd ${S}/src
-	make
-
-	cd ${S}/kernel
-	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
-	oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
-		   KERNEL_SRC=${STAGING_KERNEL_DIR}    \
-		   KERNEL_VERSION=${KERNEL_VERSION}    \
-		   CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
-		   ${MAKE_TARGETS}
-}
-
-do_install() {
-	oe_runmake 'DESTDIR=${D}' 'DEPMOD=/bin/true' install
-}
-
-pkg_postinst_append_kernel-module-exmap () {
-	if [ -n "$D" ]; then
-		exit 1
-	fi
-	depmod -a
-	update-modules || true
-}
-
-pkg_postrm_append_kernel-module-exmap () {
-	update-modules || true
-}
diff --git a/meta/recipes-devtools/exmap-console/exmap-console_0.4.1.bb b/meta/recipes-devtools/exmap-console/exmap-console_0.4.1.bb
deleted file mode 100644
index c76c5c3..0000000
--- a/meta/recipes-devtools/exmap-console/exmap-console_0.4.1.bb
+++ /dev/null
@@ -1,3 +0,0 @@
-require exmap-console.inc
-
-PR = "r8"
diff --git a/meta/recipes-devtools/exmap-console/exmap-console_svn.bb b/meta/recipes-devtools/exmap-console/exmap-console_svn.bb
deleted file mode 100644
index ce22285..0000000
--- a/meta/recipes-devtools/exmap-console/exmap-console_svn.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require exmap-console.inc
-
-PV = "0.4+svnr${SRCREV}"
-PR = "r5"
-
-SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=exmap-console;proto=http"
-
-S = "${WORKDIR}/exmap-console"
diff --git a/meta/recipes-extended/devicekit/devicekit-power_014.bb b/meta/recipes-extended/devicekit/devicekit-power_014.bb
deleted file mode 100644
index f69a060..0000000
--- a/meta/recipes-extended/devicekit/devicekit-power_014.bb
+++ /dev/null
@@ -1,21 +0,0 @@
-DESCRIPTION = "Devicekit power"
-LICENSE = "GPLv2"
-DEPENDS = "devicekit glib-2.0 dbus-glib polkit"
-
-SRC_URI = "http://hal.freedesktop.org/releases/DeviceKit-power-${PV}.tar.gz"
-S = "${WORKDIR}/DeviceKit-power-${PV}"
-
-inherit autotools pkgconfig
-
-do_configure_prepend() {
-	sed -i -e s:-nonet:\:g ${S}/doc/man/Makefile.am
-}	
-
-EXTRA_OECONF = "--with-backend=linux"
-
-FILES_${PN} += "${datadir}/dbus-1/ \
-                ${datadir}/PolicyKit \
-                ${base_libdir}/udev/* \
-               "
-
-FILES_${PN}-dbg += "${base_libdir}/udev/.debug"
diff --git a/meta/recipes-extended/devicekit/devicekit/volatile b/meta/recipes-extended/devicekit/devicekit/volatile
deleted file mode 100644
index 1e39964..0000000
--- a/meta/recipes-extended/devicekit/devicekit/volatile
+++ /dev/null
@@ -1 +0,0 @@
-d root root 0700 /var/run/devkit none
diff --git a/meta/recipes-extended/devicekit/devicekit_003.bb b/meta/recipes-extended/devicekit/devicekit_003.bb
deleted file mode 100644
index af81293..0000000
--- a/meta/recipes-extended/devicekit/devicekit_003.bb
+++ /dev/null
@@ -1,16 +0,0 @@
-DESCRIPTION = "DeviceKit is a simple system service that a) can enumerate devices; b) emits signals when devices are added removed; c) provides a way to merge device information / quirks onto devices."
-LICENSE = "GPLv2"
-DEPENDS = "udev dbus-glib glib-2.0"
-
-PR = "r1"
-
-SRC_URI = "http://hal.freedesktop.org/releases/DeviceKit-${PV}.tar.gz"
-S = "${WORKDIR}/DeviceKit-${PV}"
-
-do_configure_prepend() {
-	sed -i -e s:-nonet:\:g ${S}/doc/man/Makefile.am
-}	
-
-inherit autotools
-
-FILES_${PN} += "${datadir}/dbus-1/"
diff --git a/meta/recipes-extended/devicekit/devicekit_git.bb b/meta/recipes-extended/devicekit/devicekit_git.bb
deleted file mode 100644
index 9845a34..0000000
--- a/meta/recipes-extended/devicekit/devicekit_git.bb
+++ /dev/null
@@ -1,34 +0,0 @@
-LICENSE = "GPL"
-DEPENDS = "dbus-glib"
-
-SRC_URI = "git://anongit.freedesktop.org/DeviceKit/DeviceKit;protocol=git \
-        file://volatile"
-
-PV = "002+git${SRCREV}"
-PR = "r2"
-
-S = "${WORKDIR}/git"
-
-EXTRA_OECONF = "--disable-man-pages"
-
-inherit autotools pkgconfig
-
-do_install_append() {
-	install -d ${D}/etc/default/volatiles
-	install -m 0644 ${WORKDIR}/volatile ${D}/etc/default/volatiles/devicekit
-}
-
-pkg_postinst_devicekit () {
-	# can't do this offline
-	if [ "x$D" != "x" ]; then
-		exit 1
-	fi
-
-	DBUSPID=`pidof dbus-daemon`
-
-	if [ "x$DBUSPID" != "x" ]; then
-		/etc/init.d/dbus-1 reload
-	fi
-}
-
-FILES_${PN} += "${datadir}/dbus-1/"
diff --git a/meta/recipes-extended/polkit/polkit-gnome_0.96.bb b/meta/recipes-extended/polkit/polkit-gnome_0.96.bb
deleted file mode 100644
index 50387f3..0000000
--- a/meta/recipes-extended/polkit/polkit-gnome_0.96.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-HOMEPAGE = "http://www.packagekit.org/"
-DEPENDS = "polkit dbus-glib gconf gtk+"
-LICENSE = "LGPLv2+"
-
-SRC_URI = "http://hal.freedesktop.org/releases/polkit-gnome-${PV}.tar.bz2 \
-          "
-
-EXTRA_OECONF = " --disable-scrollkeeper \
-                 --disable-man-pages \
-                 --disable-examples \
-                 --disable-gtk-doc \
-                 --disable-introspection "
-
-inherit autotools pkgconfig
-
-FILES_${PN} += " ${datadir}/dbus-1 \
-                 ${datadir}/PolicyKit \
-               "
-
diff --git a/meta/recipes-extended/polkit/polkit_0.96.bb b/meta/recipes-extended/polkit/polkit_0.96.bb
deleted file mode 100644
index e6e030b..0000000
--- a/meta/recipes-extended/polkit/polkit_0.96.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-DESCRIPTION = "The polkit package is an application-level toolkit for defining and handling the policy that allows unprivileged processes to speak to privileged processes."
-HOMEPAGE = "http://code.google.com/p/polkit/"
-LICENSE = "LGPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=155db86cdbafa7532b41f390409283eb \
-                    file://src/polkit/polkit.h;md5=8aa8924570fc5570d20e4a4ad5d2db51 \
-                    file://docs/polkit/html/license.html;md5=4c17ef1587e0f096c82157160d4e340e"
-
-SRC_URI = "http://hal.freedesktop.org/releases/polkit-${PV}.tar.gz"
-PR = "r2"
-DEPENDS = "libpam expat dbus-glib eggdbus intltool"
-RDEPENDS = "libpam"
-EXTRA_OECONF = "--with-authfw=pam --with-os-type=moblin --disable-man-pages --disable-gtk-doc --disable-introspection"
-
-inherit autotools pkgconfig
diff --git a/meta/recipes-extended/tasks/task-poky-basic.bb b/meta/recipes-extended/tasks/task-poky-basic.bb
index 5e2a35e..08eddb6 100644
--- a/meta/recipes-extended/tasks/task-poky-basic.bb
+++ b/meta/recipes-extended/tasks/task-poky-basic.bb
@@ -75,6 +75,7 @@ RDEPENDS_task-poky-basic-utils = "\
     gmp \
     grep \
     makedevs \
+    mc \
     mktemp \
     ncurses \
     net-tools \
diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index 3004ec2..82933e8 100644
--- a/meta/recipes-extended/tasks/task-poky-lsb.bb
+++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
@@ -3,7 +3,7 @@
 #
 
 DESCRIPTION = "Create Small Image Tasks"
-PR = "r1"
+PR = "r2"
 LICENSE = "MIT"
 
 PACKAGES = "\
@@ -43,6 +43,7 @@ RDEPENDS_task-poky-lsb = "\
 # GPLv2 Should List
 RDEPENDS_task-poky-sys-extended = "\
     curl \
+    dhcp-client \
     diffutils \
     gamin \
     hdparm \
@@ -50,6 +51,7 @@ RDEPENDS_task-poky-sys-extended = "\
     libxml2 \
     lrzsz \
     lzo \
+    mc \
     mdadm \
     minicom \
     neon \
@@ -62,6 +64,7 @@ RDEPENDS_task-poky-sys-extended = "\
     unzip \
     watchdog \
     which \
+    xinetd \
     zip \
     "
 
@@ -95,9 +98,11 @@ RDEPENDS_task-poky-tcl = "\
 RDEPENDS_task-poky-misc = "\
     elfutils \
     gettext \
+    groff \
     lsb \
     lsof \
-#    man-pages \
+    man \
+    man-pages \
     ncurses \
     strace \
     libusb1 \
diff --git a/meta/recipes-extended/zile/files/for_build.patch b/meta/recipes-extended/zile/files/for_build.patch
deleted file mode 100644
index 96380fa..0000000
--- a/meta/recipes-extended/zile/files/for_build.patch
+++ /dev/null
@@ -1,64 +0,0 @@
-Index: zile-2.0beta6/acinclude.m4
-===================================================================
---- zile-2.0beta6.orig/acinclude.m4	2004-12-20 19:13:07.000000000 -0500
-+++ zile-2.0beta6/acinclude.m4	2005-01-21 20:38:28.982166344 -0500
-@@ -35,3 +35,29 @@
- t}
- fi
- AC_SUBST(EXEEXT_FOR_BUILD)])dnl
-+
-+dnl Get a default for CFLAGS_FOR_BUILD to put into Makefile.
-+AC_DEFUN([BFD_CFLAGS_FOR_BUILD],
-+[ac_test_CFLAGS=${CFLAGS+set}
-+# Put a plausible default for CFLAGS_FOR_BUILD in Makefile.
-+if test -z "$CFLAGS_FOR_BUILD"; then
-+  if test "x$cross_compiling" = "xyes"; then
-+    CFLAGS_FOR_BUILD="-O2"
-+  else
-+    CFLAGS_FOR_BUILD='$(CFLAGS)'
-+  fi
-+fi
-+AC_SUBST(CFLAGS_FOR_BUILD)])dnl
-+
-+dnl Get a default for LDFLAGS_FOR_BUILD to put into Makefile.
-+AC_DEFUN([BFD_LDFLAGS_FOR_BUILD],
-+[ac_test_LDFLAGS=${LDFLAGS+set}
-+# Put a plausible default for LDFLAGS_FOR_BUILD in Makefile.
-+if test -z "$LDFLAGS_FOR_BUILD"; then
-+  if test "x$cross_compiling" = "xyes"; then
-+    LDFLAGS_FOR_BUILD=""
-+  else
-+    LDFLAGS_FOR_BUILD='$(LDFLAGS)'
-+  fi
-+fi
-+AC_SUBST(LDFLAGS_FOR_BUILD)])dnl
-Index: zile-2.0beta6/configure.ac
-===================================================================
---- zile-2.0beta6.orig/configure.ac	2005-01-12 07:56:19.000000000 -0500
-+++ zile-2.0beta6/configure.ac	2005-01-21 20:26:58.178184512 -0500
-@@ -19,6 +19,8 @@
- 
- AC_PROG_CC
- BFD_CC_FOR_BUILD
-+BFD_CFLAGS_FOR_BUILD
-+BFD_LDFLAGS_FOR_BUILD
- AC_C_INLINE
- AC_PROG_INSTALL
- AC_PROG_RANLIB
-Index: zile-2.0beta6/doc/Makefile.am
-===================================================================
---- zile-2.0beta6.orig/doc/Makefile.am	2005-01-03 06:11:32.000000000 -0500
-+++ zile-2.0beta6/doc/Makefile.am	2005-01-21 20:27:17.271281920 -0500
-@@ -27,10 +27,10 @@
- AM_CFLAGS = -I$(top_srcdir) -I$(top_srcdir)/lib -I$(top_srcdir)/src
- 
- mkdoc$(EXEEXT_FOR_BUILD): mkdoc.o config.h
--	$(CC_FOR_BUILD) $(CFLAGS) $(LDFLAGS) -o $@ mkdoc.o
-+	$(CC_FOR_BUILD) $(CFLAGS_FOR_BUILD) $(LDFLAGS_FOR_BUILD) -o $@ mkdoc.o
- 
- mkdoc.o: mkdoc.c
--	$(CC_FOR_BUILD) -c -I$(top_srcdir)/doc -I$(top_srcdir) -I$(top_srcdir)/src $(CFLAGS) $(srcdir)/mkdoc.c
-+	$(CC_FOR_BUILD) -c -I$(top_srcdir)/doc -I$(top_srcdir) -I$(top_srcdir)/src $(CFLAGS_FOR_BUILD) $(srcdir)/mkdoc.c
- 
- AUTODOC: $(AUTODOCSRCS) mkdoc
- 	./mkdoc $(AUTODOCSRCS) >AUTODOC
diff --git a/meta/recipes-extended/zile/zile_1.7+2.0beta6.bb b/meta/recipes-extended/zile/zile_1.7+2.0beta6.bb
deleted file mode 100644
index 74d832e..0000000
--- a/meta/recipes-extended/zile/zile_1.7+2.0beta6.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-DESCRIPTION = "Zile is a very small emacs-like editor."
-HOMEPAGE = "http://zile.sourceforge.net/"
-LICENSE = "GPL"
-DEPENDS = "ncurses"
-PRIORITY = "optional"
-SECTION = "console/editors"
-PR = "r1"
-
-UV = "${@bb.data.getVar('PV', d, 1).split('+')[1]}"
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/zile/zile-${UV}.tar.gz \
-	   file://for_build.patch;patch=1"
-S = "${WORKDIR}/zile-${UV}"
-
-inherit autotools
-
-export CC_FOR_BUILD = "${BUILD_CC}"
-export CFLAGS_FOR_BUILD = "${BUILD_CFLAGS} -DHAVE_VASPRINTF"
-export LDFLAGS_FOR_BUILD = "${BUILD_LDFLAGS}"
diff --git a/meta/recipes-tbd/gthumb/gthumb_2.12.0.bb b/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
similarity index 100%
rename from meta/recipes-tbd/gthumb/gthumb_2.12.0.bb
rename to meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
diff --git a/meta/recipes-tbd/libunique/libunique_1.1.6.bb b/meta/recipes-gnome/libunique/libunique_1.1.6.bb
similarity index 100%
rename from meta/recipes-tbd/libunique/libunique_1.1.6.bb
rename to meta/recipes-gnome/libunique/libunique_1.1.6.bb
diff --git a/meta/recipes-gnome/tasks/task-sdk-gmae.inc b/meta/recipes-gnome/tasks/task-sdk-gmae.inc
index 2a0e091..0ab0b6e 100644
--- a/meta/recipes-gnome/tasks/task-sdk-gmae.inc
+++ b/meta/recipes-gnome/tasks/task-sdk-gmae.inc
@@ -12,6 +12,21 @@ SDK-GMAE = " \
     libebook-dev \
     libxi-dev \
     libsqlite3-dev \
+    galago-daemon \
+    gnome-desktop \
+    gssdp \
+    gupnp \
+    gupnp-av \
+    gupnp-tools \
+    gypsy \
+    libart-lgpl \
+    libgalago \
+    libtelepathy \
+    pulseaudio \
+    telepathy-glib \
+    telepathy-idle \
+    telepathy-mission-control \
+    telepathy-python \
     "
 
 # TODO: gvfs-dev, mission-control
diff --git a/meta/recipes-graphics/clutter/aaina.inc b/meta/recipes-graphics/clutter/aaina.inc
deleted file mode 100644
index afbc022..0000000
--- a/meta/recipes-graphics/clutter/aaina.inc
+++ /dev/null
@@ -1,7 +0,0 @@
-DESCRIPTION = "Aaina Clutter Demo"
-HOMEPAGE = "http://www.clutter-project.org/"
-LICENSE = "GPL"
-
-DEPENDS = "clutter-0.6 libxml2 gtk+ neon"
-
-inherit autotools pkgconfig
diff --git a/meta/recipes-graphics/clutter/aaina_git.bb b/meta/recipes-graphics/clutter/aaina_git.bb
deleted file mode 100644
index a348cd3..0000000
--- a/meta/recipes-graphics/clutter/aaina_git.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require aaina.inc
-
-PV = "0.3.0+git${SRCPV}"
-
-SRC_URI = "git://git.clutter-project.org/toys.git;protocol=git"
-
-S = "${WORKDIR}/git/aaina"
diff --git a/meta/recipes-graphics/clutter/clutter-0.6_git.bb b/meta/recipes-graphics/clutter/clutter-0.6_git.bb
deleted file mode 100644
index 5a8ccec..0000000
--- a/meta/recipes-graphics/clutter/clutter-0.6_git.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-require clutter.inc
-
-PV = "0.6.0+gitr${SRCPV}"
-PR = "r5"
-
-PACKAGES =+ "clutter-examples-0.6"
-FILES_clutter-examples-0.6 = "${bindir}/test-* ${pkgdatadir}/redhand.png"
-
-
-SRC_URI = "git://git.clutter-project.org/clutter.git;protocol=git;branch=clutter-0-6 \
-           file://symconflict.patch;patch=1 \
-	   file://enable_tests-0.6.patch;patch=1 "
-
-S = "${WORKDIR}/git"
-
diff --git a/meta/recipes-graphics/clutter/clutter-0.8_git.bb b/meta/recipes-graphics/clutter/clutter-0.8_git.bb
deleted file mode 100644
index 71e6198..0000000
--- a/meta/recipes-graphics/clutter/clutter-0.8_git.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-require clutter.inc
-
-PV = "0.8.0+gitr${SRCREV}"
-PR = "r2"
-
-PACKAGES =+ "clutter-examples-0.8"
-FILES_clutter-examples-0.8 = "${bindir}/test-* ${pkgdatadir}/redhand.png"
-
-SRC_URI = "git://git.clutter-project.org/clutter.git;protocol=git;branch=clutter-0-8 \
-	   file://enable_tests-0.8.patch;patch=1 \
-     file://build-fix.patch;patch=1"
-
-S = "${WORKDIR}/git"
diff --git a/meta/recipes-graphics/clutter/clutter-box2d.inc b/meta/recipes-graphics/clutter/clutter-box2d.inc
index 1a107c3..0886195 100644
--- a/meta/recipes-graphics/clutter/clutter-box2d.inc
+++ b/meta/recipes-graphics/clutter/clutter-box2d.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "Clutter Box2D"
 HOMEPAGE = "http://www.clutter-project.org/"
 LICENSE = "GPLv2"
 
-DEPENDS = "clutter-0.8"
+DEPENDS = "clutter-1.0"
 
 # The main clutter lib is machine specific so we need to be too
 PACKAGE_ARCH = "${MACHINE_ARCH}"
diff --git a/meta/recipes-graphics/clutter/clutter-cairo-0.6_git.bb b/meta/recipes-graphics/clutter/clutter-cairo-0.6_git.bb
deleted file mode 100644
index 3b7f6a9..0000000
--- a/meta/recipes-graphics/clutter/clutter-cairo-0.6_git.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-require clutter-cairo.inc
-
-PV = "0.6.0+git${SRCREV}"
-PR = "r1"
-
-DEPENDS += "clutter-0.6"
-
-SRC_URI = "git://git.clutter-project.org/clutter-cairo.git;protocol=git;branch=clutter-cairo-0-6 \
-           file://enable_examples-0.6.patch;patch=1"
-
-S = "${WORKDIR}/git"
-
-
diff --git a/meta/recipes-graphics/clutter/clutter-cairo-0.8_git.bb b/meta/recipes-graphics/clutter/clutter-cairo-0.8_git.bb
deleted file mode 100644
index cb8482b..0000000
--- a/meta/recipes-graphics/clutter/clutter-cairo-0.8_git.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-require clutter-cairo.inc
-
-PV = "0.8.0+git${SRCPV}"
-
-DEPENDS += "clutter-0.8"
-
-SRC_URI = "git://git.clutter-project.org/clutter-cairo.git;protocol=git;branch=clutter-cairo-0-8 \
-           file://enable_examples.patch;patch=1"
-
-S = "${WORKDIR}/git"
-
-
diff --git a/meta/recipes-graphics/clutter/clutter-gst-0.10_git.bb b/meta/recipes-graphics/clutter/clutter-gst-0.10_git.bb
deleted file mode 100644
index a0f874d..0000000
--- a/meta/recipes-graphics/clutter/clutter-gst-0.10_git.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-require clutter-gst.inc
-
-PV = "0.10.0+git${SRCPV}"
-
-DEPENDS += "clutter-1.0"
-
-SRC_URI = "git://git.clutter-project.org/clutter-gst.git;protocol=git;branch=clutter-gst-0.10"
-
-S = "${WORKDIR}/git"
-
-do_configure_prepend () {
-       # Disable DOLT
-       sed -i -e 's/^DOLT//' ${S}/configure.ac
-}
diff --git a/meta/recipes-graphics/clutter/clutter-gst-0.6_git.bb b/meta/recipes-graphics/clutter/clutter-gst-0.6_git.bb
deleted file mode 100644
index 09979f9..0000000
--- a/meta/recipes-graphics/clutter/clutter-gst-0.6_git.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require clutter-gst.inc
-
-PV = "0.6.0+git${SRCPV}"
-
-DEPENDS += "clutter-0.6"
-
-SRC_URI = "git://git.clutter-project.org/clutter-gst.git;protocol=git;branch=clutter-gst-0-6"
-
-S = "${WORKDIR}/git"
diff --git a/meta/recipes-graphics/clutter/clutter-gst-0.8_git.bb b/meta/recipes-graphics/clutter/clutter-gst-0.8_git.bb
deleted file mode 100644
index c5348ec..0000000
--- a/meta/recipes-graphics/clutter/clutter-gst-0.8_git.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require clutter-gst.inc
-
-PV = "0.8.0+git${SRCPV}"
-
-DEPENDS += "clutter-0.8"
-
-SRC_URI = "git://git.clutter-project.org/clutter-gst.git;protocol=git;branch=clutter-gst-0-8"
-
-S = "${WORKDIR}/git"
diff --git a/meta/recipes-graphics/clutter/clutter-gtk-0.10_git.bb b/meta/recipes-graphics/clutter/clutter-gtk-0.10_git.bb
deleted file mode 100644
index d061327..0000000
--- a/meta/recipes-graphics/clutter/clutter-gtk-0.10_git.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-require clutter-gtk.inc
-
-PV = "0.10.3+git${SRCPV}"
-PR = "r1"
-
-SRC_URI = "git://git.clutter-project.org/clutter-gtk.git;protocol=git;branch=clutter-gtk-0.10"
-
-S = "${WORKDIR}/git"
-
-DEPENDS += "clutter-1.0"
-
-EXTRA_OECONF += "--disable-introspection"
diff --git a/meta/recipes-graphics/clutter/clutter-gtk-0.6_git.bb b/meta/recipes-graphics/clutter/clutter-gtk-0.6_git.bb
deleted file mode 100644
index d2633ff..0000000
--- a/meta/recipes-graphics/clutter/clutter-gtk-0.6_git.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require clutter-gtk.inc
-
-PV = "0.6.0+git${SRCPV}"
-
-DEPENDS += "clutter-0.6"
-
-SRC_URI = "git://git.clutter-project.org/clutter-gtk.git;protocol=git;branch=clutter-gtk-0-6"
-
-S = "${WORKDIR}/git"
diff --git a/meta/recipes-graphics/clutter/clutter-gtk-0.8_git.bb b/meta/recipes-graphics/clutter/clutter-gtk-0.8_git.bb
deleted file mode 100644
index 506d3fb..0000000
--- a/meta/recipes-graphics/clutter/clutter-gtk-0.8_git.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require clutter-gtk.inc
-
-PV = "0.8.0+git${SRCPV}"
-
-DEPENDS += "clutter-0.8"
-
-SRC_URI = "git://git.clutter-project.org/clutter-gtk.git;protocol=git;branch=clutter-gtk-0-8"
-
-S = "${WORKDIR}/git"
diff --git a/meta/recipes-graphics/clutter/tidy.inc b/meta/recipes-graphics/clutter/tidy.inc
index 3fa387c..7d5862b 100644
--- a/meta/recipes-graphics/clutter/tidy.inc
+++ b/meta/recipes-graphics/clutter/tidy.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "Tidy library"
 HOMEPAGE = "http://www.clutter-project.org/"
 LICENSE = "LGPL"
 
-STDDEPENDS = "clutter-0.8"
+STDDEPENDS = "clutter-1.0"
 BASE_CONF = "--disable-gtk-doc"
 
 DEPENDS = "${STDDEPENDS}"
diff --git a/meta/recipes-graphics/tasks/task-poky-clutter.bb b/meta/recipes-graphics/tasks/task-poky-clutter.bb
index ae72bb0..153ba9c 100644
--- a/meta/recipes-graphics/tasks/task-poky-clutter.bb
+++ b/meta/recipes-graphics/tasks/task-poky-clutter.bb
@@ -21,17 +21,15 @@ PACKAGES = "\
 ALLOW_EMPTY = "1"
 
 RDEPENDS_task-poky-clutter-core = "\
-    clutter-0.8 \
-    clutter-cairo-0.8 \
-    clutter-gst-0.8 \
-    clutter-gtk-0.8"
+    clutter-1.0 \
+    clutter-cairo-1.0 \
+    clutter-gst-1.0 \
+    clutter-gtk-1.0"
 
 RDEPENDS_task-poky-clutter-tests = "\
-    clutter-cairo-0.8-examples \
-    clutter-gst-0.8-examples \
-    clutter-gtk-0.8-examples"
+    clutter-cairo-1.0-examples \
+    clutter-gst-1.0-examples \
+    clutter-gtk-1.0-examples"
 
 RDEPENDS_task-poky-clutter-apps = "\
-    aaina \
-    clutter-box2d \
-    table"
+    clutter-box2d "
diff --git a/meta/recipes-graphics/xorg-lib/libapplewm_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libapplewm_1.0.0.bb
deleted file mode 100644
index bc502fb..0000000
--- a/meta/recipes-graphics/xorg-lib/libapplewm_1.0.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require xorg-lib-common.inc
-
-DEPENDS += "libxext applewmproto"
-PR = "r1"
-PE = "1"
-
-XORG_PN = "libAppleWM"
diff --git a/meta/recipes-graphics/xorg-lib/libfs_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libfs_1.0.1.bb
deleted file mode 100644
index 010aa31..0000000
--- a/meta/recipes-graphics/xorg-lib/libfs_1.0.1.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require xorg-lib-common.inc
-
-DESCRIPTION = "X11 Font Services library"
-DEPENDS += "xproto fontsproto xtrans"
-PR = "r1"
-PE = "1"
-
-XORG_PN = "libFS"
diff --git a/meta/recipes-graphics/xorg-lib/liboldx_1.0.1.bb b/meta/recipes-graphics/xorg-lib/liboldx_1.0.1.bb
deleted file mode 100644
index 84470cb..0000000
--- a/meta/recipes-graphics/xorg-lib/liboldx_1.0.1.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require xorg-lib-common.inc
-
-DEPENDS += " virtual/libx11"
-PE = "1"
-
-XORG_PN = "liboldX"
diff --git a/meta/recipes-graphics/xorg-lib/libwindowswm_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libwindowswm_1.0.0.bb
deleted file mode 100644
index a03d495..0000000
--- a/meta/recipes-graphics/xorg-lib/libwindowswm_1.0.0.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require xorg-lib-common.inc
-
-DEPENDS += "libxext windowswmproto"
-PE = "1"
-
-XORG_PN = "libWindowsWM"
diff --git a/meta/recipes-graphics/xorg-proto/applewmproto_1.4.1.bb b/meta/recipes-graphics/xorg-proto/applewmproto_1.4.1.bb
deleted file mode 100644
index 9f09fff..0000000
--- a/meta/recipes-graphics/xorg-proto/applewmproto_1.4.1.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-require xorg-proto-common.inc
-
-PR = "r1"
-PE = "1"
diff --git a/meta/recipes-graphics/xorg-proto/windowswmproto_1.0.4.bb b/meta/recipes-graphics/xorg-proto/windowswmproto_1.0.4.bb
deleted file mode 100644
index 9f09fff..0000000
--- a/meta/recipes-graphics/xorg-proto/windowswmproto_1.0.4.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-require xorg-proto-common.inc
-
-PR = "r1"
-PE = "1"
diff --git a/meta/recipes-graphics/xorg-util/imake_1.0.2.bb b/meta/recipes-graphics/xorg-util/imake_1.0.2.bb
deleted file mode 100644
index e533ece..0000000
--- a/meta/recipes-graphics/xorg-util/imake_1.0.2.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require xorg-util-common.inc
-
-DESCRIPTION = "C preprocessor interface to the make utility"
-DEPENDS = "util-macros"
-RDEPENDS = "perl xproto"
-
-PR = "r1"
-PE = "1"
diff --git a/meta/recipes-graphics/xorg-util/lndir_1.0.1.bb b/meta/recipes-graphics/xorg-util/lndir_1.0.1.bb
deleted file mode 100644
index b7bd0ad..0000000
--- a/meta/recipes-graphics/xorg-util/lndir_1.0.1.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require xorg-util-common.inc
-
-DESCRIPTION = "create a shadow directory of symbolic links to another directory tree"
-DEPENDS += "xproto util-macros"
-PR = "r1"
-PE = "1"
diff --git a/meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.3.bb b/meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.3.bb
deleted file mode 100644
index 7c3fb8d..0000000
--- a/meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.3.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require xorg-util-common.inc
-
-DESCRIPTION = "X Window System CF files"
-
-PR = "r1"
-PE = "1"
-
-FILES_${PN} += " /usr/lib/X11/config"
diff --git a/meta/recipes-multimedia/alsa/alsa-oss_1.0.17.bb b/meta/recipes-multimedia/alsa/alsa-oss_1.0.17.bb
deleted file mode 100644
index 00e00dc..0000000
--- a/meta/recipes-multimedia/alsa/alsa-oss_1.0.17.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-DESCRIPTION = "Alsa OSS Compatibility Package"
-SECTION = "libs/multimedia"
-LICENSE = "GPL"
-DEPENDS = "alsa-lib"
-
-SRC_URI = "ftp://ftp.alsa-project.org/pub/oss-lib/alsa-oss-${PV}.tar.bz2"
-
-inherit autotools
-
-do_configure_prepend () {
-	touch NEWS README AUTHORS ChangeLog
-}
diff --git a/meta/recipes-tbd/libsamplerate/libsamplerate0_0.1.2.bb b/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
similarity index 100%
rename from meta/recipes-tbd/libsamplerate/libsamplerate0_0.1.2.bb
rename to meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
diff --git a/meta/recipes-tbd/libsndfile/libsndfile1/acincludefix.patch b/meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch
similarity index 100%
rename from meta/recipes-tbd/libsndfile/libsndfile1/acincludefix.patch
rename to meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch
diff --git a/meta/recipes-tbd/libsndfile/libsndfile1/add-cxx.patch b/meta/recipes-multimedia/libsndfile/libsndfile1/add-cxx.patch
similarity index 100%
rename from meta/recipes-tbd/libsndfile/libsndfile1/add-cxx.patch
rename to meta/recipes-multimedia/libsndfile/libsndfile1/add-cxx.patch
diff --git a/meta/recipes-tbd/libsndfile/libsndfile1_1.0.17.bb b/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.17.bb
similarity index 100%
rename from meta/recipes-tbd/libsndfile/libsndfile1_1.0.17.bb
rename to meta/recipes-multimedia/libsndfile/libsndfile1_1.0.17.bb
diff --git a/meta/recipes-tbd/pulseaudio/libatomics-ops/doublefix.patch b/meta/recipes-multimedia/pulseaudio/libatomics-ops/doublefix.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/libatomics-ops/doublefix.patch
rename to meta/recipes-multimedia/pulseaudio/libatomics-ops/doublefix.patch
diff --git a/meta/recipes-tbd/pulseaudio/libatomics-ops/fedora/libatomic_ops-1.2-ppclwzfix.patch b/meta/recipes-multimedia/pulseaudio/libatomics-ops/fedora/libatomic_ops-1.2-ppclwzfix.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/libatomics-ops/fedora/libatomic_ops-1.2-ppclwzfix.patch
rename to meta/recipes-multimedia/pulseaudio/libatomics-ops/fedora/libatomic_ops-1.2-ppclwzfix.patch
diff --git a/meta/recipes-tbd/pulseaudio/libatomics-ops_1.2.bb b/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/libatomics-ops_1.2.bb
rename to meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
diff --git a/meta/recipes-tbd/pulseaudio/libcanberra/autoconf_version.patch b/meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/libcanberra/autoconf_version.patch
rename to meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch
diff --git a/meta/recipes-tbd/pulseaudio/libcanberra/nofallbackfix.patch b/meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/libcanberra/nofallbackfix.patch
rename to meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch
diff --git a/meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb b/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb
rename to meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/alsaerror.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/alsaerror.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/alsaerror.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/alsaerror.patch
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/buildfix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/buildfix.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/buildfix.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/buildfix.patch
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/fallback.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/fallback.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/fallback.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/fallback.patch
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/periodfix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/periodfix.patch
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/periodfix.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/periodfix.patch
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/volatiles.04_pulse b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/volatiles.04_pulse
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio-0.9.15/volatiles.04_pulse
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/volatiles.04_pulse
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio.inc b/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio.inc
rename to meta/recipes-multimedia/pulseaudio/pulseaudio.inc
diff --git a/meta/recipes-tbd/pulseaudio/pulseaudio_0.9.15.bb b/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.15.bb
similarity index 100%
rename from meta/recipes-tbd/pulseaudio/pulseaudio_0.9.15.bb
rename to meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.15.bb
diff --git a/meta/recipes-sato/tasks/task-poky-x11-sato.bb b/meta/recipes-sato/tasks/task-poky-x11-sato.bb
index 662e156..b191e0b 100644
--- a/meta/recipes-sato/tasks/task-poky-x11-sato.bb
+++ b/meta/recipes-sato/tasks/task-poky-x11-sato.bb
@@ -27,4 +27,6 @@ RDEPENDS_task-poky-x11-sato = "\
     sato-icon-theme \
     settings-daemon \
     gtk-sato-engine \
+    gthumb \
+    x11vnc \
     ${NETWORK_MANAGER}"
diff --git a/meta/recipes-sato/web/web/owl-window-menu.patch b/meta/recipes-sato/web/web/owl-window-menu.patch
index 6e60dd0..ca7fa2f 100644
--- a/meta/recipes-sato/web/web/owl-window-menu.patch
+++ b/meta/recipes-sato/web/web/owl-window-menu.patch
@@ -81,20 +81,3 @@ Index: trunk/src/web_main.c
  	gtk_main ();
  	
  	g_module_close (module);
-Index: trunk/configure.ac
-===================================================================
---- trunk.orig/configure.ac	2007-04-19 15:41:44.000000000 +0100
-+++ trunk/configure.ac	2007-04-25 20:36:34.000000000 +0100
-@@ -14,6 +14,12 @@
- 
- PKG_CHECK_MODULES(WEB, libxml-2.0 glib-2.0 gthread-2.0 gtk+-2.0 libglade-2.0 gconf-2.0 gobject-2.0)
- 
-+OWL_CFLAGS=""
-+OWL_LIBS="-lowl"
-+
-+WEB_CFLAGS="$WEB_CFLAGS $OWL_CFLAGS"
-+WEB_LIBS="$WEB_LIBS $OWL_LIBS"
-+
- # -- Hildon stuff for Maemo 
- hildon=false
- AC_ARG_ENABLE(hildon,AS_HELP_STRING([--enable-hildon],[Turn on hildon support]),[
diff --git a/meta/recipes-sato/web/web_svn.bb b/meta/recipes-sato/web/web_svn.bb
index 583be4a..d98a2e3 100644
--- a/meta/recipes-sato/web/web_svn.bb
+++ b/meta/recipes-sato/web/web_svn.bb
@@ -2,7 +2,7 @@ LICENSE = "GPL"
 SECTION = "x11"
 DEPENDS = "libxml2 glib-2.0 gtk+ libglade gtkhtml2 curl gconf js libowl"
 DESCRIPTION = "Web is a multi-platform web browsing application."
-PR = "r2"
+PR = "r3"
 
 PV = "0.0+svnr${SRCREV}"
 
diff --git a/meta/recipes-tbd/consolekit/consolekit_0.3.0.bb b/meta/recipes-support/consolekit/consolekit_0.3.0.bb
similarity index 100%
rename from meta/recipes-tbd/consolekit/consolekit_0.3.0.bb
rename to meta/recipes-support/consolekit/consolekit_0.3.0.bb
diff --git a/meta/recipes-tbd/consolekit/files/nopolkit.patch b/meta/recipes-support/consolekit/files/nopolkit.patch
similarity index 100%
rename from meta/recipes-tbd/consolekit/files/nopolkit.patch
rename to meta/recipes-support/consolekit/files/nopolkit.patch
diff --git a/meta/recipes-multimedia/libexif/libexif_0.6.16.bb b/meta/recipes-support/libexif/libexif_0.6.16.bb
similarity index 100%
rename from meta/recipes-multimedia/libexif/libexif_0.6.16.bb
rename to meta/recipes-support/libexif/libexif_0.6.16.bb
diff --git a/meta/recipes-support/ohm/ohm/fix_configure.patch b/meta/recipes-support/ohm/ohm/fix_configure.patch
deleted file mode 100644
index e4b774e..0000000
--- a/meta/recipes-support/ohm/ohm/fix_configure.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-Index: git/configure.in
-===================================================================
---- git.orig/configure.in	2007-12-19 13:43:52.000000000 +0000
-+++ git/configure.in	2008-03-06 23:59:57.000000000 +0000
-@@ -201,9 +201,6 @@
- # Like AC_CHECK_HEADER, but it uses the already-computed -I directories.
- AC_DEFUN(AC_CHECK_X_HEADER, [
-   ac_save_CPPFLAGS="$CPPFLAGS"
--  if test \! -z "$includedir" ; then 
--    CPPFLAGS="$CPPFLAGS -I$includedir"
--  fi
-   CPPFLAGS="$CPPFLAGS $X_CFLAGS"
-   AC_CHECK_HEADER([$1],[$2],[$3],[$4])
-   CPPFLAGS="$ac_save_CPPFLAGS"])
-@@ -211,9 +208,6 @@
- # Like AC_TRY_COMPILE, but it uses the already-computed -I directories.
- AC_DEFUN(AC_TRY_X_COMPILE, [
-   ac_save_CPPFLAGS="$CPPFLAGS"
--  if test \! -z "$includedir" ; then 
--    CPPFLAGS="$CPPFLAGS -I$includedir"
--  fi
-   CPPFLAGS="$CPPFLAGS $X_CFLAGS"
-   AC_TRY_COMPILE([$1], [$2], [$3], [$4])
-   CPPFLAGS="$ac_save_CPPFLAGS"])
-@@ -224,14 +218,8 @@
-   ac_save_CPPFLAGS="$CPPFLAGS"
-   ac_save_LDFLAGS="$LDFLAGS"
- #  ac_save_LIBS="$LIBS"
--  if test \! -z "$includedir" ; then 
--    CPPFLAGS="$CPPFLAGS -I$includedir"
--  fi
-   # note: $X_CFLAGS includes $x_includes
-   CPPFLAGS="$CPPFLAGS $X_CFLAGS"
--  if test \! -z "$libdir" ; then
--    LDFLAGS="$LDFLAGS -L$libdir"
--  fi
-   # note: $X_LIBS includes $x_libraries
-   LDFLAGS="$LDFLAGS $ALL_X_LIBS"
-   AC_CHECK_LIB([$1], [$2], [$3], [$4], [$5])
diff --git a/meta/recipes-support/ohm/ohm_git.bb b/meta/recipes-support/ohm/ohm_git.bb
deleted file mode 100644
index 2ba78b3..0000000
--- a/meta/recipes-support/ohm/ohm_git.bb
+++ /dev/null
@@ -1,44 +0,0 @@
-DESCRIPTION = "Open Hardware Manager"
-HOMEPAGE = "http://freedesktop.org/Software/ohm"
-LICENSE = "LGPL"
-
-DEPENDS = "gtk+ dbus-glib intltool-native hal"
-RDEPENDS_${PN} += "udev hal-info"
-SRC_URI = "git://anongit.freedesktop.org/git/ohm/;protocol=git \
-           file://fix_configure.patch;patch=1"
-
-PV = "0.1.2+git-locrev${SRCREV}"
-PR = "r1"
-
-S = "${WORKDIR}/git"
-
-inherit autotools pkgconfig
-
-EXTRA_OECONF = "--with-distro=debian \
-        --without-xauth \
-        --disable-gtk-doc \
-        --disable-docbook-docs"
-
-do_configure_prepend() {
-        touch gtk-doc.make
-}
-
-OE_LT_RPATH_ALLOW=":${libdir}/libohm:"
-OE_LT_RPATH_ALLOW[export]="1"
-
-PACKAGES =+ "libohm ohm-plugin-x11"
-
-FILES_${PN}-dev += "${libdir}/ohm/*.a"
-
-FILES_${PN} = "${sysconfdir} \
-               ${bindir}/* \
-               ${sbindir}/* \
-               ${libdir}/ohm/*.so \
-               "
-
-FILES_libohm = "${libdir}/libohm.so.*"
-FILES_ohm-plugin-x11 = "${libdir}/ohm/libohm_x*.so \
-                        ${libdir}/ohm/libohm_idle.so \ 
-                        ${sysconfdir}/ohm/plugins.d/x* \
-                        ${sysconfdir}/ohm/plugins.d/idle* \
-                        "
-- 
1.7.1


