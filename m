Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEF094C810DA
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:50 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLp002800; 
	Mon, 13 Dec 2010 11:38:48 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:38:55 -0600
Message-Id: <cover.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
Cc: poky@yoctoproject.org
Subject: [PATCH 0/7] Finish the description/summary cleanup
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
X-List-Received-Date: Mon, 13 Dec 2010 19:38:51 -0000

This completes the Summary/Description cleanup work

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/description
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/description

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (7):
  avahi: Fix typo in summary
  recipes-devtools: Add Summary information
  recipes-extended: Add Summary information
  recipes-gnome: Add Summary and Description information
  recipes-graphics: Add SUMMARY and update DESCRIPTION
  recipes-kernel: Update SUMMARY and DESCRIPTION
  recipes-multimedia: Update SUMMARY and DESCRIPTIONS

 .../recipes-gnome/libgsf/libgsf_1.14.5.bb          |    1 +
 meta/recipes-connectivity/avahi/avahi.inc          |    2 +-
 meta/recipes-devtools/autoconf/autoconf.inc        |    6 ++++--
 meta/recipes-devtools/automake/automake.inc        |    4 +++-
 meta/recipes-devtools/binutils/binutils.inc        |    7 ++++++-
 meta/recipes-devtools/bison/bison_2.4.3.bb         |    6 +++++-
 meta/recipes-devtools/chrpath/chrpath_0.13.bb      |    1 +
 meta/recipes-devtools/diffstat/diffstat_1.54.bb    |    1 +
 meta/recipes-devtools/distcc/distcc_2.18.3.bb      |    1 +
 meta/recipes-devtools/e2fsprogs/e2fsprogs.inc      |    4 +++-
 meta/recipes-devtools/file/file_5.04.bb            |    1 +
 meta/recipes-devtools/flex/flex.inc                |    4 +++-
 meta/recipes-devtools/genext2fs/genext2fs.inc      |    1 +
 .../gnu-config/gnu-config_20080123.bb              |    3 ++-
 meta/recipes-devtools/insserv/insserv_1.14.0.bb    |    5 +++--
 meta/recipes-devtools/libtool/libtool.inc          |    4 ++--
 meta/recipes-devtools/m4/m4_1.4.15.bb              |    5 ++++-
 meta/recipes-devtools/make/make.inc                |    7 ++++---
 meta/recipes-devtools/patch/patch.inc              |    1 +
 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |    5 ++++-
 meta/recipes-devtools/perl/perl_5.8.8.bb           |    5 ++++-
 meta/recipes-devtools/pkgconfig/pkgconfig.inc      |    7 +++----
 meta/recipes-devtools/prelink/prelink_git.bb       |    3 ++-
 .../update-alternatives-dpkg.inc                   |    5 +++++
 meta/recipes-extended/at/at_3.1.12.bb              |    4 +++-
 meta/recipes-extended/blktool/blktool_4-6.bb       |    1 +
 meta/recipes-extended/byacc/byacc.inc              |    5 ++++-
 meta/recipes-extended/bzip2/bzip2_1.0.6.bb         |    5 ++++-
 meta/recipes-extended/cpio/cpio_v2.inc             |    4 +++-
 meta/recipes-extended/cronie/cronie_1.4.6.bb       |    1 +
 .../cwautomacros/cwautomacros_20090610.bb          |    2 +-
 meta/recipes-extended/diffutils/diffutils_2.8.1.bb |    1 +
 meta/recipes-extended/ethtool/ethtool_2.6.36.bb    |    1 +
 meta/recipes-extended/findutils/findutils.inc      |    5 ++++-
 .../recipes-extended/findutils/findutils_4.2.31.bb |    5 ++++-
 meta/recipes-extended/gamin/gamin_0.1.10.bb        |    1 +
 meta/recipes-extended/gawk/gawk_3.1.5.bb           |    6 ++++--
 meta/recipes-extended/grep/grep_2.5.1a.bb          |    4 +++-
 meta/recipes-extended/groff/groff_1.18.1.4.bb      |    4 +++-
 meta/recipes-extended/gzip/gzip.inc                |    4 +++-
 meta/recipes-extended/gzip/gzip_1.3.12.bb          |    4 +++-
 meta/recipes-extended/hdparm/hdparm_6.3.bb         |    3 ++-
 meta/recipes-extended/iptables/iptables_1.4.9.bb   |    4 +++-
 meta/recipes-extended/iputils/iputils_s20100418.bb |    1 +
 meta/recipes-extended/less/less_436.bb             |    1 +
 meta/recipes-extended/libaio/libaio_0.3.107.bb     |    3 ++-
 meta/recipes-extended/libidn/libidn_0.6.14.bb      |    1 +
 meta/recipes-extended/libidn/libidn_1.19.bb        |    1 +
 meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb   |    1 +
 meta/recipes-extended/libuser/libuser_0.56.18.bb   |    4 +++-
 meta/recipes-extended/lsof/lsof_4.84.bb            |    1 +
 meta/recipes-extended/man-pages/man-pages_3.25.bb  |    1 +
 meta/recipes-extended/man/man_1.6e.bb              |    1 +
 .../net-tools/net-tools_1.60-23.bb                 |    3 ++-
 meta/recipes-extended/pax/pax_3.4.bb               |    1 +
 meta/recipes-extended/polkit/polkit_0.99.bb        |    1 +
 meta/recipes-extended/procps/procps.inc            |    7 +++----
 meta/recipes-extended/psmisc/psmisc.inc            |    8 +++++++-
 meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb     |    1 +
 meta/recipes-extended/screen/screen_4.0.3.bb       |    1 +
 meta/recipes-extended/sysklogd/sysklogd.inc        |    1 +
 meta/recipes-extended/sysstat/sysstat.inc          |    1 +
 meta/recipes-extended/tar/tar.inc                  |    1 +
 .../tcp-wrappers/tcp-wrappers_7.6.bb               |    1 +
 meta/recipes-extended/time/time.inc                |    1 +
 meta/recipes-extended/watchdog/watchdog_5.9.bb     |    1 +
 meta/recipes-extended/which/which_2.18.bb          |    1 +
 meta/recipes-gnome/gtk+/gtk+.inc                   |    1 +
 meta/recipes-gnome/gtk-doc/gtk-doc.bb              |    4 ++++
 meta/recipes-gnome/libffi/libffi_3.0.9.bb          |    7 +++++++
 meta/recipes-graphics/cairo/cairo.inc              |    5 ++++-
 meta/recipes-graphics/drm/libdrm.inc               |    1 +
 .../fontconfig/fontconfig_2.8.0.bb                 |    1 +
 meta/recipes-graphics/freetype/freetype_2.4.3.bb   |    6 +++++-
 meta/recipes-graphics/libfakekey/libfakekey_svn.bb |    4 +++-
 .../libxsettings-client_0.10.bb                    |    6 +++++-
 .../menu-cache/menu-cache_0.3.2.bb                 |    1 +
 .../ttf-fonts/liberation-fonts_1.04.bb             |    1 +
 meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb  |    1 +
 meta/recipes-graphics/xorg-app/xauth_1.0.5.bb      |    2 +-
 meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb    |    2 ++
 meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb     |    2 ++
 meta/recipes-kernel/dtc/dtc.inc                    |    1 +
 meta/recipes-kernel/kexec/kexec-tools.inc          |    1 +
 meta/recipes-kernel/lttng/lttng-control_0.88.bb    |    1 +
 meta/recipes-kernel/lttng/lttng-ust_0.8.bb         |    1 +
 meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb  |    1 +
 .../module-init-tools/module-init-tools.inc        |    1 +
 meta/recipes-kernel/modutils/modutils_2.4.27.bb    |    1 +
 meta/recipes-kernel/oprofile/oprofile_0.9.6.bb     |    1 +
 meta/recipes-kernel/oprofile/oprofile_cvs.bb       |    1 +
 meta/recipes-kernel/oprofile/oprofileui.inc        |    1 +
 meta/recipes-kernel/powertop/powertop_1.13.bb      |    1 +
 meta/recipes-multimedia/flac/flac_1.2.1.bb         |    1 +
 .../gstreamer/gstreamer_0.10.30.bb                 |    1 +
 meta/recipes-multimedia/libogg/libogg_1.2.1.bb     |    1 +
 .../libtheora/libtheora_1.1.1.bb                   |    1 +
 .../libvorbis/libvorbis_1.3.2.bb                   |    1 +
 .../musicbrainz/libmusicbrainz_3.0.3.bb            |    1 +
 .../pulseaudio/libcanberra_0.10.bb                 |    1 +
 meta/recipes-multimedia/speex/speex_1.2rc1.bb      |    1 +
 meta/recipes-multimedia/tremor/tremor_20101027.bb  |    1 +
 102 files changed, 209 insertions(+), 52 deletions(-)

-- 
1.7.2.2


