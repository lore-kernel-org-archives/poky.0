Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF4E14C80052
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:26:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 22:26:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="627933749"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 22:26:00 -0800
Message-ID: <4CE4C6F7.5000905@intel.com>
Date: Wed, 17 Nov 2010 22:25:59 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Distro Consolidated Updates
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
X-List-Received-Date: Thu, 18 Nov 2010 06:26:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

This is a pre-reviewed bacthing of the patches from the update process, 
I have built them both locally for x86 and the autobuilder is working on 
arm/mips/ppc currently (check distro-testing for status).

Thanks
    Sau!




Bruce Ashfield (1):
   linux-wrs: rename to linux-yocto

Dexuan Cui (12):
   damageproto: upgrade from 1.2.0 to the latest version 1.2.1
   fixesproto: upgrade from 4.1.1 to the latest version 4.1.2
   fontsproto: upgrade from 2.1.0 to the latest version 2.1.1
   glproto: upgrade from 1.4.11 to the latest version 1.4.12
   kbproto: upgrade from 1.0.4 to the latest version 1.0.5
   randrproto: upgrade from 1.3.1 to the latest version 1.3.2
   recordproto: upgrade from 1.14 to the latest version 1.14.1
   scrnsaverproto: upgrade from 1.2.0 to the latest version 1.2.1
   videoproto: upgrade from 2.3.0 to the latest version 2.3.1
   xcmiscproto: upgrade from 1.2.0 to the latest version 1.2.1
   xextproto: upgrade from 7.1.1 to the latest version 7.1.2
   Distro Tracking: update distro tracking field for recipes of Graphics
     libs

Dongxiao Xu (18):
   bluez4: Upgraded to version 4.79.
   neon: Upgraded to version 0.29.5
   libogg: Upgrade to version 1.2.1
   libvorbis: Upgraded to version 1.3.2
   quota: Upgraded to version 4.00-pre1
   kexec_tools: Upgraded to version 2.0.2
   libical: Upgraded to version 0.46
   libproxy: Upgraded to version 0.4.6
   tremor: Upgraded to rev 17572 (2010/10/27)
   valgrind: Upgraded to version 3.6.0
   glib-2.0: Upgraded to version 2.27.3
   taglib: Upgraded to version 1.6.3
   libmusicbrainz: Upgraded to version 3.0.3
   distro_tracking: update distro tracking fileds for bluez4, neon, etc.
   gst-plugins-base: Fix build error
   matchbox-panel: Change function name "sync" to avoid conflict
   libfm: add missing definitions and declarations
   bitbake: optimize file parsing speed

Mei Lei (2):
   distro_tracking_fields.inc: remove some packages information from it
   distro_tracking_fields.inc: remove some invalid packages information
     from it

Nitin A Kamble (7):
   task-poky-sdk: add tcl package in the sdk image
   gcc: upgrade from 4.5.0 to 4.5.1
   poky-default.inc: update gcc & linux-libc-headers versions
   libtool upgrade from 2.2.10 to 2.4
   linux-libc-headers: upgrade from 2.6.34 to 2.6.36
   eglibc: rebase a nativesdk patch to the newer code
   eglibc: rebase a nativesdk patch to the newer code

Qing He (9):
   libnl: upgrade to version 2.0
   libtasn1: upgrade to version 2.8
   syslinux: upgrade to version 4.03
   busybox: upgrade to version 1.17.3
   dbus: upgrade to version 1.4.0
   dbus-glib: upgrade to version 0.88
   dhcp: upgrade to version 4.2.0
   sysstat: upgrade to version 9.1.5
   openssl: upgrade to version 0.9.8p

Saul Wold (11):
   libsndfile: Upgrade to 1.0.23
   telepathy: Update telepathy-glib and telepathy-idle for world build
   subversion: Fix host contamination
   web_svn: make it buildable for world build
   .gitignore: update for new bsp-guide location
   python-gst: Fix the configure patch & add LIC_FILE_CHKSUM
   clutter-gtk-1.0: Fix build issues for world build
   taglib: Change upstream location due to failing fetch
   taglib: fix SRC_URI
   glproto: fix LIC_FILES_CHKSUM
   libxvmc: Upgrade to 1.0.6

Yu Ke (2):
   cracklib: upgrade from 2.8.16 to 2.8.18
   distro tracking: update the info for upgrade recpies

  .gitignore                                         |    2 +
  bitbake/lib/bb/cooker.py                           |    2 +
  bitbake/lib/bb/data.py                             |   11 +-
  meta-emenlow/conf/machine/emenlow.conf             |    2 +-
  ...x-wrs_git.bbappend =linux-yocto_git.bbappend} |    0
  .../conf/distro/include/distro_tracking_fields.inc |  772 
