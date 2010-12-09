Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21FDC4C81234
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 00:13:48 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 22:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="634614230"
Received: from unknown (HELO localhost) ([10.255.13.198])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 22:13:47 -0800
Message-Id: <cover.1291874416.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Date: Wed, 8 Dec 2010 22:00:16 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] SRC_URI Checksums additions
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
X-List-Received-Date: Thu, 09 Dec 2010 06:13:48 -0000

This is a addition of SRC_URI Checksums to the Yocto Metadata 
with the plan for enableing direct checksums in the near future.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgw/src_uri_checksum
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgw/src_uri_checksum

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (1):
  SRC_URI Checksums Additionals

 .../recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb |    3 +
 meta/recipes-bsp/acpid/acpid_1.0.10.bb             |    3 +
 meta/recipes-bsp/apmd/apmd_3.2.2-14.bb             |   10 ++++-
 meta/recipes-bsp/grub/grub_0.97.bb                 |    3 +
 meta/recipes-bsp/hostap/hostap-utils_0.4.7.bb      |    3 +
 meta/recipes-bsp/libacpi/libacpi_0.2.bb            |    3 +
 meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb            |    3 +
 meta/recipes-bsp/pciutils/pciutils_3.1.7.bb        |    3 +
 meta/recipes-bsp/pcmciautils/pcmciautils_017.bb    |    3 +
 meta/recipes-bsp/setserial/setserial_2.17.bb       |    3 +
 meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb   |    3 +
 meta/recipes-bsp/usbutils/usbutils_0.86.bb         |    3 +
 meta/recipes-bsp/v86d/v86d_0.1.9.bb                |    3 +
 meta/recipes-connectivity/avahi/avahi_0.6.28.bb    |    3 +
 .../bluez/bluez-hcidump_1.42.bb                    |    3 +
 meta/recipes-connectivity/bluez/bluez4_4.79.bb     |    3 +
 .../connman/connman-gnome_0.5.bb                   |    3 +
 meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb       |    3 +
 .../galago/galago-daemon_0.5.1.bb                  |    3 +
 .../recipes-connectivity/galago/libgalago_0.5.2.bb |    3 +
 meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb     |    3 +
 meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb    |    6 ++-
 .../iproute2/iproute2_2.6.35.bb                    |    3 +
 .../irda-utils/irda-utils_0.9.18.bb                |    3 +
 .../libnss-mdns/libnss-mdns_0.10.bb                |    3 +
 meta/recipes-connectivity/libpcap/libpcap_1.1.1.bb |    3 +
 .../nfs-utils/libnfsidmap_0.23.bb                  |    3 +
 .../nfs-utils/nfs-utils_1.2.3.bb                   |    3 +
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    3 +
 meta/recipes-connectivity/portmap/portmap_6.0.bb   |    3 +
 meta/recipes-connectivity/ppp/ppp_2.4.5.bb         |    3 +
 .../resolvconf/resolvconf_1.43.bb                  |    3 +
 .../telepathy/libtelepathy_0.3.3.bb                |    3 +
 .../telepathy/telepathy-glib_0.13.5.bb             |    3 +
 .../telepathy/telepathy-idle_0.1.6.bb              |    3 +
 .../wireless-tools/wireless-tools_29.bb            |    3 +
 meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb |    3 +
 .../recipes-core/base-passwd/base-passwd_3.5.22.bb |    3 +
 meta/recipes-core/busybox/busybox_1.17.3.bb        |    3 +
 .../console-tools/console-tools_0.3.2.bb           |    3 +
 meta/recipes-core/coreutils/coreutils_8.5.bb       |    3 +
 meta/recipes-core/dbus/dbus-glib_0.88.bb           |    3 +
 meta/recipes-core/dbus/dbus_1.4.0.bb               |    3 +
 meta/recipes-core/eggdbus/eggdbus_0.6.bb           |    3 +
 meta/recipes-core/expat/expat_2.0.1.bb             |    3 +
 meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb      |    3 +
 meta/recipes-core/jpeg/jpeg_8b.bb                  |    3 +
 meta/recipes-core/libxml/libxml2_2.7.7.bb          |    3 +
 meta/recipes-core/ncurses/ncurses_5.4.bb           |    3 +
 meta/recipes-core/readline/readline_6.1.bb         |    3 +
 meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb   |    3 +
 meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb     |    3 +
 meta/recipes-core/tinylogin/tinylogin_1.4.bb       |    3 +
 meta/recipes-core/udev/udev_158.bb                 |    3 +
 meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    3 +
 meta/recipes-core/zlib/zlib_1.2.5.bb               |    3 +
 meta/recipes-devtools/apt/apt-native_0.7.14.bb     |    3 +
 meta/recipes-devtools/apt/apt_0.7.14.bb            |    3 +
 meta/recipes-devtools/autoconf/autoconf_2.65.bb    |    3 +
 meta/recipes-devtools/automake/automake_1.11.1.bb  |    3 +
 meta/recipes-devtools/binutils/binutils_2.20.1.bb  |    3 +
 meta/recipes-devtools/bison/bison_2.4.3.bb         |    3 +
 meta/recipes-devtools/chrpath/chrpath_0.13.bb      |    3 +
 meta/recipes-devtools/diffstat/diffstat_1.54.bb    |    3 +
 meta/recipes-devtools/distcc/distcc_2.18.3.bb      |    3 +
 .../recipes-devtools/dosfstools/dosfstools_2.11.bb |    3 +
 meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb        |    3 +
 .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    3 +
 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +
 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |   10 ++++-
 meta/recipes-devtools/file/file_5.04.bb            |    3 +
 meta/recipes-devtools/flex/flex_2.5.35.bb          |    3 +
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    3 +
 meta/recipes-devtools/gdb/gdb_7.2.bb               |    3 +
 meta/recipes-devtools/genext2fs/genext2fs_1.4.1.bb |    3 +
 meta/recipes-devtools/intltool/intltool_0.40.6.bb  |    3 +
 .../recipes-devtools/libtool/libtool-native_2.4.bb |    3 +
 meta/recipes-devtools/libtool/libtool_2.4.bb       |    3 +
 meta/recipes-devtools/make/make_3.82.bb            |    3 +
 meta/recipes-devtools/nasm/nasm_2.07.bb            |    3 +
 meta/recipes-devtools/patch/patch_2.5.9.bb         |    3 +
 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |    3 +
 .../perl/libxml-parser-perl_2.36.bb                |    3 +
 .../perl/libxml-simple-perl_2.18.bb                |    3 +
 meta/recipes-devtools/perl/perl-native_5.8.8.bb    |    3 +
 meta/recipes-devtools/perl/perl_5.8.8.bb           |    3 +
 meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb  |    3 +
 meta/recipes-devtools/python/python-dbus_0.83.1.bb |    3 +
 meta/recipes-devtools/python/python-gst_0.10.19.bb |    3 +
 .../python/python-imaging_1.1.7.bb                 |    3 +
 .../python/python-pycairo_1.8.10.bb                |    3 +
 .../python/python-pycurl_7.19.0.bb                 |    3 +
 .../python/python-pygobject_2.21.1.bb              |    3 +
 .../recipes-devtools/python/python-pygtk_2.17.0.bb |    3 +
 meta/recipes-devtools/python/python-pyrex_0.9.9.bb |    3 +
 meta/recipes-devtools/python/python-scons_2.0.1.bb |    3 +
 meta/recipes-devtools/python/python_2.6.6.bb       |    3 +
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 +
 meta/recipes-devtools/quilt/quilt-native_0.48.bb   |    3 +
 meta/recipes-devtools/quilt/quilt_0.48.bb          |    3 +
 meta/recipes-devtools/rpm/rpm_5.1.10.bb            |    3 +
 meta/recipes-devtools/rsync/rsync_3.0.7.bb         |    3 +
 meta/recipes-devtools/strace/strace_4.5.20.bb      |    3 +
 meta/recipes-devtools/syslinux/syslinux_4.03.bb    |    3 +
 meta/recipes-devtools/valgrind/valgrind_3.6.0.bb   |    3 +
 meta/recipes-extended/at/at_3.1.12.bb              |    3 +
 meta/recipes-extended/augeas/augeas_0.7.3.bb       |    3 +
 meta/recipes-extended/bash/bash_4.1.bb             |   41 ++++++++++++++++----
 meta/recipes-extended/bc/bc_1.06.bb                |    3 +
 meta/recipes-extended/blktool/blktool_4-6.bb       |   10 ++++-
 meta/recipes-extended/byacc/byacc_20100610.bb      |    4 +-
 meta/recipes-extended/bzip2/bzip2_1.0.6.bb         |    3 +
 meta/recipes-extended/cpio/cpio_2.11.bb            |    4 +-
 meta/recipes-extended/cracklib/cracklib_2.8.18.bb  |    3 +
 meta/recipes-extended/cronie/cronie_1.4.6.bb       |    3 +
 .../cwautomacros/cwautomacros_20090610.bb          |    3 +
 meta/recipes-extended/diffutils/diffutils_2.8.1.bb |    3 +
 meta/recipes-extended/ed/ed_1.5.bb                 |    3 +
 meta/recipes-extended/ethtool/ethtool_2.6.36.bb    |    3 +
 meta/recipes-extended/findutils/findutils_4.4.2.bb |    3 +
 meta/recipes-extended/gamin/gamin_0.1.10.bb        |    3 +
 meta/recipes-extended/gawk/gawk_3.1.8.bb           |    3 +
 meta/recipes-extended/gperf/gperf_3.0.4.bb         |    3 +
 meta/recipes-extended/groff/groff_1.18.1.4.bb      |    3 +
 meta/recipes-extended/gzip/gzip_1.4.bb             |    3 +
 meta/recipes-extended/hdparm/hdparm_6.3.bb         |    3 +
 meta/recipes-extended/iptables/iptables_1.4.9.bb   |    3 +
 meta/recipes-extended/iputils/iputils_s20100418.bb |    3 +
 meta/recipes-extended/less/less_436.bb             |    3 +
 meta/recipes-extended/libaio/libaio_0.3.107.bb     |    3 +
 meta/recipes-extended/libidn/libidn_1.19.bb        |    3 +
 meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb   |    3 +
 meta/recipes-extended/libuser/libuser_0.56.18.bb   |    3 +
 meta/recipes-extended/lighttpd/lighttpd_1.4.28.bb  |    3 +
 meta/recipes-extended/logrotate/logrotate_3.7.9.bb |    3 +
 meta/recipes-extended/lsb/lsb_1.4.bb               |    3 +
 meta/recipes-extended/lsof/lsof_4.84.bb            |    3 +
 meta/recipes-extended/man-pages/man-pages_3.25.bb  |    3 +
 meta/recipes-extended/man/man_1.6e.bb              |    3 +
 meta/recipes-extended/mc/mc_4.7.3.bb               |    3 +
 meta/recipes-extended/mdadm/mdadm_3.1.4.bb         |    3 +
 meta/recipes-extended/mingetty/mingetty_1.08.bb    |    3 +
 meta/recipes-extended/minicom/minicom_2.4.bb       |    6 +-
 meta/recipes-extended/mktemp/mktemp_1.7.bb         |    3 +
 .../net-tools/net-tools_1.60-23.bb                 |   10 ++++-
 meta/recipes-extended/parted/parted_1.9.0.bb       |    3 +
 meta/recipes-extended/pax/pax_3.4.bb               |    3 +
 .../perl/libconvert-asn1-perl_0.21.bb              |    3 +
 meta/recipes-extended/procps/procps_3.2.8.bb       |    3 +
 meta/recipes-extended/psmisc/psmisc_22.2.bb        |    3 +
 meta/recipes-extended/quota/quota_4.00-pre1.bb     |    3 +
 meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb     |    3 +
 meta/recipes-extended/screen/screen_4.0.3.bb       |   10 ++++-
 meta/recipes-extended/sed/sed_4.2.1.bb             |    3 +
 meta/recipes-extended/shadow/shadow_4.1.4.2.bb     |    3 +
 meta/recipes-extended/sysklogd/sysklogd_1.5.bb     |    3 +
 meta/recipes-extended/sysstat/sysstat_9.1.5.bb     |    3 +
 .../tcp-wrappers/tcp-wrappers_7.6.bb               |    3 +
 meta/recipes-extended/time/time_1.7.bb             |    3 +
 meta/recipes-extended/tzdata/tzdata_2010o.bb       |    3 +
 meta/recipes-extended/unzip/unzip_6.0.bb           |    3 +
 meta/recipes-extended/watchdog/watchdog_5.9.bb     |    3 +
 meta/recipes-extended/which/which_2.20.bb          |    3 +
 meta/recipes-extended/xinetd/xinetd_2.3.14.bb      |    3 +
 meta/recipes-extended/xz/xz_5.0.0.bb               |    3 +
 meta/recipes-extended/zip/zip_3.0.bb               |    3 +
 meta/recipes-gnome/gnome/gnome-common_2.28.0.bb    |    3 +
 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb   |    3 +
 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb |    3 +
 .../recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb |    3 +
 meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb   |    3 +
 meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb |    3 +
 meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb       |    3 +
 meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb     |    3 +
 meta/recipes-gnome/gnome/libgdata_0.6.5.bb         |    3 +
 .../recipes-gnome/gnome/libgnome-keyring_2.32.0.bb |    3 +
 meta/recipes-gnome/gnome/metacity_2.22.0.bb        |    3 +
 meta/recipes-gnome/gthumb/gthumb_2.12.0.bb         |    3 +
 meta/recipes-gnome/gtk+/gtk+_2.20.1.bb             |    3 +
 .../gtk-engines/gtk-engines_2.20.2.bb              |    3 +
 meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb        |   30 +++++++++++---
 .../hicolor-icon-theme/hicolor-icon-theme_0.12.bb  |    3 +
 meta/recipes-gnome/libffi/libffi_3.0.9.bb          |    3 +
 meta/recipes-gnome/libglade/libglade_2.6.4.bb      |    3 +
 meta/recipes-gnome/librsvg/librsvg_2.32.0.bb       |    3 +
 meta/recipes-gnome/libunique/libunique_1.1.6.bb    |    3 +
 meta/recipes-graphics/cairo/cairo_1.10.0.bb        |    3 +
 .../fontconfig/fontconfig_2.8.0.bb                 |    3 +
 meta/recipes-graphics/freetype/freetype_2.4.3.bb   |    3 +
 .../libmatchbox/libmatchbox_1.9.bb                 |    3 +
 .../libxsettings-client_0.10.bb                    |    3 +
 .../menu-cache/menu-cache_0.3.2.bb                 |    3 +
 meta/recipes-graphics/pango/pango_1.28.3.bb        |    3 +
 .../startup-notification_0.10.bb                   |    3 +
 meta/recipes-graphics/tslib/tslib_1.0.bb           |    3 +
 .../ttf-fonts/liberation-fonts_1.04.bb             |    3 +
 .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    3 +
 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb      |    3 +
 meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb  |    3 +
 meta/recipes-graphics/xcb/libxcb_1.7.bb            |    3 +
 meta/recipes-graphics/xcb/xcb-proto_1.6.bb         |    3 +
 meta/recipes-graphics/xcb/xcb-util_0.3.6.bb        |    3 +
 .../xcursor-transparent-theme_0.1.1.bb             |    3 +
 meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb  |    3 +
 .../recipes-graphics/xorg-app/mkfontscale_1.0.7.bb |    3 +
 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb    |    3 +
 meta/recipes-graphics/xorg-app/xauth_1.0.5.bb      |    3 +
 meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb   |    3 +
 meta/recipes-graphics/xorg-app/xhost_1.0.3.bb      |    3 +
 meta/recipes-graphics/xorg-app/xinit_1.2.1.bb      |    3 +
 meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb    |    3 +
 meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb    |    3 +
 meta/recipes-graphics/xorg-app/xprop_1.1.0.bb      |    3 +
 meta/recipes-graphics/xorg-app/xset_1.2.1.bb       |    3 +
 meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb     |    3 +
 meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb   |    3 +
 .../xorg-driver/xf86-input-evdev_2.5.0.bb          |    3 +
 .../xorg-driver/xf86-input-keyboard_1.4.0.bb       |    3 +
 .../xorg-driver/xf86-input-mouse_1.6.0.bb          |    3 +
 .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |    3 +
 .../xorg-driver/xf86-input-vmmouse_12.6.10.bb      |    3 +
 .../xorg-driver/xf86-video-vesa_2.3.0.bb           |    3 +
 .../xorg-driver/xf86-video-vmware_11.0.3.bb        |    3 +
 meta/recipes-graphics/xorg-font/encodings_1.0.4.bb |    3 +
 .../recipes-graphics/xorg-font/font-alias_1.0.3.bb |    3 +
 meta/recipes-graphics/xorg-font/font-util_1.2.0.bb |    3 +
 meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb     |    3 +
 meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb |    3 +
 meta/recipes-graphics/xorg-lib/libice_1.0.7.bb     |    3 +
 .../xorg-lib/libpciaccess_0.12.0.bb                |    3 +
 meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    3 +
 meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb     |    3 +
 .../xorg-lib/libxcomposite_0.4.3.bb                |    3 +
 .../recipes-graphics/xorg-lib/libxcursor_1.1.11.bb |    3 +
 meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb |    3 +
 meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb   |    3 +
 meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb    |    3 +
 meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb  |    3 +
 meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb   |    3 +
 .../xorg-lib/libxfontcache_1.0.5.bb                |    3 +
 meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb     |    3 +
 meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb      |    3 +
 .../recipes-graphics/xorg-lib/libxinerama_1.1.1.bb |    3 +
 meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb |    3 +
 meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb     |    3 +
 meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb      |    3 +
 meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb     |    3 +
 .../xorg-lib/libxprintapputil_1.0.1.bb             |    3 +
 .../xorg-lib/libxprintutil_1.0.1.bb                |    3 +
 meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb  |    3 +
 meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb |    3 +
 meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb    |    3 +
 .../xorg-lib/libxscrnsaver_1.2.1.bb                |    3 +
 meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb      |    3 +
 meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb   |    3 +
 meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb    |    3 +
 meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb      |    3 +
 meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb    |    3 +
 .../recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb |    3 +
 .../xorg-lib/libxxf86misc_1.0.2.bb                 |    3 +
 meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb |    3 +
 .../xorg-lib/xkeyboard-config_2.0.bb               |    3 +
 meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb     |    3 +
 .../xorg-proto/bigreqsproto_1.1.0.bb               |    3 +
 .../xorg-proto/compositeproto_0.4.bb               |    3 +
 .../xorg-proto/damageproto_1.2.1.bb                |    3 +
 meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb   |    3 +
 meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb  |    3 +
 meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb  |    3 +
 .../xorg-proto/fixesproto_4.1.2.bb                 |    3 +
 .../xorg-proto/fontcacheproto_0.1.3.bb             |    3 +
 .../xorg-proto/fontsproto_2.1.1.bb                 |    3 +
 meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb |    3 +
 meta/recipes-graphics/xorg-proto/inputproto_2.0.bb |    3 +
 meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb  |    3 +
 .../xorg-proto/printproto_1.0.4.bb                 |    3 +
 .../xorg-proto/randrproto_1.3.2.bb                 |    3 +
 .../xorg-proto/recordproto_1.14.1.bb               |    3 +
 .../xorg-proto/renderproto_0.11.bb                 |    3 +
 .../xorg-proto/resourceproto_1.1.0.bb              |    3 +
 .../xorg-proto/scrnsaverproto_1.2.0.bb             |    3 +
 .../recipes-graphics/xorg-proto/trapproto_3.4.3.bb |    3 +
 .../xorg-proto/videoproto_2.3.1.bb                 |    3 +
 .../xorg-proto/xcmiscproto_1.2.1.bb                |    3 +
 .../recipes-graphics/xorg-proto/xextproto_7.1.2.bb |    3 +
 .../xorg-proto/xf86bigfontproto_1.2.0.bb           |    3 +
 .../xorg-proto/xf86dgaproto_2.1.bb                 |    3 +
 .../xorg-proto/xf86driproto_2.1.0.bb               |    3 +
 .../xorg-proto/xf86miscproto_0.9.3.bb              |    3 +
 .../xorg-proto/xf86rushproto_1.1.2.bb              |    3 +
 .../xorg-proto/xf86vidmodeproto_2.3.bb             |    3 +
 .../xorg-proto/xineramaproto_1.2.bb                |    3 +
 meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb  |    3 +
 .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    3 +
 meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |    3 +
 .../xorg-util/util-macros_1.11.0.bb                |    3 +
 meta/recipes-graphics/xrestop/xrestop_0.4.bb       |    3 +
 meta/recipes-graphics/xtscal/xtscal_0.6.3.bb       |    3 +
 meta/recipes-kernel/kexec/kexec-tools_2.0.2.bb     |    3 +
 meta/recipes-kernel/latencytop/latencytop_0.5.bb   |    3 +
 meta/recipes-kernel/lttng/lttng-control_0.88.bb    |    3 +
 meta/recipes-kernel/lttng/lttng-ust_0.8.bb         |    3 +
 meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb  |    3 +
 .../module-init-tools/module-init-tools_3.12.bb    |    3 +
 meta/recipes-kernel/modutils/modutils_2.4.27.bb    |    3 +
 meta/recipes-kernel/oprofile/oprofile_0.9.6.bb     |    3 +
 meta/recipes-kernel/powertop/powertop_1.13.bb      |    3 +
 meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb    |    3 +
 meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb  |    3 +
 meta/recipes-multimedia/flac/flac_1.2.1.bb         |    3 +
 .../gstreamer/gst-plugins-bad_0.10.20.bb           |    3 +
 .../gstreamer/gst-plugins-base_0.10.30.bb          |    3 +
 .../gstreamer/gst-plugins-good_0.10.25.bb          |    3 +
 .../gstreamer/gstreamer_0.10.30.bb                 |    3 +
 meta/recipes-multimedia/liba52/liba52_0.7.4.bb     |    3 +
 .../libid3tag/libid3tag_0.15.1b.bb                 |    3 +
 meta/recipes-multimedia/libogg/libogg_1.2.1.bb     |    3 +
 meta/recipes-multimedia/libpng/libpng_1.2.44.bb    |    3 +
 .../libsamplerate/libsamplerate0_0.1.2.bb          |    3 +
 .../libsndfile/libsndfile1_1.0.23.bb               |    3 +
 .../libtheora/libtheora_1.1.1.bb                   |    3 +
 meta/recipes-multimedia/libtiff/tiff_3.8.2.bb      |    3 +
 .../libvorbis/libvorbis_1.3.2.bb                   |    3 +
 .../musicbrainz/libmusicbrainz_3.0.3.bb            |    3 +
 .../pulseaudio/libcanberra_0.10.bb                 |    3 +
 .../pulseaudio/pulseaudio_0.9.15.bb                |    3 +
 meta/recipes-multimedia/speex/speex_1.2rc1.bb      |    3 +
 meta/recipes-qt/qt-apps/fotowall_0.9.bb            |    3 +
 meta/recipes-qt/qt-apps/quicky_0.4.bb              |    3 +
 meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb          |    3 +
 meta/recipes-sato/leafpad/leafpad_0.8.17.bb        |    3 +
 meta/recipes-sato/libical/libical_0.46.bb          |    3 +
 .../matchbox-theme-sato/matchbox-theme-sato_0.1.bb |    3 +
 meta/recipes-sato/pcmanfm/pcmanfm_0.9.8.bb         |    3 +
 meta/recipes-sato/pimlico/tasks_0.18.bb            |    3 +
 meta/recipes-sato/puzzles/puzzles_r9023.bb         |    3 +
 .../sato-icon-theme/sato-icon-theme_0.4.1.bb       |    3 +
 meta/recipes-support/apr/apr-util_1.3.4.bb         |    3 +
 meta/recipes-support/apr/apr_1.3.3.bb              |    3 +
 meta/recipes-support/aspell/aspell_0.60.6.bb       |    3 +
 meta/recipes-support/atk/atk_1.32.0.bb             |    3 +
 meta/recipes-support/attr/acl_2.2.49.bb            |    3 +
 meta/recipes-support/attr/attr_2.4.44.bb           |    3 +
 meta/recipes-support/beecrypt/beecrypt_4.1.2.bb    |    3 +
 meta/recipes-support/boost/boost_1.44.0.bb         |    3 +
 .../recipes-support/consolekit/consolekit_0.4.3.bb |    3 +
 meta/recipes-support/curl/curl_7.21.2.bb           |    3 +
 meta/recipes-support/db/db_4.2.52.bb               |    3 +
 meta/recipes-support/enchant/enchant_1.6.0.bb      |    3 +
 meta/recipes-support/gdbm/gdbm_1.8.3.bb            |    3 +
 meta/recipes-support/gmp/gmp_5.0.1.bb              |    3 +
 meta/recipes-support/gnutls/gnutls_2.8.6.bb        |    3 +
 meta/recipes-support/gnutls/libtasn1_2.8.bb        |    3 +
 meta/recipes-support/gpgme/gpgme_1.3.0.bb          |    3 +
 meta/recipes-support/hal/hal-info_20091130.bb      |    3 +
 meta/recipes-support/hal/hal_0.5.14.bb             |    3 +
 meta/recipes-support/icu/icu_3.6.bb                |    3 +
 meta/recipes-support/js/js_1.7.0+1.8.0rc1.bb       |    3 +
 meta/recipes-support/libassuan/libassuan_2.0.1.bb  |    3 +
 meta/recipes-support/libcap/libcap_2.19.bb         |    3 +
 meta/recipes-support/libcheck/libcheck_0.9.8.bb    |    3 +
 meta/recipes-support/libcroco/libcroco_0.6.2.bb    |    3 +
 meta/recipes-support/libdaemon/libdaemon_0.14.bb   |    3 +
 meta/recipes-support/libevent/libevent_1.4.14b.bb  |    3 +
 meta/recipes-support/libexif/libexif_0.6.16.bb     |    3 +
 meta/recipes-support/libfm/libfm_0.1.14.bb         |    3 +
 meta/recipes-support/libgcrypt/libgcrypt_1.4.6.bb  |    3 +
 .../libgpg-error/libgpg-error_1.9.bb               |    3 +
 meta/recipes-support/libmpc/libmpc_0.8.2.bb        |    6 +-
 meta/recipes-support/libnl/libnl_2.0.bb            |    3 +
 meta/recipes-support/liboil/liboil_0.3.17.bb       |    3 +
 meta/recipes-support/libpcre/libpcre_8.10.bb       |    3 +
 meta/recipes-support/libproxy/libproxy_0.4.6.bb    |    3 +
 meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb |    3 +
 meta/recipes-support/libsoup/libsoup_2.2.100.bb    |    3 +
 meta/recipes-support/liburcu/liburcu_0.4.8.bb      |    3 +
 meta/recipes-support/libusb/libusb-compat_0.1.3.bb |    3 +
 meta/recipes-support/libusb/libusb1_1.0.8.bb       |    3 +
 meta/recipes-support/libxslt/libxslt_1.1.26.bb     |    3 +
 meta/recipes-support/lzo/lzo_2.03.bb               |    3 +
 meta/recipes-support/mpfr/mpfr_3.0.0.bb            |    3 +
 meta/recipes-support/neon/neon_0.29.5.bb           |    3 +
 meta/recipes-support/popt/popt_1.16.bb             |    3 +
 meta/recipes-support/pth/pth_2.0.7.bb              |    3 +
 .../shared-mime-info/shared-mime-info_0.80.bb      |    3 +
 meta/recipes-support/sqlite/sqlite3_3.7.3.bb       |    3 +
 meta/recipes-support/taglib/taglib_1.6.3.bb        |    3 +
 meta/recipes-support/vte/vte_0.24.3.bb             |    3 +
 388 files changed, 1239 insertions(+), 36 deletions(-)


