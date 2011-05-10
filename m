Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A69AA4C805AF
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:55:55 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 01:55:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485308"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:55:54 -0700
Message-Id: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 16:56:58 +0800
Date: Tue, 10 May 2011 17:01:22 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 00/39][PULL] Upstream Status Update
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
X-List-Received-Date: Tue, 10 May 2011 08:55:56 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Saul,

This pull request updates the upstream status for those patches in my owned recipes.

Please help to review and pull. Thanks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/upgrade
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/upgrade

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (39):
  hostap: add upstream status for hostap-fw-load.patch
  lrzsz: add upstream status for lrzsz's patches
  bluez: add upstream status for bluez's patches
  bluez-dtl1-workaround: add upstream status for COPYING.patch
  libgsmd: add upstream status for gsm's patches.
  gypsy: add upstream status for gypsy's patch
  libpcap: add upstream status for libpcap's patches
  ppp: add upstream status for ppp's patches
  libtelepathy: add upstream status for libtelepathy's patches
  telepathy-python: add upstream status for telepahty-python's patches
  wireless-tools: add upstream status for wireless-tools's patches
  wpa-supplicant: add upstream status for wpa-supplicant
  zeroconf: add upstream status for zeroconf's patch
  glibc: add upstream status for glibc's patches
  dpkg: add upstream status for dpkg's patches
  makedevs: add upstream status for makedevs's patch
  opkg: add upstream status for opkg's patches
  opkg-utils: add upstream status for opkg-utils's patch
  minicom: add upstream status for minicom patches
  rpcbind: add upstream status for rpcbind's patch
  which: add upstream status for which's patch
  clutter-gst: add upstream status for clutter-gst's patches
  flac: add upstream status for flac's patches
  gst-ffmpeg: add upstream status for gst-ffmpeg's patch
  liba52: add upstream status for liba52's patch
  libid3tag: add upstream status for libid3tag
  libmusicbrainz: add upstream status for libmusicbrainz's patch
  pulseaudio: add upstream status for pulseaudio patches
  db: add upstream status for db's patch
  neon: add upstream status for neon's patch
  taglib: add upstream status for taglib's patches
  libetpan: add upstream status for libetpan's patch
  libopensync: add upstream status for libopensync's patches
  libopensync-plugin-evolution2: add upstream status for its patch
  libopensync-plugin-syncml: add upstream status for its patch
  libsyncml: add upstream status for libsyncml's patch
  empathy: add upstream status for empathy's patch
  wv: add upstream status for wv's patch
  xournal: add upstream status for xournal's patch

 .../libetpan/files/cxx-is-here.patch               |    2 ++
 .../opensync/libopensync-0.37/build-in-src.patch   |    2 ++
 .../opensync/libopensync-0.37/cmake.patch          |    2 ++
 .../libopensync-0.37/no-python-check.patch         |    2 ++
 .../libopensync-plugin-evolution2/0.37-fixes.patch |    2 ++
 .../libopensync-plugin-syncml/fixerror.patch       |    2 ++
 .../opensync/libsyncml/build-in-src.patch          |    2 ++
 .../telepathy/empathy/no-gnome-doc.patch           |    2 ++
 .../recipes-gnome/wv/wv-1.2.0/pkgconfig.patch      |    2 ++
 .../recipes-graphics/xournal/files/ldflags.patch   |    2 ++
 .../xournal/files/no-printing.diff                 |    2 ++
 meta/recipes-bsp/hostap/files/hostap-fw-load.patch |    2 ++
 .../lrzsz/lrzsz-0.12.20/autotools.patch            |    2 ++
 meta/recipes-bsp/lrzsz/lrzsz-0.12.20/gettext.patch |    2 ++
 .../recipes-bsp/lrzsz/lrzsz-0.12.20/makefile.patch |    2 ++
 .../bluez/bluez-dtl1-workaround/COPYING.patch      |    2 ++
 .../fix-dfutool-usb-declaration-mismatch.patch     |    1 +
 .../bluez/bluez4-4.82/hid2hci_usb_init.patch       |    2 ++
 .../bluez/bluez4-4.82/sbc-thumb.patch              |    1 +
 .../gsm/files/0001-Introduce-ports.patch           |    2 ++
 ...ending-commands-before-restarting-the-mod.patch |    2 ++
 ...-segment-incoming-usock-data-into-packets.patch |    2 ++
 .../0004-Handle-read-and-write-return-values.patch |    2 ++
 .../gsm/files/0005-Add-ask-ds-option-forSMS.patch  |    2 ++
 .../gsm/files/024_sms-text-in-bracket.patch        |    2 ++
 .../gsm/files/025_sms-status-report.patch          |    2 ++
 ...027_phonebook-find-and-read-range-support.patch |    2 ++
 ...ell-phonebook-find-and-read-range-support.patch |    2 ++
 .../gsm/files/fix_machine_init.patch               |    2 ++
 .../gsm/files/install-ts-headers.patch             |    2 ++
 .../gsm/files/lgsm_send_fix_return_value.patch     |    2 ++
 meta/recipes-connectivity/gypsy/files/fixups.patch |    2 ++
 .../libpcap/libpcap-1.1.1/aclocal.patch            |    2 ++
 .../libpcap/libpcap-1.1.1/ieee80215-arphrd.patch   |    2 ++
 .../ppp/ppp-2.4.5/cifdefroute.patch                |    2 ++
 .../ppp/ppp-2.4.5/enable-ipv6.patch                |    2 ++
 .../makefile-remove-hard-usr-reference.patch       |    2 ++
 .../ppp/ppp-2.4.5/makefile.patch                   |    2 ++
 .../ppp/ppp-2.4.5/pppd-resolv-varrun.patch         |    2 ++
 .../telepathy/libtelepathy/doublefix.patch         |    2 ++
 .../telepathy/libtelepathy/prefer_python_2.5.patch |    2 ++
 .../telepathy-python-0.15.19/parallel_make.patch   |    2 ++
 .../wireless-tools/wireless-tools/man.patch        |    2 ++
 .../wpa_supplicant-0.5.7-always-scan.patch         |    2 ++
 ...a_supplicant-fix-deprecated-dbus-function.patch |    2 ++
 .../zeroconf/zeroconf/compilefix.patch             |    2 ++
 .../glibc/glibc-2.10.1/arm-check-pf.patch          |    2 ++
 .../glibc/glibc-2.10.1/arm-longlong.patch          |    2 ++
 .../arm-lowlevellock-include-tls.patch             |    2 ++
 .../glibc/glibc-2.10.1/arm-memcpy.patch            |    2 ++
 .../glibc/glibc-2.10.1/dl-cache-libcmp.patch       |    2 ++
 .../glibc/glibc-2.10.1/fhs-linux-paths.patch       |    2 ++
 .../glibc-arm-IO-acquire-lock-fix.diff             |    2 ++
 .../glibc/glibc-2.10.1/glibc-arm-no-asm-page.patch |    2 ++
 .../glibc/glibc-2.10.1/glibc-check_pf.patch        |    2 ++
 .../glibc/glibc-2.10.1/ldd-unbash.patch            |    2 ++
 .../glibc/glibc-2.10.1/ldsocache-varrun.patch      |    2 ++
 .../glibc/glibc-2.10.1/local-args6.diff            |    2 ++
 .../glibc/glibc-2.10.1/march-i686.patch            |    1 +
 .../glibc/glibc-2.10.1/mips-rld-map-check.patch    |    2 ++
 .../glibc/glibc-2.10.1/nptl-crosscompile.patch     |    2 ++
 .../glibc/glibc-2.10.1/nscd-init.patch             |    2 ++
 .../glibc/glibc-2.10.1/powerpc-sqrt-hack.diff      |    2 ++
 .../recipes-core/glibc/glibc-2.10.1/rulesfix.patch |    2 ++
 meta/recipes-devtools/dpkg/dpkg/autofoo.patch      |    2 ++
 .../dpkg/dpkg/check_snprintf.patch                 |    2 ++
 .../recipes-devtools/dpkg/dpkg/check_version.patch |    2 ++
 .../dpkg/dpkg/ignore_extra_fields.patch            |    2 ++
 meta/recipes-devtools/dpkg/dpkg/nochroot.patch     |    2 ++
 meta/recipes-devtools/dpkg/dpkg/noman.patch        |    2 ++
 meta/recipes-devtools/dpkg/dpkg/noupdalt.patch     |    2 ++
 .../makedevs/makedevs-1.0.0/COPYING.patch          |    2 ++
 .../opkg-utils/index-ignore-filenotfound.patch     |    2 ++
 meta/recipes-devtools/opkg/opkg/add_vercmp.patch   |    2 ++
 meta/recipes-devtools/opkg/opkg/headerfix.patch    |    2 ++
 .../minicom/minicom-2.4/gcc4-scope.patch           |    2 ++
 .../minicom-2.4/rename-conflicting-functions.patch |    2 ++
 .../rpcbind/rpcbind/fix_host_path.patch            |    2 ++
 .../which/which-2.20/remove-declaration.patch      |    2 ++
 .../clutter/clutter-gst/autofoo-0.4.patch          |    2 ++
 ...-9db4a61a25677764bb927369c5c68ada958fb65c.patch |    2 ++
 .../clutter/clutter-gst/autofoo.patch              |    2 ++
 .../clutter/clutter-gst/enable_tests-1.4.patch     |    3 +++
 .../clutter/clutter-gst/enable_tests.patch         |    3 +++
 .../flac/flac-1.2.1/disable-xmms-plugin.patch      |    1 +
 .../flac/flac-1.2.1/flac-gcc43-fixes.patch         |    1 +
 .../gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff   |    2 ++
 .../liba52/liba52/buildcleanup.patch               |    2 ++
 .../libid3tag/libid3tag/addpkgconfig.patch         |    2 ++
 .../fix_build_issue_for_gcc_4.5.0.patch            |    2 ++
 .../pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch |    2 ++
 .../pulseaudio-0.9.22/autoconf_version.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.22/buildfix.patch    |    2 ++
 .../pulseaudio-0.9.22/configure_silent_rules.patch |    2 ++
 .../pulseaudio-0.9.22/gcc4-compile-fix.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.22/tls_m4.patch      |    2 ++
 .../db/db/arm-thumb-mutex_db5.patch                |    2 ++
 .../neon/neon-0.29.5/pkgconfig.patch               |    2 ++
 .../taglib/taglib-1.6.3/configuretweak.patch       |    2 ++
 .../taglib/taglib-1.6.3/nolibtool.patch            |    2 ++
 100 files changed, 197 insertions(+), 0 deletions(-)