+++-----------------
  .../conf/distro/include/poky-default-revisions.inc |   24 +-
  meta/conf/distro/include/poky-default.inc          |    6 +-
  .../distro/include/preferred-xorg-versions.inc     |   38 +-
  meta/conf/machine/atom-pc.conf                     |    2 +-
  meta/conf/machine/beagleboard.conf                 |    2 +-
  meta/conf/machine/include/qemu.inc                 |    2 +-
  meta/conf/machine/mpc8315e-rdb.conf                |    2 +-
  meta/conf/machine/routerstationpro.conf            |    2 +-
  .../{bluez4-4.66 =bluez4-4.79}/bluetooth.conf    |    0
  .../fix-dfutool-usb-declaration-mismatch.patch     |    0
  .../hid2hci_usb_init.patch                         |    0
  .../{bluez4-4.66 =bluez4-4.79}/sbc-thumb.patch   |    0
  .../bluez/{bluez4_4.66.bb =bluez4_4.79.bb}       |    0
  .../dhcp-3.0.3-dhclient-dbus.patch                 |    0
  .../fix-client-path.patch                          |    0
  .../fixincludes.patch                              |    0
  .../{dhcp-4.1.1-P1 =dhcp-4.2.0}/noattrmode.patch |    0
  .../dhcp/{dhcp-4.1.1-P1 =dhcp-4.2.0}/site.h      |    0
  .../dhcp/{dhcp_4.1.1-P1.bb =dhcp_4.2.0.bb}       |    2 +-
  .../configure-targets.patch                        |    0
  .../debian/ca.patch                                |    0
  .../debian/config-hurd.patch                       |    0
  .../debian/debian-targets.patch                    |    0
  .../debian/engines-path.patch                      |    0
  .../debian/kfreebsd-pipe.patch                     |    0
  .../debian/make-targets.patch                      |    0
  .../debian/man-dir.patch                           |    0
  .../debian/man-section.patch                       |    0
  .../debian/no-rpath.patch                          |    0
  .../debian/no-symbolic.patch                       |    0
  .../debian/perl-path.diff                          |    0
  .../debian/pic.patch                               |    0
  .../debian/pkg-config.patch                        |    0
  .../debian/rc4-amd64.patch                         |    0
  .../debian/rehash-crt.patch                        |    0
  .../debian/rehash_pod.patch                        |    0
  .../debian/series                                  |    0
  .../debian/shared-lib-ext.patch                    |    0
  .../debian/stddef.patch                            |    0
  .../debian/valgrind.patch                          |    0
  .../debian/version-script.patch                    |    0
  .../shared-libs.patch                              |    0
  .../{openssl_0.9.8o.bb =openssl_0.9.8p.bb}       |    0
  ...athy-glib_0.9.2.bb =telepathy-glib_0.13.5.bb} |    9 +-
  ...pathy-idle_0.1.2.bb =telepathy-idle_0.1.6.bb} |    1 +
  .../B921600.patch                                  |    0
  .../busybox-appletlib-dependency.patch             |    0
  .../{busybox-1.16.2 =busybox-1.17.3}/defconfig   |    0
  .../get_header_tar.patch                           |    0
  .../make-382-fix.patch                             |    0
  .../run-parts.in.usr-bin.patch                     |    6 +-
  .../udhcpc-fix-nfsroot.patch                       |    0
  .../udhcpscript.patch                              |    0
  meta/recipes-core/busybox/busybox.inc              |    9 +-
  .../{busybox_1.16.2.bb =busybox_1.17.3.bb}       |    2 +-
  .../dbus/dbus-1.2.24/fix-install-daemon.patch      |   56 --
  .../dbus/{dbus-1.2.24 =dbus-1.4.0}/dbus-1.init   |    0
  .../dbus/{dbus-1.2.24 =dbus-1.4.0}/tmpdir.patch  |    0
  .../fix_asneeded.patch                             |    0
  .../no-examples.patch                              |    0
  .../dbus/{dbus-glib_0.86.bb =dbus-glib_0.88.bb}  |    0
  meta/recipes-core/dbus/dbus.inc                    |    1 -
  .../dbus/{dbus_1.2.24.bb =dbus_1.4.0.bb}         |    2 +-
  .../eglibc/eglibc-2.12/ld-search-order.patch       |   16 +-
  meta/recipes-core/eglibc/eglibc_2.12.bb            |    2 +-
  .../gatomic-proper-pointer-get-cast.patch          |   37 -
  .../60_wait-longer-for-threads-to-die.patch        |   12 +-
  .../configure-libtool.patch                        |   16 +-
  .../glib-gettextize-dir.patch                      |   13 +-
  .../{glib-2.0_2.24.1.bb =glib-2.0_2.27.3.bb}     |    3 +-
  meta/recipes-core/glib-2.0/glib.inc                |    2 +-
  meta/recipes-core/tasks/task-poky-sdk.bb           |    5 +-
  .../gcc-4.5.0/gcc-4.5.0_to_svn_162697.patch.bz2    |  Bin 6957305 -0 bytes
  .../gcc/gcc-4.5.0/gcc-pr43698-arm-rev-instr.patch  |  117 ---
  .../gcc_revert_base_version_to_4.5.0.patch         |    9 -
  .../gcc/{gcc-4.5.0.inc =gcc-4.5.1.inc}           |    3 -
  .../{gcc-4.5.0 =gcc-4.5.1}/100-uclibc-conf.patch |    0
  .../103-uclibc-conf-noupstream.patch               |    0
  .../200-uclibc-locale.patch                        |    0
  .../203-uclibc-locale-no__x.patch                  |    0
  .../204-uclibc-locale-wchar_fix.patch              |    0
  .../205-uclibc-locale-update.patch                 |    0
  .../301-missing-execinfo_h.patch                   |    0
  .../302-c99-snprintf.patch                         |    0
  .../303-c99-complex-ugly-hack.patch                |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/304-index_macro.patch |    0
  .../305-libmudflap-susv3-legacy.patch              |    0
  .../306-libstdc++-namespace.patch                  |    0
  .../307-locale_facets.patch                        |    0
  .../602-sdk-libstdc++-includes.patch               |    0
  .../gcc/{gcc-4.5.0 =gcc-4.5.1}/64bithack.patch   |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/740-sh-pr24836.patch  |    0
  .../800-arm-bigendian.patch                        |    0
  .../904-flatten-switch-stmt-00.patch               |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/arm-bswapsi2.patch    |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/arm-nolibfloat.patch  |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/arm-softfloat.patch   |    0
  .../arm-unbreak-eabi-armv4t.dpatch                 |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/cache-amnesia.patch   |    0
  .../disable_relax_pic_calls_flag.patch             |    0
  .../fedora/gcc43-c++-builtin-redecl.patch          |    0
  .../fedora/gcc43-cpp-pragma.patch                  |    0
  .../fedora/gcc43-i386-libgomp.patch                |    0
  .../fedora/gcc43-ia64-libunwind.patch              |    0
  .../fedora/gcc43-java-debug-iface-type.patch       |    0
  .../fedora/gcc43-java-nomulti.patch                |    0
  .../fedora/gcc43-libgomp-speedup.patch             |    0
  .../fedora/gcc43-ppc32-retaddr.patch               |    0
  .../fedora/gcc43-pr27898.patch                     |    0
  .../fedora/gcc43-pr32139.patch                     |    0
  .../fedora/gcc43-pr33763.patch                     |    0
  .../fedora/gcc43-rh251682.patch                    |    0
  .../fedora/gcc43-rh330771.patch                    |    0
  .../fedora/gcc43-rh341221.patch                    |    0
  .../fortran-cross-compile-hack.patch               |    0
  .../gcc-4.0.2-e300c2c3.patch                       |    0
  .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    0
  .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    0
  .../gcc-arm-frename-registers.patch                |    0
  .../gcc-flags-for-build.patch                      |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/gcc-ice-hack.dpatch   |    0
  .../gcc-poison-dir-extend.patch                    |    0
  .../gcc-poison-parameters.patch                    |    0
  .../gcc-poison-system-directories.patch            |    0
  .../gcc-uclibc-locale-ctype_touplow_t.patch        |    0
  .../libstdc++-emit-__cxa_end_cleanup-in-text.patch |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/libstdc++-pic.dpatch  |    0
  .../optional_libstdc.patch                         |    0
  .../gcc/{gcc-4.5.0 =gcc-4.5.1}/pr30961.dpatch    |    0
  .../gcc/{gcc-4.5.0 =gcc-4.5.1}/pr35942.patch     |    0
  .../{gcc-4.5.0 =gcc-4.5.1}/zecke-xgcc-cpp.patch  |    0
  ...nadian_4.5.0.bb =gcc-cross-canadian_4.5.1.bb} |    2 +-
  ...initial_4.5.0.bb =gcc-cross-initial_4.5.1.bb} |    2 +-
  ...te_4.5.0.bb =gcc-cross-intermediate_4.5.1.bb} |    2 +-
  .../gcc/{gcc-cross_4.5.0.bb =gcc-cross_4.5.1.bb} |    2 +-
  ...tial_4.5.0.bb =gcc-crosssdk-initial_4.5.1.bb} |    2 +-
  ...4.5.0.bb =gcc-crosssdk-intermediate_4.5.1.bb} |    2 +-
  ...gcc-crosssdk_4.5.0.bb =gcc-crosssdk_4.5.1.bb} |    2 +-
  .../{gcc-runtime_4.5.0.bb =gcc-runtime_4.5.1.bb} |    2 +-
  .../gcc/{gcc_4.5.0.bb =gcc_4.5.1.bb}             |    2 +-
  ...ibtool-cross_2.2.10.bb =libtool-cross_2.4.bb} |    2 +-
  ...tool-native_2.2.10.bb =libtool-native_2.4.bb} |    2 +-
  ...ativesdk_2.2.10.bb =libtool-nativesdk_2.4.bb} |    2 +-
  .../libtool/libtool/cross_compile.patch            |   27 +-
  meta/recipes-devtools/libtool/libtool/prefix.patch |   31 +-
  .../libtool/{libtool_2.2.10.bb =libtool_2.4.bb}  |    2 +-
  .../python/python-gst/python-path.patch            |   11 +-
  meta/recipes-devtools/python/python-gst_0.10.19.bb |    4 +-
  ...ative_1.3.0.bb =python-scons-native_2.0.1.bb} |    0
  ...python-scons_1.3.0.bb =python-scons_2.0.1.bb} |    0
  .../subversion/subversion_1.5.5.bb                 |    5 +-
  .../syslinux/files/cross-build.patch               |    7 +-
  .../{syslinux_3.86.bb =syslinux_4.03.bb}         |    2 +-
  .../fix_issue_caused_by_ccache.patch               |    0
  .../fixed-perl-path.patch                          |    0
  .../valgrind/valgrind_3.5.0-svn_r11264.patch.bz2   |  Bin 3681800 -0 bytes
  .../{valgrind_3.5.0.bb =valgrind_3.6.0.bb}       |    3 +-
  .../{cracklib_2.8.16.bb =cracklib_2.8.18.bb}     |    0
  .../quota/{quota_3.17.bb =quota_4.00-pre1.bb}    |    2 +-
  .../sysstat/{sysstat_9.1.4.bb =sysstat_9.1.5.bb} |    0
  .../clutter/clutter-gtk-1.0_git.bb                 |    9 +-
  meta/recipes-graphics/clutter/clutter-gtk.inc      |    2 +-
  .../clutter/clutter-gtk/disable_deprecated.patch   |   18 +
  ...bxscrnsaver_1.2.0.bb =libxscrnsaver_1.2.1.bb} |    2 +-
  .../{libxvmc_1.0.5.bb =libxvmc_1.0.6.bb}         |    2 +-
  .../{damageproto_1.2.0.bb =damageproto_1.2.1.bb} |    2 +-
  .../xorg-proto/fixesproto_4.1.1.bb                 |   11 -
  .../xorg-proto/fixesproto_4.1.2.bb                 |   11 +
  .../{fontsproto_2.1.0.bb =fontsproto_2.1.1.bb}   |    2 +-
  .../{glproto_1.4.11.bb =glproto_1.4.12.bb}       |    4 +-
  .../{kbproto_1.0.4.bb =kbproto_1.0.5.bb}         |    2 +-
  .../{randrproto_1.3.1.bb =randrproto_1.3.2.bb}   |    2 +-
  .../{recordproto_1.14.bb =recordproto_1.14.1.bb} |    2 +-
  .../{videoproto_2.3.0.bb =videoproto_2.3.1.bb}   |    2 +-
  .../{xcmiscproto_1.2.0.bb =xcmiscproto_1.2.1.bb} |    2 +-
  .../{xextproto_7.1.1.bb =xextproto_7.1.2.bb}     |    0
  .../kexec/kexec-tools-2.0.1/configurefix.patch     |   51 --
  meta/recipes-kernel/kexec/kexec-tools.inc          |    5 +-
  .../{kexec-tools_2.0.1.bb =kexec-tools_2.0.2.bb} |    0
  ...-wrs_git.bb =linux-libc-headers-yocto_git.bb} |    4 +-
  .../linux-libc-headers/hayes-gone.patch            |   46 --
  .../linux-libc-headers/ppc_glibc_build_fix.patch   |   25 -
  ...ders_2.6.34.bb =linux-libc-headers_2.6.36.bb} |    6 +-
  .../linux/{linux-wrs_git.bb =linux-yocto_git.bb} |   73 +-
  .../gst-plugins-base-tremor.patch                  |   17 +
  .../gstreamer/gst-plugins-base_0.10.30.bb          |    4 +-
  .../libogg/{libogg_1.2.0.bb =libogg_1.2.1.bb}    |    0
  .../libsndfile/libsndfile1/acincludefix.patch      |    0
  .../libsndfile/libsndfile1/add-cxx.patch           |    0
  .../libsndfile/libsndfile1_1.0.23.bb}              |    8 +-
  .../{libvorbis_1.3.1.bb =libvorbis_1.3.2.bb}     |    0
  .../fix_build_issue_for_gcc_4.5.0.patch            |    0
  ...usicbrainz_3.0.2.bb =libmusicbrainz_3.0.3.bb} |    4 +-
  .../{tremor_20100422.bb =tremor_20101027.bb}     |    2 +-
  .../libical/{libical_0.44.bb =libical_0.46.bb}   |    1 +
  .../matchbox-panel-2/fix_sync_funcname.patch       |   34 +
  .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    5 +-
  meta/recipes-sato/web/web/owl-window-menu.patch    |    4 +-
  meta/recipes-sato/web/web_svn.bb                   |   14 +-
  .../gnutls/{libtasn1_2.7.bb =libtasn1_2.8.bb}    |    2 +-
  .../libfm/libfm-0.1.12/add_missing.patch           |   50 ++
  meta/recipes-support/libfm/libfm_0.1.12.bb         |    5 +-
  meta/recipes-support/libnl/libnl/compilefix.patch  |   12 -
  .../libnl/libnl/local-includes.patch               |   11 -
  .../libnl/{libnl_1.1.bb =libnl_2.0.bb}           |   11 +-
  .../libproxy-0.4.3/disable_Os_option.patch         |   17 -
  .../{libproxy_0.4.3.bb =libproxy_0.4.6.bb}       |    5 +-
  .../{neon-0.29.3 =neon-0.29.5}/pkgconfig.patch   |    0
  .../neon/{neon_0.29.3.bb =neon_0.29.5.bb}        |    0
  .../configuretweak.patch                           |    0
  .../{taglib-1.6.1 =taglib-1.6.3}/nolibtool.patch |    0
  meta/recipes-support/taglib/taglib_1.6.1.bb        |   23 -
  meta/recipes-support/taglib/taglib_1.6.3.bb        |   27 +
  219 files changed, 518 insertions(+), 1329 deletions(-)
  rename meta-emenlow/recipes/linux/{linux-wrs_git.bbappend 
=linux-yocto_git.bbappend} (100%)
  rename meta/recipes-connectivity/bluez/{bluez4-4.66 
=bluez4-4.79}/bluetooth.conf (100%)
  rename meta/recipes-connectivity/bluez/{bluez4-4.66 
=bluez4-4.79}/fix-dfutool-usb-declaration-mismatch.patch (100%)
  rename meta/recipes-connectivity/bluez/{bluez4-4.66 
=bluez4-4.79}/hid2hci_usb_init.patch (100%)
  rename meta/recipes-connectivity/bluez/{bluez4-4.66 
=bluez4-4.79}/sbc-thumb.patch (100%)
  rename meta/recipes-connectivity/bluez/{bluez4_4.66.bb 
=bluez4_4.79.bb} (100%)
  rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 
=dhcp-4.2.0}/dhcp-3.0.3-dhclient-dbus.patch (100%)
  rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 
=dhcp-4.2.0}/fix-client-path.patch (100%)
  rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 
=dhcp-4.2.0}/fixincludes.patch (100%)
  rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 
=dhcp-4.2.0}/noattrmode.patch (100%)
  rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 
=dhcp-4.2.0}/site.h (100%)
  rename meta/recipes-connectivity/dhcp/{dhcp_4.1.1-P1.bb 
=dhcp_4.2.0.bb} (94%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/configure-targets.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/ca.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/config-hurd.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/debian-targets.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/engines-path.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/kfreebsd-pipe.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/make-targets.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/man-dir.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/man-section.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/no-rpath.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/no-symbolic.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/perl-path.diff (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/pic.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/pkg-config.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/rc4-amd64.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/rehash-crt.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/rehash_pod.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/series (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/shared-lib-ext.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/stddef.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/valgrind.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/debian/version-script.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl-0.9.8o 
=openssl-0.9.8p}/shared-libs.patch (100%)
  rename meta/recipes-connectivity/openssl/{openssl_0.9.8o.bb 
=openssl_0.9.8p.bb} (100%)
  rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.9.2.bb 
=telepathy-glib_0.13.5.bb} (74%)
  rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.2.bb 
=telepathy-idle_0.1.6.bb} (97%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/B921600.patch (100%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/busybox-appletlib-dependency.patch (100%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/defconfig (100%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/get_header_tar.patch (100%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/make-382-fix.patch (100%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/run-parts.in.usr-bin.patch (82%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/udhcpc-fix-nfsroot.patch (100%)
  rename meta/recipes-core/busybox/{busybox-1.16.2 
=busybox-1.17.3}/udhcpscript.patch (100%)
  rename meta/recipes-core/busybox/{busybox_1.16.2.bb 
=busybox_1.17.3.bb} (98%)
  delete mode 100644 
meta/recipes-core/dbus/dbus-1.2.24/fix-install-daemon.patch
  rename meta/recipes-core/dbus/{dbus-1.2.24 =dbus-1.4.0}/dbus-1.init (100%)
  rename meta/recipes-core/dbus/{dbus-1.2.24 =dbus-1.4.0}/tmpdir.patch 
(100%)
  rename meta/recipes-core/dbus/{dbus-glib-0.86 
=dbus-glib-0.88}/fix_asneeded.patch (100%)
  rename meta/recipes-core/dbus/{dbus-glib-0.86 
=dbus-glib-0.88}/no-examples.patch (100%)
  rename meta/recipes-core/dbus/{dbus-glib_0.86.bb =dbus-glib_0.88.bb} 
(100%)
  rename meta/recipes-core/dbus/{dbus_1.2.24.bb =dbus_1.4.0.bb} (64%)
  delete mode 100644 
meta/recipes-core/glib-2.0/glib-2.0-2.24.1/gatomic-proper-pointer-get-cast.patch
  rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 
=glib-2.0-2.27.3}/60_wait-longer-for-threads-to-die.patch (63%)
  rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 
=glib-2.0-2.27.3}/configure-libtool.patch (73%)
  rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 
=glib-2.0-2.27.3}/glib-gettextize-dir.patch (62%)
  rename meta/recipes-core/glib-2.0/{glib-2.0_2.24.1.bb 
=glib-2.0_2.27.3.bb} (66%)
  delete mode 100644 
meta/recipes-devtools/gcc/gcc-4.5.0/gcc-4.5.0_to_svn_162697.patch.bz2
  delete mode 100644 
meta/recipes-devtools/gcc/gcc-4.5.0/gcc-pr43698-arm-rev-instr.patch
  delete mode 100644 
meta/recipes-devtools/gcc/gcc-4.5.0/gcc_revert_base_version_to_4.5.0.patch
  rename meta/recipes-devtools/gcc/{gcc-4.5.0.inc =gcc-4.5.1.inc} (95%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/100-uclibc-conf.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/103-uclibc-conf-noupstream.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/200-uclibc-locale.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/203-uclibc-locale-no__x.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/204-uclibc-locale-wchar_fix.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/205-uclibc-locale-update.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/301-missing-execinfo_h.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/302-c99-snprintf.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/303-c99-complex-ugly-hack.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/304-index_macro.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/305-libmudflap-susv3-legacy.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/306-libstdc++-namespace.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/307-locale_facets.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/602-sdk-libstdc++-includes.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/64bithack.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/740-sh-pr24836.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/800-arm-bigendian.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/904-flatten-switch-stmt-00.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/arm-bswapsi2.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/arm-nolibfloat.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/arm-softfloat.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/arm-unbreak-eabi-armv4t.dpatch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/cache-amnesia.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/disable_relax_pic_calls_flag.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-c++-builtin-redecl.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-cpp-pragma.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-i386-libgomp.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-ia64-libunwind.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-java-debug-iface-type.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-java-nomulti.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-libgomp-speedup.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-ppc32-retaddr.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-pr27898.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-pr32139.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-pr33763.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-rh251682.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-rh330771.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fedora/gcc43-rh341221.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/fortran-cross-compile-hack.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-4.0.2-e300c2c3.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-arm-frename-registers.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-flags-for-build.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-ice-hack.dpatch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-poison-dir-extend.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-poison-parameters.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-poison-system-directories.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/gcc-uclibc-locale-ctype_touplow_t.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/libstdc++-emit-__cxa_end_cleanup-in-text.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/libstdc++-pic.dpatch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/optional_libstdc.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 =gcc-4.5.1}/pr30961.dpatch 
(100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 =gcc-4.5.1}/pr35942.patch 
(100%)
  rename meta/recipes-devtools/gcc/{gcc-4.5.0 
=gcc-4.5.1}/zecke-xgcc-cpp.patch (100%)
  rename meta/recipes-devtools/gcc/{gcc-cross-canadian_4.5.0.bb 
=gcc-cross-canadian_4.5.1.bb} (98%)
  rename meta/recipes-devtools/gcc/{gcc-cross-initial_4.5.0.bb 
=gcc-cross-initial_4.5.1.bb} (84%)
  rename meta/recipes-devtools/gcc/{gcc-cross-intermediate_4.5.0.bb 
=gcc-cross-intermediate_4.5.1.bb} (85%)
  rename meta/recipes-devtools/gcc/{gcc-cross_4.5.0.bb 
=gcc-cross_4.5.1.bb} (96%)
  rename meta/recipes-devtools/gcc/{gcc-crosssdk-initial_4.5.0.bb 
=gcc-crosssdk-initial_4.5.1.bb} (86%)
  rename meta/recipes-devtools/gcc/{gcc-crosssdk-intermediate_4.5.0.bb 
=gcc-crosssdk-intermediate_4.5.1.bb} (87%)
  rename meta/recipes-devtools/gcc/{gcc-crosssdk_4.5.0.bb 
=gcc-crosssdk_4.5.1.bb} (82%)
  rename meta/recipes-devtools/gcc/{gcc-runtime_4.5.0.bb 
=gcc-runtime_4.5.1.bb} (95%)
  rename meta/recipes-devtools/gcc/{gcc_4.5.0.bb =gcc_4.5.1.bb} (94%)
  rename meta/recipes-devtools/libtool/{libtool-cross_2.2.10.bb 
=libtool-cross_2.4.bb} (99%)
  rename meta/recipes-devtools/libtool/{libtool-native_2.2.10.bb 
=libtool-native_2.4.bb} (97%)
  rename meta/recipes-devtools/libtool/{libtool-nativesdk_2.2.10.bb 
=libtool-nativesdk_2.4.bb} (98%)
  rename meta/recipes-devtools/libtool/{libtool_2.2.10.bb 
=libtool_2.4.bb} (98%)
  rename meta/recipes-devtools/python/{python-scons-native_1.3.0.bb 
=python-scons-native_2.0.1.bb} (100%)
  rename meta/recipes-devtools/python/{python-scons_1.3.0.bb 
=python-scons_2.0.1.bb} (100%)
  rename meta/recipes-devtools/syslinux/{syslinux_3.86.bb 
=syslinux_4.03.bb} (99%)
  rename meta/recipes-devtools/valgrind/{valgrind 
=valgrind-3.6.0}/fix_issue_caused_by_ccache.patch (100%)
  rename meta/recipes-devtools/valgrind/{valgrind 
=valgrind-3.6.0}/fixed-perl-path.patch (100%)
  delete mode 100644 
meta/recipes-devtools/valgrind/valgrind/valgrind_3.5.0-svn_r11264.patch.bz2
  rename meta/recipes-devtools/valgrind/{valgrind_3.5.0.bb 
=valgrind_3.6.0.bb} (93%)
  rename meta/recipes-extended/cracklib/{cracklib_2.8.16.bb 
=cracklib_2.8.18.bb} (100%)
  rename meta/recipes-extended/quota/{quota_3.17.bb =quota_4.00-pre1.bb} 
(94%)
  rename meta/recipes-extended/sysstat/{sysstat_9.1.4.bb 
=sysstat_9.1.5.bb} (100%)
  create mode 100644 
meta/recipes-graphics/clutter/clutter-gtk/disable_deprecated.patch
  rename meta/recipes-graphics/xorg-lib/{libxscrnsaver_1.2.0.bb 
=libxscrnsaver_1.2.1.bb} (95%)
  rename meta/recipes-graphics/xorg-lib/{libxvmc_1.0.5.bb 
=libxvmc_1.0.6.bb} (79%)
  rename meta/recipes-graphics/xorg-proto/{damageproto_1.2.0.bb 
=damageproto_1.2.1.bb} (96%)
  delete mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
  create mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
  rename meta/recipes-graphics/xorg-proto/{fontsproto_2.1.0.bb 
=fontsproto_2.1.1.bb} (96%)
  rename meta/recipes-graphics/xorg-proto/{glproto_1.4.11.bb 
=glproto_1.4.12.bb} (68%)
  rename meta/recipes-graphics/xorg-proto/{kbproto_1.0.4.bb 
=kbproto_1.0.5.bb} (96%)
  rename meta/recipes-graphics/xorg-proto/{randrproto_1.3.1.bb 
=randrproto_1.3.2.bb} (96%)
  rename meta/recipes-graphics/xorg-proto/{recordproto_1.14.bb 
=recordproto_1.14.1.bb} (96%)
  rename meta/recipes-graphics/xorg-proto/{videoproto_2.3.0.bb 
=videoproto_2.3.1.bb} (93%)
  rename meta/recipes-graphics/xorg-proto/{xcmiscproto_1.2.0.bb 
=xcmiscproto_1.2.1.bb} (95%)
  rename meta/recipes-graphics/xorg-proto/{xextproto_7.1.1.bb 
=xextproto_7.1.2.bb} (100%)
  delete mode 100644 
meta/recipes-kernel/kexec/kexec-tools-2.0.1/configurefix.patch
  rename meta/recipes-kernel/kexec/{kexec-tools_2.0.1.bb 
=kexec-tools_2.0.2.bb} (100%)
  rename 
meta/recipes-kernel/linux-libc-headers/{linux-libc-headers-wrs_git.bb 
=linux-libc-headers-yocto_git.bb} (91%)
  delete mode 100644 
meta/recipes-kernel/linux-libc-headers/linux-libc-headers/hayes-gone.patch
  delete mode 100644 
meta/recipes-kernel/linux-libc-headers/linux-libc-headers/ppc_glibc_build_fix.patch
  rename 
meta/recipes-kernel/linux-libc-headers/{linux-libc-headers_2.6.34.bb 
=linux-libc-headers_2.6.36.bb} (86%)
  rename meta/recipes-kernel/linux/{linux-wrs_git.bb 
=linux-yocto_git.bb} (74%)
  create mode 100644 
meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.30/gst-plugins-base-tremor.patch
  rename meta/recipes-multimedia/libogg/{libogg_1.2.0.bb 
=libogg_1.2.1.bb} (100%)
  rename meta/{recipes-tbd 
=recipes-multimedia}/libsndfile/libsndfile1/acincludefix.patch (100%)
  rename meta/{recipes-tbd 
=recipes-multimedia}/libsndfile/libsndfile1/add-cxx.patch (100%)
  rename meta/{recipes-tbd/libsndfile/libsndfile1_1.0.17.bb 
=recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb} (72%)
  rename meta/recipes-multimedia/libvorbis/{libvorbis_1.3.1.bb 
=libvorbis_1.3.2.bb} (100%)
  rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz 
=libmusicbrainz-3.0.3}/fix_build_issue_for_gcc_4.5.0.patch (100%)
  rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz_3.0.2.bb 
=libmusicbrainz_3.0.3.bb} (89%)
  rename meta/recipes-multimedia/tremor/{tremor_20100422.bb 
=tremor_20101027.bb} (88%)
  rename meta/recipes-sato/libical/{libical_0.44.bb =libical_0.46.bb} (97%)
  create mode 100644 
meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch
  rename meta/recipes-support/gnutls/{libtasn1_2.7.bb =libtasn1_2.8.bb} 
(98%)
  create mode 100644 
meta/recipes-support/libfm/libfm-0.1.12/add_missing.patch
  delete mode 100644 meta/recipes-support/libnl/libnl/compilefix.patch
  delete mode 100644 meta/recipes-support/libnl/libnl/local-includes.patch
  rename meta/recipes-support/libnl/{libnl_1.1.bb =libnl_2.0.bb} (61%)
  delete mode 100644 
meta/recipes-support/libproxy/libproxy-0.4.3/disable_Os_option.patch
  rename meta/recipes-support/libproxy/{libproxy_0.4.3.bb 
=libproxy_0.4.6.bb} (93%)
  rename meta/recipes-support/neon/{neon-0.29.3 
=neon-0.29.5}/pkgconfig.patch (100%)
  rename meta/recipes-support/neon/{neon_0.29.3.bb =neon_0.29.5.bb} (100%)
  rename meta/recipes-support/taglib/{taglib-1.6.1 
=taglib-1.6.3}/configuretweak.patch (100%)
  rename meta/recipes-support/taglib/{taglib-1.6.1 
=taglib-1.6.3}/nolibtool.patch (100%)
  delete mode 100644 meta/recipes-support/taglib/taglib_1.6.1.bb
  create mode 100644 meta/recipes-support/taglib/taglib_1.6.3.bb




