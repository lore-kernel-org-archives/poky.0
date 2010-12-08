Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE1B24C81242
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 00:13:49 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 22:13:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="866217397"
Received: from unknown (HELO localhost) ([10.255.13.198])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 22:13:48 -0800
Message-Id: <eb46a62b7436198dba539a3ec6017d715bbca55e.1291874416.git.sgw@linux.intel.com>
In-Reply-To: <cover.1291874416.git.sgw@linux.intel.com>
References: <cover.1291874416.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Date: Tue, 7 Dec 2010 20:06:29 -0800
To: poky@yoctoproject.org
X-Mailman-Approved-At: Thu, 09 Dec 2010 00:15:20 -0600
Subject: [PATCH 1/1] SRC_URI Checksums Additionals
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
X-List-Received-Date: Thu, 09 Dec 2010 06:13:52 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
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

diff --git a/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb b/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
index 066fe3f..d0e14a5 100644
--- a/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
+++ b/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
@@ -10,6 +10,9 @@ inherit autotools pkgconfig
 SRC_URI = "https://launchpad.net/~gma500/+archive/ppa/+files/libdrm-poulsbo_2.3.0-1ubuntu0sarvatt4~1004um1ubuntu1.tar.gz \
 	file://libdrm-poulsbo.patch"
 
+SRC_URI[md5sum] = "82c00bb9f1239f1d00b18411b89c2380"
+SRC_URI[sha256sum] = "335d4ac6694687475efe07b44a2d77a9a9fadcbc16946d01ea8a02339ae7d9ec"
+
 do_configure_prepend() {
 	sed -e 's/-ldrm/-ldrm_poulsbo/' -e 's/libdrm/libdrm_poulsbo/' \
 	    < ${S}/libdrm.pc.in > ${S}/libdrm_poulsbo.pc.in
diff --git a/meta/recipes-bsp/acpid/acpid_1.0.10.bb b/meta/recipes-bsp/acpid/acpid_1.0.10.bb
index ab4b582..2dd4fbd 100644
--- a/meta/recipes-bsp/acpid/acpid_1.0.10.bb
+++ b/meta/recipes-bsp/acpid/acpid_1.0.10.bb
@@ -4,3 +4,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b \
                     file://acpid.h;endline=24;md5=324a9cf225ae69ddaad1bf9d942115b5"
 
 PR = "r0"
+
+SRC_URI[md5sum] = "61156ef32015c56dc0f2e3317f4ae09e"
+SRC_URI[sha256sum] = "22703ce0dd7305aca01bc9ac741659c32b1593f1d6fde492df7f01067a534760"
diff --git a/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb b/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb
index 4cbb360..5f6fce4 100644
--- a/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb
+++ b/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb
@@ -10,8 +10,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 DEPENDS = "libtool-cross"
 PR = "r1"
 
-SRC_URI = "${DEBIAN_MIRROR}/main/a/apmd/apmd_3.2.2.orig.tar.gz \
-           ${DEBIAN_MIRROR}/main/a/apmd/apmd_${PV}.diff.gz \
+SRC_URI = "${DEBIAN_MIRROR}/main/a/apmd/apmd_3.2.2.orig.tar.gz;name=tarball \
+           ${DEBIAN_MIRROR}/main/a/apmd/apmd_${PV}.diff.gz;name=patch \
            file://libtool.patch \
            file://unlinux.patch \
            file://init \
@@ -19,6 +19,12 @@ SRC_URI = "${DEBIAN_MIRROR}/main/a/apmd/apmd_3.2.2.orig.tar.gz \
            file://apmd_proxy \
            file://apmd_proxy.conf"
 
+SRC_URI[tarball.md5sum] = "b1e6309e8331e0f4e6efd311c2d97fa8"
+SRC_URI[tarball.sha256sum] = "7f7d9f60b7766b852881d40b8ff91d8e39fccb0d1d913102a5c75a2dbb52332d"
+
+SRC_URI[patch.md5sum] = "57e1b689264ea80f78353519eece0c92"
+SRC_URI[patch.sha256sum] = "7905ff96be93d725544d0040e425c42f9c05580db3c272f11cff75b9aa89d430"
+
 S = "${WORKDIR}/apmd-3.2.2.orig"
 
 inherit update-rc.d
diff --git a/meta/recipes-bsp/grub/grub_0.97.bb b/meta/recipes-bsp/grub/grub_0.97.bb
index d1eb645..503dac0 100644
--- a/meta/recipes-bsp/grub/grub_0.97.bb
+++ b/meta/recipes-bsp/grub/grub_0.97.bb
@@ -16,6 +16,9 @@ PR = "r2"
 SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz; \
 	   file://autohell.patch;apply=yes "
 
+SRC_URI[md5sum] = "cd3f3eb54446be6003156158d51f4884"
+SRC_URI[sha256sum] = "4e1d15d12dbd3e9208111d6b806ad5a9857ca8850c47877d36575b904559260b"
+
 inherit autotools
 
 python __anonymous () {
diff --git a/meta/recipes-bsp/hostap/hostap-utils_0.4.7.bb b/meta/recipes-bsp/hostap/hostap-utils_0.4.7.bb
index 9fe362b..7b224a8 100644
--- a/meta/recipes-bsp/hostap/hostap-utils_0.4.7.bb
+++ b/meta/recipes-bsp/hostap/hostap-utils_0.4.7.bb
@@ -1 +1,4 @@
 require hostap-utils.inc
+
+SRC_URI[md5sum] = "afe041581b8f01666e353bec20917c85"
+SRC_URI[sha256sum] = "c6f598d8e356c1620fa009eca0a700bf1105e16817eefd77d891994261009355"
diff --git a/meta/recipes-bsp/libacpi/libacpi_0.2.bb b/meta/recipes-bsp/libacpi/libacpi_0.2.bb
index 809e9a6..83d7cba 100644
--- a/meta/recipes-bsp/libacpi/libacpi_0.2.bb
+++ b/meta/recipes-bsp/libacpi/libacpi_0.2.bb
@@ -10,6 +10,9 @@ PR = "r1"
 SRC_URI = "http://www.ngolde.de/download/libacpi-${PV}.tar.gz \
 	   file://makefile-fix.patch;patch=1 "
 
+SRC_URI[md5sum] = "05b53dd7bead66dda35fec502b91066c"
+SRC_URI[sha256sum] = "13086e31d428b9c125954d48ac497b754bbbce2ef34ea29ecd903e82e25bad29"
+
 PACKAGES += "${PN}-bin"
 
 FILES_${PN} = "${libdir}/libacpi.so.*"
diff --git a/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb b/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb
index 4367a9f..6d08084 100644
--- a/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb
+++ b/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb
@@ -18,6 +18,9 @@ SRC_URI = "http://www.ohse.de/uwe/releases/lrzsz-${PV}.tar.gz \
 	   file://makefile.patch;patch=1 \
 	   file://gettext.patch;patch=1"
 
+SRC_URI[md5sum] = "b5ce6a74abc9b9eb2af94dffdfd372a4"
+SRC_URI[sha256sum] = "c28b36b14bddb014d9e9c97c52459852f97bd405f89113f30bee45ed92728ff1"
+
 inherit autotools gettext
 
 do_install() {
diff --git a/meta/recipes-bsp/pciutils/pciutils_3.1.7.bb b/meta/recipes-bsp/pciutils/pciutils_3.1.7.bb
index 4d75b48..a48a293 100644
--- a/meta/recipes-bsp/pciutils/pciutils_3.1.7.bb
+++ b/meta/recipes-bsp/pciutils/pciutils_3.1.7.bb
@@ -17,6 +17,9 @@ SRC_URI = "ftp://ftp.kernel.org/pub/software/utils/pciutils/pciutils-${PV}.tar.b
            file://lib-build-fix.patch \
            file://guess-fix.patch"
 
+SRC_URI[md5sum] = "35222edb86b50a6641352c66fe829b2e"
+SRC_URI[sha256sum] = "d8fe23b6966c1abf29b3b38b08b0cf33f731cd6e6a89d9b8d2b8d5e982c3f544"
+
 PARALLEL_MAKE = ""
 
 PCI_CONF_FLAG = "ZLIB=yes DNS=yes SHARED=yes"
diff --git a/meta/recipes-bsp/pcmciautils/pcmciautils_017.bb b/meta/recipes-bsp/pcmciautils/pcmciautils_017.bb
index 109b17d..ff67f7b 100644
--- a/meta/recipes-bsp/pcmciautils/pcmciautils_017.bb
+++ b/meta/recipes-bsp/pcmciautils/pcmciautils_017.bb
@@ -5,5 +5,8 @@ PR = "r0"
 SRC_URI += "file://makefile_fix.patch \
             file://version_workaround.patch"
 
+SRC_URI[md5sum] = "5245af28eeba57ec0606a874d44d10f7"
+SRC_URI[sha256sum] = "2045f0e8f837f44aed72ac91c1a8cf3b899caf098a25d04f47982be6386bd4e1"
+
 FILES_${PN}-dbg += "${libdir}/udev/.debug"
 FILES_${PN} += "${libdir}/udev"
diff --git a/meta/recipes-bsp/setserial/setserial_2.17.bb b/meta/recipes-bsp/setserial/setserial_2.17.bb
index f46b60e..a2fd24b 100644
--- a/meta/recipes-bsp/setserial/setserial_2.17.bb
+++ b/meta/recipes-bsp/setserial/setserial_2.17.bb
@@ -15,6 +15,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/setserial/${PN}-${PV}.tar.gz \
            file://add_stdlib.patch \
           "
 
+SRC_URI[md5sum] = "c4867d72c41564318e0107745eb7a0f2"
+SRC_URI[sha256sum] = "7e4487d320ac31558563424189435d396ddf77953bb23111a17a3d1487b5794a"
+
 do_install() {
     install -d ${D}${bindir}
     install -d ${D}${mandir}/man8
diff --git a/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb b/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb
index 895763b..822acb6 100644
--- a/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb
+++ b/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb
@@ -7,6 +7,9 @@ PR = "r1"
 
 SRC_URI = "ftp://ftp.denx.de/pub/u-boot/u-boot-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "cd4788ea1c6ac4f9b100b888a1063a6b"
+SRC_URI[sha256sum] = "858fd04efd5b98e99fd1a074998b1a8ac5fbd07b176de1d20d8eb148492d949d"
+
 S = "${WORKDIR}/u-boot-${PV}"
 
 EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX}"
diff --git a/meta/recipes-bsp/usbutils/usbutils_0.86.bb b/meta/recipes-bsp/usbutils/usbutils_0.86.bb
index 18f2275..4e8d0b3 100644
--- a/meta/recipes-bsp/usbutils/usbutils_0.86.bb
+++ b/meta/recipes-bsp/usbutils/usbutils_0.86.bb
@@ -13,6 +13,9 @@ PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/linux-usb/usbutils-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "34979f675d2bcb3e1b45012fa830a53f"
+SRC_URI[sha256sum] = "b3b2bea6d2cd87660c8201a47071bf2a9889d8ed90c7203cc768b597799c12f4"
+
 inherit autotools
 
 do_install_append() {
diff --git a/meta/recipes-bsp/v86d/v86d_0.1.9.bb b/meta/recipes-bsp/v86d/v86d_0.1.9.bb
index 30d9f95..808dd4e 100644
--- a/meta/recipes-bsp/v86d/v86d_0.1.9.bb
+++ b/meta/recipes-bsp/v86d/v86d_0.1.9.bb
@@ -12,6 +12,9 @@ PR = "r0"
 SRC_URI = "http://dev.gentoo.org/~spock/projects/uvesafb/archive/v86d-${PV}.tar.bz2 \
            file://fbsetup"
 
+SRC_URI[md5sum] = "ebbbc8e7013c9544b6ba6981add43831"
+SRC_URI[sha256sum] = "8167dec4ff919cfd73f854bbd3244f05c2b867e014fa8298044ea7cfd66d18a8"
+
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 COMPATIBLE_MACHINE = "(qemux86|bootcdx86)"
 
diff --git a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
index 736c615..b2e9efb 100644
--- a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
+++ b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
@@ -14,3 +14,6 @@ EXTRA_OECONF += "--disable-gtk3"
 FILES_avahi-autoipd = "${sbindir}/avahi-autoipd \
                        ${sysconfdir}/avahi/avahi-autoipd.action \
 		       ${sysconfdir}/dhcp3/*/avahi-autoipd"
+
+SRC_URI[md5sum] = "d0143a5aa3265019072e53ab497818d0"
+SRC_URI[sha256sum] = "a0d80aac88212b9f9d5331c248091d3c9c9209f0e41985421636ebd14230fc91"
diff --git a/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb b/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
index d974dc5..7291548 100644
--- a/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
+++ b/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
@@ -11,6 +11,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
 PR = "r0"
 
 SRC_URI = "http://bluez.sourceforge.net/download/bluez-hcidump-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "5704737aaf72104eeaf77335218a1827"
+SRC_URI[sha256sum] = "689e39f9432ab90af5f390d86cb46e06c35693d01ea29aec4e41c4f9e315f49f"
 S = "${WORKDIR}/bluez-hcidump-${PV}"
 
 EXTRA_OECONF = "--with-bluez-libs=${STAGING_LIBDIR} --with-bluez-includes=${STAGING_INCDIR}"
diff --git a/meta/recipes-connectivity/bluez/bluez4_4.79.bb b/meta/recipes-connectivity/bluez/bluez4_4.79.bb
index 4c6593d..54b9fc1 100644
--- a/meta/recipes-connectivity/bluez/bluez4_4.79.bb
+++ b/meta/recipes-connectivity/bluez/bluez4_4.79.bb
@@ -24,6 +24,9 @@ SRC_URI = "\
   file://sbc-thumb.patch;patch=1 \
   file://bluetooth.conf \
 "
+
+SRC_URI[md5sum] = "b3afea97981c1c6be04438930c57d891"
+SRC_URI[sha256sum] = "1b486824e486e7a7a17ebcbce99a417e724f42ebb17f9fe574bc4737fda6b7db"
 S = "${WORKDIR}/bluez-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
index 7660048..4729c5d 100644
--- a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
+++ b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://www.kernel.org/pub/linux/network/connman/connman-gnome-${PV}.t
            file://connman-gnome.patch \
            file://connman-applet.desktop"
 
+SRC_URI[md5sum] = "0e1c4c25d19cad9b08a216848a320716"
+SRC_URI[sha256sum] = "4d5fe481b444fc3e64fd9caa149dbcd76de166a25733f18fd93da01d2abf5d1c"
+
 inherit autotools gtk-icon-cache
 
 do_install_append() {
diff --git a/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb b/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
index 99920be..c273b2c 100644
--- a/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
+++ b/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
@@ -7,3 +7,6 @@ SRC_URI += "file://fixincludes.patch \
             file://fix-client-path.patch \
             file://fix-external-bind.patch \
            "
+
+SRC_URI[md5sum] = "83abd7c4f9c24d8dd024ca5a71380c0a"
+SRC_URI[sha256sum] = "6260d43423e4c406ba63cd7199502a395e952b13c80a955026c4b82a4e9d4943"
diff --git a/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb b/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
index 69627ae..0b8f51e 100644
--- a/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
+++ b/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
@@ -7,6 +7,9 @@ DEPENDS =       "gettext libgalago dbus glib-2.0"
 
 SRC_URI =       "http://www.galago-project.org/files/releases/source/${PN}/${P}.tar.gz "
 
+SRC_URI[md5sum] = "fdb81f938f86f380b127158ebb542279"
+SRC_URI[sha256sum] = "db42a0d1d0f8b069ea5ac1203207f9178f25ac1367f4910bd48547f5be1db4c2"
+
 EXTRA_OECONF =	"--disable-binreloc --disable-check --disable-tests"
 
 FILES_${PN} += "${datadir}/dbus-1/services/"
diff --git a/meta/recipes-connectivity/galago/libgalago_0.5.2.bb b/meta/recipes-connectivity/galago/libgalago_0.5.2.bb
index f9bb7b3..0693ff6 100644
--- a/meta/recipes-connectivity/galago/libgalago_0.5.2.bb
+++ b/meta/recipes-connectivity/galago/libgalago_0.5.2.bb
@@ -10,6 +10,9 @@ DEPENDS = 	"gettext dbus glib-2.0 dbus-glib"
 SRC_URI =	"http://www.galago-project.org/files/releases/source/${PN}/${P}.tar.gz \
                  file://mkdir.patch;patch=1 \
                  file://pkgconfig.patch;patch=1 "
+
+SRC_URI[md5sum] = "7ec92f2ecba1309ac4b71b4b4d8d0a0d"
+SRC_URI[sha256sum] = "9b7c9845e2f661dbf5c2595e67bc7afd48f090ac2c033726c89d7f0e90791dfa"
 PR = "r2"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb b/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
index 09bcc38..7755208 100644
--- a/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
+++ b/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
@@ -7,6 +7,9 @@ DEPENDS = "glib-2.0 libsoup-2.4 libglade"
 SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz \
            file://introspection.patch"
 
+SRC_URI[md5sum] = "725c32e8f92a072cc34f0e091937df2a"
+SRC_URI[sha256sum] = "8eaab799f699836770ec2fcc08abfef2f824a82ae959c6af7b39ffb6968b9fd7"
+
 inherit autotools pkgconfig
 
 PACKAGES =+ "gssdp-tools"
diff --git a/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
index 2fa2f7b..9beb46e 100644
--- a/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
+++ b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
@@ -7,6 +7,10 @@ DEPENDS = "e2fsprogs gssdp libsoup-2.4 libxml2 gnome-icon-theme"
 
 SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz \
            file://introspection.patch"
+
+SRC_URI[md5sum] = "8598922256faa5adb28657d0c10a3e3e"
+SRC_URI[sha256sum] = "6ac13efe46c6f1e5d05e48e1041bf37dfa702839ce5fbb01e0f314f3904b6a16"
+
 PR = "r0"
 
 EXTRA_OECONF = "--disable-introspection"
@@ -23,5 +27,3 @@ gupnp_sysroot_preprocess () {
 	install -m 755 ${D}${bindir}/gupnp-binding-tool ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
 }
 
-SRC_URI[md5sum] = "8598922256faa5adb28657d0c10a3e3e"
-SRC_URI[sha256sum] = "6ac13efe46c6f1e5d05e48e1041bf37dfa702839ce5fbb01e0f314f3904b6a16"
diff --git a/meta/recipes-connectivity/iproute2/iproute2_2.6.35.bb b/meta/recipes-connectivity/iproute2/iproute2_2.6.35.bb
index c5e0ef6..93ae06c 100644
--- a/meta/recipes-connectivity/iproute2/iproute2_2.6.35.bb
+++ b/meta/recipes-connectivity/iproute2/iproute2_2.6.35.bb
@@ -4,3 +4,6 @@ PR = "r0"
 
 SRC_URI = "http://developer.osdl.org/dev/iproute2/download/${P}.tar.bz2 \
 	   file://configure-cross.patch"
+
+SRC_URI[md5sum] = "b0f281b3124bf04669e18f5fe16d4934"
+SRC_URI[sha256sum] = "8ab2f47e129925fb8acb09421008d07aeafa01b2ddd1fcba4a056de079f090a3"
diff --git a/meta/recipes-connectivity/irda-utils/irda-utils_0.9.18.bb b/meta/recipes-connectivity/irda-utils/irda-utils_0.9.18.bb
index cb55cec..a000a78 100644
--- a/meta/recipes-connectivity/irda-utils/irda-utils_0.9.18.bb
+++ b/meta/recipes-connectivity/irda-utils/irda-utils_0.9.18.bb
@@ -15,6 +15,9 @@ PR = "r0"
 SRC_URI = "${SOURCEFORGE_MIRROR}/irda/irda-utils-${PV}.tar.gz \
           file://init"
 
+SRC_URI[md5sum] = "84dc12aa4c3f61fccb8d8919bf4079bb"
+SRC_URI[sha256sum] = "61980551e46b2eaa9e17ad31cbc1a638074611fc33bff34163d10c7a67a9fdc6"
+
 export SYS_INCLUDES="-I${STAGING_INCDIR}"
 
 inherit autotools
diff --git a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
index 64968e7..0cdb057 100644
--- a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
+++ b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
@@ -11,6 +11,9 @@ RDEPENDS = "avahi-daemon"
 PR = "r1"
 
 SRC_URI = "http://0pointer.de/lennart/projects/nss-mdns/nss-mdns-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "03938f17646efbb50aa70ba5f99f51d7"
+SRC_URI[sha256sum] = "1e683c2e7c3921814706d62fbbd3e9cbf493a75fa00255e0e715508d8134fa6d"
 S = "${WORKDIR}/nss-mdns-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-connectivity/libpcap/libpcap_1.1.1.bb b/meta/recipes-connectivity/libpcap/libpcap_1.1.1.bb
index 58ab5e6..de04290 100644
--- a/meta/recipes-connectivity/libpcap/libpcap_1.1.1.bb
+++ b/meta/recipes-connectivity/libpcap/libpcap_1.1.1.bb
@@ -5,6 +5,9 @@ PR = "r0"
 SRC_URI += "file://aclocal.patch \
             file://ieee80215-arphrd.patch"
 
+SRC_URI[md5sum] = "1bca27d206970badae248cfa471bbb47"
+SRC_URI[sha256sum] = "508cca15547e55d1318498b838456a21770c450beb2dc7d7d4a96d90816e5a85"
+
 #
 # make install doesn't cover the shared lib
 # make install-shared is just broken (no symlinks)
diff --git a/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.23.bb b/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.23.bb
index c6b02fe..3077ea2 100644
--- a/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.23.bb
+++ b/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.23.bb
@@ -8,6 +8,9 @@ PR = "r0"
 
 SRC_URI = "http://www.citi.umich.edu/projects/nfsv4/linux/libnfsidmap/${BPN}-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "28f3ece648c1dc5d25e8d623d55f8bd6"
+SRC_URI[sha256sum] = "69d20cfc6be6bf7ede2a55da687dc6853f2db6c8ef826a0b5e3235e7d46f4051"
+
 inherit autotools
 
 EXTRA_OECONF = "--disable-ldap"
diff --git a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
index 4056dda..d86bd0f 100644
--- a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
+++ b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
@@ -19,6 +19,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/nfs/nfs-utils-${PV}.tar.bz2 \
            file://nfs-utils-1.0.6-uclibc.patch \
            file://nfsserver"
 
+SRC_URI[md5sum] = "1131dc5f27c4f3905a6e7ee0d594fd4d"
+SRC_URI[sha256sum] = "5575ece941097cbfa67fbe0d220dfa11b73f5e6d991e7939c9339bd72259ff19"
+
 PARALLEL_MAKE = ""
 
 # Only kernel-module-nfsd is required here (but can be built-in)  - the nfsd module will
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
index fe02272..42888f6 100644
--- a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
+++ b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
@@ -22,6 +22,9 @@ SRC_URI += "file://debian/ca.patch \
             file://debian/version-script.patch \
             file://debian/perl-path.diff"
 
+SRC_URI[md5sum] = "7f24047f70364c9eabc94899e356ce39"
+SRC_URI[sha256sum] = "b2645e2a2af221fa230b5ef6aa2b9388a875801b74cbddbb16be557f80f45242"
+
 SRC_URI += "file://configure-targets.patch \
             file://shared-libs.patch"
 
diff --git a/meta/recipes-connectivity/portmap/portmap_6.0.bb b/meta/recipes-connectivity/portmap/portmap_6.0.bb
index 49ac1d8..07aa360 100644
--- a/meta/recipes-connectivity/portmap/portmap_6.0.bb
+++ b/meta/recipes-connectivity/portmap/portmap_6.0.bb
@@ -8,6 +8,9 @@ SRC_URI = "http://www.sourcefiles.org/Networking/Tools/Miscellanenous/portmap-6.
            file://tcpd-config.patch \
            file://portmap.init"
 
+SRC_URI[md5sum] = "ac108ab68bf0f34477f8317791aaf1ff"
+SRC_URI[sha256sum] = "02c820d39f3e6e729d1bea3287a2d8a6c684f1006fb9612f97dcad4a281d41de"
+
 S = "${WORKDIR}/${BPN}_${PV}/"
 
 CPPFLAGS += "-DFACILITY=LOG_DAEMON -DENABLE_DNS -DHOSTS_ACCESS"
diff --git a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
index 3e9ce53..bbbcb32 100644
--- a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
+++ b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
@@ -26,6 +26,9 @@ SRC_URI = "http://ppp.samba.org/ftp/ppp/ppp-${PV}.tar.gz \
            file://08setupdns \
            file://92removedns"
 
+SRC_URI[md5sum] = "4621bc56167b6953ec4071043fe0ec57"
+SRC_URI[sha256sum] = "43317afec9299f9920b96f840414c977f0385410202d48e56d2fdb8230003505"
+
 SRC_URI_append_nylon = " file://ppp-tdbread.patch;patch=1"
 
 inherit autotools
diff --git a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
index ad754a7..16d88dc 100644
--- a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
+++ b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
@@ -15,6 +15,9 @@ PR = "r1"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/r/resolvconf/resolvconf_${PV}.tar.gz"
 
+SRC_URI[md5sum] = "15faef2aba7b99782f3b0b8b5d30f80a"
+SRC_URI[sha256sum] = "17e1105cddd928adf7d47e050f9bb49557850687f800b3e24cbbf22933ff31ae"
+
 do_compile () {
 	:
 }
diff --git a/meta/recipes-connectivity/telepathy/libtelepathy_0.3.3.bb b/meta/recipes-connectivity/telepathy/libtelepathy_0.3.3.bb
index 178bf34..b2b9e75 100644
--- a/meta/recipes-connectivity/telepathy/libtelepathy_0.3.3.bb
+++ b/meta/recipes-connectivity/telepathy/libtelepathy_0.3.3.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://telepathy.freedesktop.org/releases/libtelepathy/libtelepathy-$
            file://prefer_python_2.5.patch;patch=1 \
            file://doublefix.patch;patch=1"
 
+SRC_URI[md5sum] = "490ca1a0c614d4466394b72d43bf7370"
+SRC_URI[sha256sum] = "e0d230be855125163579743418203c6f6be2f10f98c4f065735c1dc9ed115878"
+
 inherit autotools pkgconfig
 
 FILES_${PN} += "${datadir}/telepathy \
diff --git a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
index 5dfad9f..17b6f86 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
@@ -7,6 +7,9 @@ PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/telepathy-glib/${P}.tar.gz"
 
+SRC_URI[md5sum] = "178de3965614a3a59123e33ec1b1e8a6"
+SRC_URI[sha256sum] = "ad6e12a062c8ebe1f1fd20065acc214b9395b3d766bf2a122b12c5f811007735"
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=e413d83db6ee8f2c8e6055719096a48e"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
index 0e7f4b7..f522252 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
@@ -9,6 +9,9 @@ PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz"
 
+SRC_URI[md5sum] = "0efe17425cdc3490714947ff68003bf6"
+SRC_URI[sha256sum] = "fc05a1780499eab3b168b1826e2fe18dbe4bea3576ea0ff2b548b063336c61f5"
+
 inherit autotools pkgconfig
 
 FILES_${PN} += "${datadir}/telepathy \
diff --git a/meta/recipes-connectivity/wireless-tools/wireless-tools_29.bb b/meta/recipes-connectivity/wireless-tools/wireless-tools_29.bb
index 6bb1193..70bf91b 100644
--- a/meta/recipes-connectivity/wireless-tools/wireless-tools_29.bb
+++ b/meta/recipes-connectivity/wireless-tools/wireless-tools_29.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_tools.2
            file://man.patch;apply=yes \
 	   file://wireless-tools.if-pre-up \
 	   file://zzz-wireless.if-pre-up"
+
+SRC_URI[md5sum] = "e06c222e186f7cc013fd272d023710cb"
+SRC_URI[sha256sum] = "6fb80935fe208538131ce2c4178221bab1078a1656306bce8909c19887e2e5a1"
 S = "${WORKDIR}/wireless_tools.29"
 
 CFLAGS =+ "-I${S}"
diff --git a/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb b/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb
index 8bcd476..8e854c1 100644
--- a/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb
+++ b/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb
@@ -22,6 +22,9 @@ SRC_URI = "http://www.progsoc.org/~wildfire/zeroconf/download/${PN}-${PV}.tar.gz
            file://zeroconf-default \
            file://debian-zeroconf"
 
+SRC_URI[md5sum] = "bdafb16b008ebb5633e4e581f77821d2"
+SRC_URI[sha256sum] = "a8c74df127753e2310fa1e072f3c9ca44a404bb0bbce9cfec7a84c6dff8bec7b"
+
 do_install () {
 	install -d ${D}${sbindir}
 	install -d ${D}${sysconfdir}/network/if-up.d
diff --git a/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb b/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb
index c6c6260..b826367 100644
--- a/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb
+++ b/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb
@@ -9,6 +9,9 @@ SRC_URI = "${DEBIAN_MIRROR}/main/b/base-passwd/base-passwd_${PV}.tar.gz \
            file://nobash.patch \
            file://root-home.patch"
 
+SRC_URI[md5sum] = "47f22ab6b572d0133409ff6ad1fab402"
+SRC_URI[sha256sum] = "d34acb35a9f9f221e7e4f642b9ef4b22083dd77bb2fc7216756f445316d842fc"
+
 S = "${WORKDIR}/base-passwd"
 
 inherit autotools
diff --git a/meta/recipes-core/busybox/busybox_1.17.3.bb b/meta/recipes-core/busybox/busybox_1.17.3.bb
index 473eabf..9ecb36d 100644
--- a/meta/recipes-core/busybox/busybox_1.17.3.bb
+++ b/meta/recipes-core/busybox/busybox_1.17.3.bb
@@ -22,4 +22,7 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://umount.busybox \
            file://defconfig"
 
+SRC_URI[tarball.md5sum] = "a2ce1a951571da8c6e0eaf75b1acef60"
+SRC_URI[tarball.sha256sum] = "de2f0274f61a068d75ad33861e0982e99c6b625681460ce420222371c3511ff2"
+
 EXTRA_OEMAKE += "V=1 ARCH=${TARGET_ARCH} CROSS_COMPILE=${TARGET_PREFIX}"
diff --git a/meta/recipes-core/console-tools/console-tools_0.3.2.bb b/meta/recipes-core/console-tools/console-tools_0.3.2.bb
index 907bf27..c2146e4 100644
--- a/meta/recipes-core/console-tools/console-tools_0.3.2.bb
+++ b/meta/recipes-core/console-tools/console-tools_0.3.2.bb
@@ -14,6 +14,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/lct/console-tools-${PV}.tar.gz \
            file://uclibc-fileno.patch;patch=1 \
            file://config/*.m4"
 
+SRC_URI[md5sum] = "bf21564fc38b3af853ef724babddbacd"
+SRC_URI[sha256sum] = "eea6b441672dacd251079fc85ed322e196282e0e66c16303ec64c3a2b1c126c2"
+
 export SUBDIRS = "fontfiletools vttools kbdtools screenfonttools contrib \
 		  examples po intl compat"
 
diff --git a/meta/recipes-core/coreutils/coreutils_8.5.bb b/meta/recipes-core/coreutils/coreutils_8.5.bb
index d8d5904..3944e34 100644
--- a/meta/recipes-core/coreutils/coreutils_8.5.bb
+++ b/meta/recipes-core/coreutils/coreutils_8.5.bb
@@ -14,6 +14,9 @@ inherit autotools gettext
 
 SRC_URI = "http://ftp.gnu.org/gnu/coreutils/${BP}.tar.gz"
 
+SRC_URI[md5sum] = "c1ffe586d001e87d66cd80c4536ee823"
+SRC_URI[sha256sum] = "dd243e2ac7d0ed203b170ecfb8299643779e7501fec2b45ae1cea8a450fa8ca0"
+
 # [ gets a special treatment and is not included in this
 bindir_progs = "base64 basename chcon cksum comm csplit cut dir dircolors dirname du \
                 env expand expr factor fmt fold groups head hostid id install \
diff --git a/meta/recipes-core/dbus/dbus-glib_0.88.bb b/meta/recipes-core/dbus/dbus-glib_0.88.bb
index 000146a..64f0830 100644
--- a/meta/recipes-core/dbus/dbus-glib_0.88.bb
+++ b/meta/recipes-core/dbus/dbus-glib_0.88.bb
@@ -1,3 +1,6 @@
 require dbus-glib.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "7c04ba01df6130c2c4e62f73bea0d0d5"
+SRC_URI[sha256sum] = "57939e2b567940beb23a52b5f3075743bd25ab203428e1c86f8c773330565737"
diff --git a/meta/recipes-core/dbus/dbus_1.4.0.bb b/meta/recipes-core/dbus/dbus_1.4.0.bb
index f331b14..a666336 100644
--- a/meta/recipes-core/dbus/dbus_1.4.0.bb
+++ b/meta/recipes-core/dbus/dbus_1.4.0.bb
@@ -1,3 +1,6 @@
 include dbus.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "f59618b18d2fb2bd1fce9e1c5a2a3282"
+SRC_URI[sha256sum] = "c96d2f86d40e158e2bf405925a0a42cce0533a8466098e2f2238aa1614926652"
diff --git a/meta/recipes-core/eggdbus/eggdbus_0.6.bb b/meta/recipes-core/eggdbus/eggdbus_0.6.bb
index acb0b15..99915f0 100644
--- a/meta/recipes-core/eggdbus/eggdbus_0.6.bb
+++ b/meta/recipes-core/eggdbus/eggdbus_0.6.bb
@@ -17,6 +17,9 @@ SRC_URI = "${BASE_SRC_URI} \
            file://marshal.patch;apply=yes \
           "
 
+SRC_URI[md5sum] = "0a111faa54dfba2cf432c2c8e8a76e06"
+SRC_URI[sha256sum] = "3ad26e271c1a879bafcd181e065fe0ed53b542299a773c3188c9edb25b895ed1"
+
 SRC_URI_virtclass-native = "${BASE_SRC_URI}"
 
 inherit autotools
diff --git a/meta/recipes-core/expat/expat_2.0.1.bb b/meta/recipes-core/expat/expat_2.0.1.bb
index d6101ac..a675922 100644
--- a/meta/recipes-core/expat/expat_2.0.1.bb
+++ b/meta/recipes-core/expat/expat_2.0.1.bb
@@ -1,3 +1,6 @@
 require expat.inc
 LIC_FILES_CHKSUM = "file://COPYING;md5=1b71f681713d1256e1c23b0890920874"
 PR = "r0"
+
+SRC_URI[md5sum] = "ee8b492592568805593f81f8cdf2a04c"
+SRC_URI[sha256sum] = "847660b4df86e707c9150e33cd8c25bc5cd828f708c7418e765e3e983a2e5e93"
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
index 229012b..30e208a 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
@@ -6,5 +6,8 @@ SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/glib/2.27/glib-${PV}.tar.bz2 \
            file://configure-libtool.patch \
            file://60_wait-longer-for-threads-to-die.patch"
 
+SRC_URI[md5sum] = "d3e976ff92b55b6064a0eb3110f36158"
+SRC_URI[sha256sum] = "c44177b635e88639361eb1daf7aaa33315a00aaf46db5accf2f11920c7ff1919"
+
 SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-core/jpeg/jpeg_8b.bb b/meta/recipes-core/jpeg/jpeg_8b.bb
index 012bbcf..8e2c24d 100644
--- a/meta/recipes-core/jpeg/jpeg_8b.bb
+++ b/meta/recipes-core/jpeg/jpeg_8b.bb
@@ -19,6 +19,9 @@ PR = "r0"
 SRC_URI = "http://www.ijg.org/files/jpegsrc.v${PV}.tar.gz \
 	   file://debian-libjpeg7_7-1.diff;patch=1"
 
+SRC_URI[md5sum] = "e022acbc5b36cd2cb70785f5b575661e"
+SRC_URI[sha256sum] = "36e6208edec591bae8f2fc370ea4f991447badb6377a125c211ffa7b503174a7"
+
 inherit autotools 
 
 EXTRA_OECONF="--enable-static --enable-shared"
diff --git a/meta/recipes-core/libxml/libxml2_2.7.7.bb b/meta/recipes-core/libxml/libxml2_2.7.7.bb
index 656cb88..9615a7f 100644
--- a/meta/recipes-core/libxml/libxml2_2.7.7.bb
+++ b/meta/recipes-core/libxml/libxml2_2.7.7.bb
@@ -1,3 +1,6 @@
 require libxml2.inc
 
 PR = "r2"
+
+SRC_URI[md5sum] = "9abc9959823ca9ff904f1fbcf21df066"
+SRC_URI[sha256sum] = "af5b781418ba4fff556fa43c50086658ea8a2f31909c2b625c2ce913a1d9eb68"
diff --git a/meta/recipes-core/ncurses/ncurses_5.4.bb b/meta/recipes-core/ncurses/ncurses_5.4.bb
index e69c1c0..60e07fd 100644
--- a/meta/recipes-core/ncurses/ncurses_5.4.bb
+++ b/meta/recipes-core/ncurses/ncurses_5.4.bb
@@ -3,6 +3,9 @@ PR = "r14"
 SRC_URI = "${GNU_MIRROR}/ncurses/ncurses-${PV}.tar.gz \
            file://makefile_tweak.patch;patch=1 \
            file://visibility.patch;patch=1"
+
+SRC_URI[md5sum] = "069c8880072060373290a4fefff43520"
+SRC_URI[sha256sum] = "5abce063cf431790f4e6a801a96c7eea0b33a41ecd0970f6312f52575c083b36"
 S = "${WORKDIR}/ncurses-${PV}"
 
 require ncurses.inc
diff --git a/meta/recipes-core/readline/readline_6.1.bb b/meta/recipes-core/readline/readline_6.1.bb
index c327556..b6773b2 100644
--- a/meta/recipes-core/readline/readline_6.1.bb
+++ b/meta/recipes-core/readline/readline_6.1.bb
@@ -1,3 +1,6 @@
 require readline.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "fc2f7e714fe792db1ce6ddc4c9fb4ef3"
+SRC_URI[sha256sum] = "f0caf608c06ccd6d56b3bee1843458d509c53f9b53dffffe07cc11d8f03fa969"
diff --git a/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb b/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb
index 1d7a991..26577f2 100644
--- a/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb
+++ b/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb
@@ -11,6 +11,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3d06403ea54c7574a9e581c6478cc393 \
 PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/linux-diag/sysfsutils-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "14e7dcd0436d2f49aa403f67e1ef7ddc"
+SRC_URI[sha256sum] = "e865de2c1f559fff0d3fc936e660c0efaf7afe662064f2fb97ccad1ec28d208a"
 S = "${WORKDIR}/sysfsutils-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb b/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb
index 782cb1e..7d5e936 100644
--- a/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb
+++ b/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb
@@ -32,6 +32,9 @@ SRC_URI = "http://download.savannah.gnu.org/releases-noredirect/sysvinit/sysvini
            file://rcS \
 	   file://bootlogd.init"
 
+SRC_URI[md5sum] = "6eda8a97b86e0a6f59dabbf25202aa6f"
+SRC_URI[sha256sum] = "60bbc8c1e1792056e23761d22960b30bb13eccc2cabff8c7310a01f4d5df1519"
+
 S = "${WORKDIR}/sysvinit-${PV}"
 B = "${S}/src"
 
diff --git a/meta/recipes-core/tinylogin/tinylogin_1.4.bb b/meta/recipes-core/tinylogin/tinylogin_1.4.bb
index 436a858..df626cf 100644
--- a/meta/recipes-core/tinylogin/tinylogin_1.4.bb
+++ b/meta/recipes-core/tinylogin/tinylogin_1.4.bb
@@ -16,6 +16,9 @@ SRC_URI = "http://tinylogin.busybox.net/downloads/tinylogin-${PV}.tar.bz2 \
 	file://remove-index.patch;patch=1 \
 	file://use_O2_option.patch"
 
+SRC_URI[md5sum] = "44da0ff2b727455669890b24305e351d"
+SRC_URI[sha256sum] = "5e542e4b7825305a3678bf73136c392feb0d44b8bbf926e8eda5453eea7ddd6b"
+
 EXTRA_OEMAKE = ""
 
 do_compile () {
diff --git a/meta/recipes-core/udev/udev_158.bb b/meta/recipes-core/udev/udev_158.bb
index c4eedb7..caf68d8 100644
--- a/meta/recipes-core/udev/udev_158.bb
+++ b/meta/recipes-core/udev/udev_158.bb
@@ -1,3 +1,6 @@
 include udev-new.inc
 
 PR = "r4"
+
+SRC_URI[md5sum] = "d0f21f72f9e8b95d85191b77ff1ad2a0"
+SRC_URI[sha256sum] = "f0a194a0500a07d50ae3f14416a34c8d94ea8a1aff8fc1f06e1d421775dcc902"
diff --git a/meta/recipes-core/util-linux/util-linux_2.17.2.bb b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
index d4472a0..9b344d4 100644
--- a/meta/recipes-core/util-linux/util-linux_2.17.2.bb
+++ b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
@@ -5,6 +5,9 @@ PR="r1"
 SRC_URI += "file://uclibc-compile.patch \
 	          file://util-linux-ng-replace-siginterrupt.patch"
 
+SRC_URI[md5sum] = "4635725a3eef1c57090bac8ea5e082e6"
+SRC_URI[sha256sum] = "c9ae801b6a5ab20b7749a278a8bf6830ef53adc5e8b7eb0ac1a9f410c774118f"
+
 # fallocate is glibc 2.10, fallocate64 is glibc 2.11
 # we need to disable it for older versions
 EXTRA_OECONF += "ac_cv_func_fallocate=no"
diff --git a/meta/recipes-core/zlib/zlib_1.2.5.bb b/meta/recipes-core/zlib/zlib_1.2.5.bb
index 8897406..c9f29cc 100644
--- a/meta/recipes-core/zlib/zlib_1.2.5.bb
+++ b/meta/recipes-core/zlib/zlib_1.2.5.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://www.zlib.net/${BPN}-${PV}.tar.bz2 \
            file://configure.ac \
            file://Makefile.am"
 
+SRC_URI[md5sum] = "be1e89810e66150f5b0327984d8625a0"
+SRC_URI[sha256sum] = "239aead2f22f16bfcfa6a6a5150dcbd6d6f2e4d1eaa8727b5769ea014120b307"
+
 inherit autotools
 
 do_configure_prepend () {
diff --git a/meta/recipes-devtools/apt/apt-native_0.7.14.bb b/meta/recipes-devtools/apt/apt-native_0.7.14.bb
index 83c87c6..f77f817 100644
--- a/meta/recipes-devtools/apt/apt-native_0.7.14.bb
+++ b/meta/recipes-devtools/apt/apt-native_0.7.14.bb
@@ -6,3 +6,6 @@ SRC_URI += "file://nodoc.patch \
             file://noconfigure.patch \
 	    file://no-curl.patch \
 	    file://includes-fix.patch"
+
+SRC_URI[md5sum] = "19efa18fb1ef20c58b9b44e94258b814"
+SRC_URI[sha256sum] = "8fc06effaf8a4e4333308eedcdc6840f1c8056f2e924210f151dfc076bcd4045"
diff --git a/meta/recipes-devtools/apt/apt_0.7.14.bb b/meta/recipes-devtools/apt/apt_0.7.14.bb
index 43353fa..54096ef 100644
--- a/meta/recipes-devtools/apt/apt_0.7.14.bb
+++ b/meta/recipes-devtools/apt/apt_0.7.14.bb
@@ -8,6 +8,9 @@ PR = "r3"
 SRC_URI += "file://nodoc.patch \
 	    file://includes-fix.patch"
 
+SRC_URI[md5sum] = "19efa18fb1ef20c58b9b44e94258b814"
+SRC_URI[sha256sum] = "8fc06effaf8a4e4333308eedcdc6840f1c8056f2e924210f151dfc076bcd4045"
+
 require apt-package.inc
 
 FILES_${PN} += "${bindir}/apt-key"
diff --git a/meta/recipes-devtools/autoconf/autoconf_2.65.bb b/meta/recipes-devtools/autoconf/autoconf_2.65.bb
index 5af973c..0bc615e 100644
--- a/meta/recipes-devtools/autoconf/autoconf_2.65.bb
+++ b/meta/recipes-devtools/autoconf/autoconf_2.65.bb
@@ -17,6 +17,9 @@ SRC_URI += "file://autoreconf-include.patch;patch=1 \
 	   ${@['file://path_prog_fixes.patch;patch=1', ''][bb.data.inherits_class('native', d)]} \
            file://config_site.patch;patch=1"
 
+SRC_URI[md5sum] = "a6de1cc6434cd64038b0a0ae4e252b33"
+SRC_URI[sha256sum] = "db11944057f3faf229ff5d6ce3fcd819f565455c152b72cec17ebc1cbb80136b"
+
 DEPENDS_virtclass-native = "m4-native gnu-config-native"
 RDEPENDS_${PN}_virtclass-native = "m4-native gnu-config-native"
 
diff --git a/meta/recipes-devtools/automake/automake_1.11.1.bb b/meta/recipes-devtools/automake/automake_1.11.1.bb
index 209772c..b231a94 100644
--- a/meta/recipes-devtools/automake/automake_1.11.1.bb
+++ b/meta/recipes-devtools/automake/automake_1.11.1.bb
@@ -34,6 +34,9 @@ PATHFIXPATCH_virtclass-native = ""
 
 SRC_URI += "${PATHFIXPATCH}"
 
+SRC_URI[md5sum] = "c2972c4d9b3e29c03d5f2af86249876f"
+SRC_URI[sha256sum] = "5b159d3c0e0a1f87de71b68bcb9f1a1c49e9e71749c9b723f17e2e1e0295c7ae"
+
 do_install () {
 	oe_runmake 'DESTDIR=${D}' install
 	install -d ${D}${datadir}
diff --git a/meta/recipes-devtools/binutils/binutils_2.20.1.bb b/meta/recipes-devtools/binutils/binutils_2.20.1.bb
index 2a10128..b7212e7 100644
--- a/meta/recipes-devtools/binutils/binutils_2.20.1.bb
+++ b/meta/recipes-devtools/binutils/binutils_2.20.1.bb
@@ -30,6 +30,9 @@ SRC_URI = "\
      file://binutils-poison.patch \
      "
 
+SRC_URI[tarball.md5sum] = "9cdfb9d6ec0578c166d3beae5e15c4e5"
+SRC_URI[tarball.sha256sum] = "228b84722d87e88e7fdd36869e590e649ab523a0800a7d53df906498afe6f6f8"
+
 # powerpc patches
 SRC_URI += "\
      file://binutils-2.16.1-e300c2c3.patch \
diff --git a/meta/recipes-devtools/bison/bison_2.4.3.bb b/meta/recipes-devtools/bison/bison_2.4.3.bb
index 61ab44a..0df7e70 100644
--- a/meta/recipes-devtools/bison/bison_2.4.3.bb
+++ b/meta/recipes-devtools/bison/bison_2.4.3.bb
@@ -14,6 +14,9 @@ BASE_SRC_URI = "${GNU_MIRROR}/bison/bison-${PV}.tar.gz \
 SRC_URI = "${BASE_SRC_URI} \
         file://fix_cross_manpage_building.patch "
 
+SRC_URI[md5sum] = "ea45c778b36bdc7a720096819e292a73"
+SRC_URI[sha256sum] = "6b17be5e63ff6667c83f6ef0423befe0ba23d4bc554c4c33b02ce5bb65179b16"
+
 DEPENDS_virtclass-native = "gettext-native"
 SRC_URI_virtclass-native = "${BASE_SRC_URI}"
 
diff --git a/meta/recipes-devtools/chrpath/chrpath_0.13.bb b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
index b812175..19cdadf 100644
--- a/meta/recipes-devtools/chrpath/chrpath_0.13.bb
+++ b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
@@ -7,6 +7,9 @@ PR = "r2"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/c/chrpath/chrpath_${PV}.orig.tar.gz"
 
+SRC_URI[md5sum] = "b73072a8fbba277558c50364b65bb407"
+SRC_URI[sha256sum] = "c1aa5342eac0daad81b8da05aa282ae1ccd6f68bc75ca94064304f541eed071b"
+
 inherit autotools
 
 S = "${WORKDIR}/chrpath-${PV}"
diff --git a/meta/recipes-devtools/diffstat/diffstat_1.54.bb b/meta/recipes-devtools/diffstat/diffstat_1.54.bb
index 8fc51e9..7e2bd1e 100644
--- a/meta/recipes-devtools/diffstat/diffstat_1.54.bb
+++ b/meta/recipes-devtools/diffstat/diffstat_1.54.bb
@@ -11,6 +11,9 @@ PR = "r0"
 
 SRC_URI = "ftp://invisible-island.net/diffstat/diffstat-${PV}.tgz"
 
+SRC_URI[md5sum] = "af08bef2eb37050ceb0c4fddedb2ee36"
+SRC_URI[sha256sum] = "d8e67660ec85be597f8548ecdd088926639dac34ec7184aaf9d09c1e6ecb83e5"
+
 S = "${WORKDIR}/diffstat-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-devtools/distcc/distcc_2.18.3.bb b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
index 638ea91..75f6778 100644
--- a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
+++ b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
@@ -16,6 +16,9 @@ SRC_URI = "http://distcc.samba.org/ftp/distcc/distcc-${PV}.tar.bz2 \
 	   file://distccmon-gnome.desktop \
 	   file://distcc"
 
+SRC_URI[md5sum] = "0d6b80a1efc3a3d816c4f4175f63eaa2"
+SRC_URI[sha256sum] = "6500f1bc2a30b1f044ebed79c6ce15457d1712263e65f0db7d6046af262ba434"
+
 inherit autotools pkgconfig update-rc.d
 
 INITSCRIPT_NAME = "distcc"
diff --git a/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb b/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
index f21e7b9..9d59e15 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
+++ b/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
@@ -15,6 +15,9 @@ SRC_URI = "ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-${PV}
            file://msdos_fat12_undefined.patch;patch=1 \
 	   file://include-linux-types.patch;patch=1"
 
+SRC_URI[md5sum] = "407d405ade410f7597d364ab5dc8c9f6"
+SRC_URI[sha256sum] = "0eac6d12388b3d9ed78684529c1b0d9346fa2abbe406c4d4a3eb5a023c98a484"
+
 do_install () {
 	oe_runmake "PREFIX=${D}" "SBINDIR=${D}${sbindir}" \
 		   "MANDIR=${D}${mandir}/man8" install
diff --git a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb b/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
index 43ab8f6..ed247d4 100644
--- a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
+++ b/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
@@ -5,6 +5,9 @@ SRC_URI += "file://noman.patch;patch=1 \
             file://check_snprintf.patch \
             file://check_version.patch"
 
+SRC_URI[md5sum] = "b9b817389e655ec2c12465de5c619011"
+SRC_URI[sha256sum] = "2ef55e8eb6c1e8c3dfb54c8ccc9a883fec7540b705c5179ca7a198bebe2f18bc"
+
 PR = "r3"
 
 EXTRA_OECONF = "--without-static-progs \
diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
index ac26250..3f9195a 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
@@ -4,6 +4,9 @@ PR = "r19"
 
 SRC_URI += "file://quotefix.patch;patch=1 \
             file://acinclude.m4"
+
+SRC_URI[md5sum] = "1b24a21fc0c2381ef420961cbfec733f"
+SRC_URI[sha256sum] = "9c26d0dc20bfdafd0f27f3564791d6121d1c1876549d4f2ff1e41955c9bb9f20"
 #file://no-hardlinks.patch;patch=1 \
 
 PARALLEL_MAKE = ""
diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
index f84ab8e..44b3c52 100644
--- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -10,6 +10,9 @@ PR = "r1"
 
 SRC_URI = "https://fedorahosted.org/releases/e/l/elfutils/elfutils-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "a0bed1130135f17ad27533b0034dba8d"
+SRC_URI[sha256sum] = "8aebfa4a745db21cf5429c9541fe482729b62efc7e53e9110151b4169fe887da"
+
 # pick the patch from debian
 # http://ftp.de.debian.org/debian/pool/main/e/elfutils/elfutils_0.148-1.debian.tar.gz
 
diff --git a/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb b/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
index e38694c..267a699 100644
--- a/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
+++ b/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
@@ -3,9 +3,15 @@ DESCRIPTION = "Gives a fake root environment which can support chroot"
 LICENSE = "LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
-SRC_URI = "${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_${PV}.orig.tar.gz \
+SRC_URI = "${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_${PV}.orig.tar.gz;name=tarball \
            file://fix-readlink.patch;patch=1 \
-           ${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_2.9-1.1.diff.gz;patch=1"
+           ${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_2.9-1.1.diff.gz;patch=1;name=patch"
+
+SRC_URI[tarball.md5sum] = "7b0048e50a6309acf0dda4e547735022"
+SRC_URI[tarball.sha256sum] = "bfccb079d2d247b05d5f82473beca0043ddfc51a6ed595541575893fa3ab6c3e"
+
+SRC_URI[patch.md5sum] = "b4c9c113ebba929be8c311591a499e6e"
+SRC_URI[patch.sha256sum] = "3e1677622f3a92a5cf91665a733fa51b32d1e5f1a487a7e220ad575c0a09077a"
 
 inherit autotools
 
diff --git a/meta/recipes-devtools/file/file_5.04.bb b/meta/recipes-devtools/file/file_5.04.bb
index afc0816..ad69862 100644
--- a/meta/recipes-devtools/file/file_5.04.bb
+++ b/meta/recipes-devtools/file/file_5.04.bb
@@ -17,6 +17,9 @@ SRC_URI = "ftp://ftp.astron.com/pub/file/file-${PV}.tar.gz \
            file://dump \
            file://filesystems"
 
+SRC_URI[md5sum] = "accade81ff1cc774904b47c72c8aeea0"
+SRC_URI[sha256sum] = "4c9e6e7994e74cb3386374ae91b055d26ac96b9d3e82fd157ae2d62e87a4260c"
+
 inherit autotools
 
 do_configure_prepend() {
diff --git a/meta/recipes-devtools/flex/flex_2.5.35.bb b/meta/recipes-devtools/flex/flex_2.5.35.bb
index 9b59a72..4fdce33 100644
--- a/meta/recipes-devtools/flex/flex_2.5.35.bb
+++ b/meta/recipes-devtools/flex/flex_2.5.35.bb
@@ -3,3 +3,6 @@ PR = "r1"
 LICENSE="BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e4742cf92e89040b39486a6219b68067"
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "10714e50cea54dc7a227e3eddcd44d57"
+SRC_URI[sha256sum] = "0becbd4b2b36b99c67f8c22ab98f7f80c9860aec70f0350a0018f29a88704e7b"
diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
index 91b782f..d4a257e 100644
--- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
@@ -13,3 +13,6 @@ SRC_URI_append = "file://fortran-cross-compile-hack.patch"
 
 ARCH_FLAGS_FOR_TARGET += "-isystem${STAGING_INCDIR}"
 
+
+SRC_URI[md5sum] = "48231a8e33ed6e058a341c53b819de1a"
+SRC_URI[sha256sum] = "45fa81face89203ccbf3ec73f7a372769d855f3ba7446f50125b613d9c163e2c"
diff --git a/meta/recipes-devtools/gdb/gdb_7.2.bb b/meta/recipes-devtools/gdb/gdb_7.2.bb
index 4d3d9d4..7213b57 100644
--- a/meta/recipes-devtools/gdb/gdb_7.2.bb
+++ b/meta/recipes-devtools/gdb/gdb_7.2.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
 		    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
 		    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674"
 PR = "r0"
+
+SRC_URI[md5sum] = "950b766466bee748e554765c86b8b495"
+SRC_URI[sha256sum] = "34919cb51334c8149ae36ed086f35e79fe3fa2b2a85b568d7c0edad20cd972d4"
diff --git a/meta/recipes-devtools/genext2fs/genext2fs_1.4.1.bb b/meta/recipes-devtools/genext2fs/genext2fs_1.4.1.bb
index 3c6f6ba..9364bb8 100644
--- a/meta/recipes-devtools/genext2fs/genext2fs_1.4.1.bb
+++ b/meta/recipes-devtools/genext2fs/genext2fs_1.4.1.bb
@@ -1,3 +1,6 @@
 require genext2fs.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "b7b6361bcce2cedff1ae437fadafe53b"
+SRC_URI[sha256sum] = "404dbbfa7a86a6c3de8225c8da254d026b17fd288e05cec4df2cc7e1f4feecfc"
diff --git a/meta/recipes-devtools/intltool/intltool_0.40.6.bb b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
index ac6d992..4b5fe82 100644
--- a/meta/recipes-devtools/intltool/intltool_0.40.6.bb
+++ b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
@@ -4,3 +4,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 PR = "r0"
 
 SRC_URI_append = " file://intltool-nowarn-0.40.0.patch"
+
+SRC_URI[md5sum] = "69bc0353323112f42ad4f9cf351bc3e5"
+SRC_URI[sha256sum] = "4d1e5f8561f09c958e303d4faa885079a5e173a61d28437d0013ff5efc9e3b64"
diff --git a/meta/recipes-devtools/libtool/libtool-native_2.4.bb b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
index f10ea88..4ad660b 100644
--- a/meta/recipes-devtools/libtool/libtool-native_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
@@ -20,3 +20,6 @@ do_install () {
 	install -d ${D}${bindir}/
 	install -m 0755 ${HOST_SYS}-libtool ${D}${bindir}/${HOST_SYS}-libtool
 }
+
+SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
+SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
diff --git a/meta/recipes-devtools/libtool/libtool_2.4.bb b/meta/recipes-devtools/libtool/libtool_2.4.bb
index cca3b1e..b5ec33e 100644
--- a/meta/recipes-devtools/libtool/libtool_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool_2.4.bb
@@ -31,3 +31,6 @@ libtool_sysroot_preprocess () {
 		rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/libtool/config/*
 	fi
 }
+
+SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
+SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
diff --git a/meta/recipes-devtools/make/make_3.82.bb b/meta/recipes-devtools/make/make_3.82.bb
index e8a0865..61fbb32 100644
--- a/meta/recipes-devtools/make/make_3.82.bb
+++ b/meta/recipes-devtools/make/make_3.82.bb
@@ -3,3 +3,6 @@ LICENSE="GPLv3&LGPLv2"
 LIC_FILES_CHKSUM = "file://tests/COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://glob/COPYING.LIB;md5=4a770b67e6be0f60da244beb2de0fce4"
 require make.inc
+
+SRC_URI[md5sum] = "1a11100f3c63fcf5753818e59d63088f"
+SRC_URI[sha256sum] = "e2c1a73f179c40c71e2fe8abf8a8a0688b8499538512984da4a76958d0402966"
diff --git a/meta/recipes-devtools/nasm/nasm_2.07.bb b/meta/recipes-devtools/nasm/nasm_2.07.bb
index 175190b..b42196e 100644
--- a/meta/recipes-devtools/nasm/nasm_2.07.bb
+++ b/meta/recipes-devtools/nasm/nasm_2.07.bb
@@ -8,6 +8,9 @@ PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/nasm/nasm-${PV}.tar.bz2 "
 
+SRC_URI[md5sum] = "d8934231e81874c29374ddef1fbdb1ed"
+SRC_URI[sha256sum] = "ac70ee451c73d742c9ff830502e5f8b1f648b2abffa8fd00944243283ba8e87c"
+
 inherit autotools
 
 do_configure_prepend () {
diff --git a/meta/recipes-devtools/patch/patch_2.5.9.bb b/meta/recipes-devtools/patch/patch_2.5.9.bb
index ff48554..4b4511f 100644
--- a/meta/recipes-devtools/patch/patch_2.5.9.bb
+++ b/meta/recipes-devtools/patch/patch_2.5.9.bb
@@ -6,5 +6,8 @@ SRC_URI = "${GNU_MIRROR}/patch/patch-2.5.4.tar.gz \
 	   file://install.patch;patch=1 \
            file://unified-reject-files.diff;patch=1 \
            file://global-reject-file.diff;patch=1 "
+
+SRC_URI[md5sum] = "ee5ae84d115f051d87fcaaef3b4ae782"
+SRC_URI[sha256sum] = "dd2fc5a745bfca5450d13d7032fdc47ab102514aae3efb3fe334a6eff87df799"
 S = "${WORKDIR}/patch-2.5.4"
 PR = "r2"
\ No newline at end of file
diff --git a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb b/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
index 441797b..9c789cd 100644
--- a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
+++ b/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
@@ -4,6 +4,9 @@ LICENSE     = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a"
 SRC_URI     = "http://gentoo.osuosl.org/distfiles/pax-utils-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "2bf53234580e02294453a40c864f5871"
+SRC_URI[sha256sum] = "6a5beefb686e425eb6829bc716d2b32b64c2e854287c212c9853bc2beb705c3a"
+
 PR = "r0"
 
 do_install() {
diff --git a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
index b9ebd7f..5742879 100644
--- a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
+++ b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
@@ -5,6 +5,9 @@ DEPENDS += "expat expat-native"
 
 SRC_URI = "http://www.cpan.org/modules/by-module/XML/XML-Parser-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "1b868962b658bd87e1563ecd56498ded"
+SRC_URI[sha256sum] = "9fd529867402456bd826fe0e5588d35b3a2e27e586a2fd838d1352b71c2ed73f"
+
 S = "${WORKDIR}/XML-Parser-${PV}"
 
 EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
diff --git a/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb b/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
index 7ed6a23..136e117 100644
--- a/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
+++ b/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
@@ -6,6 +6,9 @@ PR = "r0"
 
 SRC_URI = "http://www.cpan.org/modules/by-module/XML/XML-Simple-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "593aa8001e5c301cdcdb4bb3b63abc33"
+SRC_URI[sha256sum] = "a54967c188cda3e20f496c83be4de3f1740eeaa83c0380712ecd969ad8766826"
+
 S = "${WORKDIR}/XML-Simple-${PV}"
 
 inherit cpan
diff --git a/meta/recipes-devtools/perl/perl-native_5.8.8.bb b/meta/recipes-devtools/perl/perl-native_5.8.8.bb
index 534b670..6321525 100644
--- a/meta/recipes-devtools/perl/perl-native_5.8.8.bb
+++ b/meta/recipes-devtools/perl/perl-native_5.8.8.bb
@@ -15,6 +15,9 @@ SRC_URI = "http://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
            file://makedepend-dash.patch;patch=1 \
            file://asm-pageh-fix.patch;patch=1"
 
+SRC_URI[md5sum] = "b8c118d4360846829beb30b02a6b91a7"
+SRC_URI[sha256sum] = "e15d499321e003d12ed183601e37ee7ba5f64b278d1de30149ce01bd4a3f234d"
+
 S = "${WORKDIR}/perl-${PV}"
 
 inherit native
diff --git a/meta/recipes-devtools/perl/perl_5.8.8.bb b/meta/recipes-devtools/perl/perl_5.8.8.bb
index 3c0c676..2774942 100644
--- a/meta/recipes-devtools/perl/perl_5.8.8.bb
+++ b/meta/recipes-devtools/perl/perl_5.8.8.bb
@@ -40,6 +40,9 @@ SRC_URI = "ftp://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
         file://config.sh-64-le \
         file://config.sh-64-be"
 
+SRC_URI[md5sum] = "b8c118d4360846829beb30b02a6b91a7"
+SRC_URI[sha256sum] = "e15d499321e003d12ed183601e37ee7ba5f64b278d1de30149ce01bd4a3f234d"
+
 inherit siteinfo
 
 # Where to find the native perl
diff --git a/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb b/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb
index 09b28a5..a1f9508 100644
--- a/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb
+++ b/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb
@@ -1,3 +1,6 @@
 require pkgconfig.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "a3270bab3f4b69b7dc6dbdacbcae9745"
+SRC_URI[sha256sum] = "3ba691ee2431f32ccb8efa131e59bf23e37f122dc66791309023ca6dcefcd10e"
diff --git a/meta/recipes-devtools/python/python-dbus_0.83.1.bb b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
index d0c0bc6..d405ffa 100644
--- a/meta/recipes-devtools/python/python-dbus_0.83.1.bb
+++ b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
@@ -7,6 +7,9 @@ DEPENDS = "expat dbus dbus-glib virtual/libintl python-pyrex-native"
 PR = "ml0"
 
 SRC_URI = "http://dbus.freedesktop.org/releases/dbus-python/dbus-python-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "5fdf3970aa0c00020289de7ba8f3be18"
+SRC_URI[sha256sum] = "ce283806f1af4f2322e183a276528a880b503c74972932bd09f06bdb7fcc1b99"
 S = "${WORKDIR}/dbus-python-${PV}"
 
 inherit distutils-base autotools pkgconfig
diff --git a/meta/recipes-devtools/python/python-gst_0.10.19.bb b/meta/recipes-devtools/python/python-gst_0.10.19.bb
index 6afc3ba..16852d1 100644
--- a/meta/recipes-devtools/python/python-gst_0.10.19.bb
+++ b/meta/recipes-devtools/python/python-gst_0.10.19.bb
@@ -7,6 +7,9 @@ PR = "r0"
 
 SRC_URI = "http://gstreamer.freedesktop.org/src/gst-python/gst-python-${PV}.tar.bz2 \
            file://python-path.patch"
+
+SRC_URI[md5sum] = "ddcef7d00bd88b0591cd6d910c36ec4b"
+SRC_URI[sha256sum] = "956f81a8c15daa3f17e688a0dc5a5d18a3118141066952d3b201a6ac0c52b415"
 S = "${WORKDIR}/gst-python-${PV}"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=39ff67e932b7bdfa9b78bad67151690b"
diff --git a/meta/recipes-devtools/python/python-imaging_1.1.7.bb b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
index a711a25..bd6fe1d 100644
--- a/meta/recipes-devtools/python/python-imaging_1.1.7.bb
+++ b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
@@ -10,6 +10,9 @@ PR = "ml0"
 
 SRC_URI = "http://effbot.org/downloads/Imaging-${PV}.tar.gz \
            file://path.patch"
+
+SRC_URI[md5sum] = "fc14a54e1ce02a0225be8854bfba478e"
+SRC_URI[sha256sum] = "895bc7c2498c8e1f9b99938f1a40dc86b3f149741f105cf7c7bd2e0725405211"
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 inherit distutils
diff --git a/meta/recipes-devtools/python/python-pycairo_1.8.10.bb b/meta/recipes-devtools/python/python-pycairo_1.8.10.bb
index 1ff6038..7d73dc2 100644
--- a/meta/recipes-devtools/python/python-pycairo_1.8.10.bb
+++ b/meta/recipes-devtools/python/python-pycairo_1.8.10.bb
@@ -9,6 +9,9 @@ DEPENDS = "cairo"
 PR = "ml0"
 
 SRC_URI = "http://cairographics.org/releases/py2cairo-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "87421a6a70304120555ba7ba238f3dc3"
+SRC_URI[sha256sum] = "b15f71019e42e06d86f7e8fe5587f07c3de5a59a6c3a071b25fe100796dbcd56"
 S = "${WORKDIR}/pycairo-${PV}"
 
 inherit distutils pkgconfig
diff --git a/meta/recipes-devtools/python/python-pycurl_7.19.0.bb b/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
index 1a04767..c8841f4 100644
--- a/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
+++ b/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
@@ -16,6 +16,9 @@ SRC_URI = "\
   http://${SRCNAME}.sourceforge.net/download/${SRCNAME}-${PV}.tar.gz;name=archive \
   file://no-static-link.patch;patch=1 \
 "
+
+SRC_URI[archive.md5sum] = "919d58fe37e69fe87ce4534d8b6a1c7b"
+SRC_URI[archive.sha256sum] = "eb782dfcc5a7c023539a077462b83c167e178128ee9f7201665b9fbb1a8b0642"
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 inherit distutils
diff --git a/meta/recipes-devtools/python/python-pygobject_2.21.1.bb b/meta/recipes-devtools/python/python-pygobject_2.21.1.bb
index b438447..ca93c68 100644
--- a/meta/recipes-devtools/python/python-pygobject_2.21.1.bb
+++ b/meta/recipes-devtools/python/python-pygobject_2.21.1.bb
@@ -9,6 +9,9 @@ MAJ_VER = "${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1
 
 SRC_URI = "ftp://ftp.gnome.org/pub/GNOME/sources/pygobject/${MAJ_VER}/pygobject-${PV}.tar.bz2 \
 	   file://generate-constants.patch"
+
+SRC_URI[md5sum] = "c12eef0cd6725dc7245c3db78ef85d2d"
+SRC_URI[sha256sum] = "e6ae6c70966899d2040c82ae4e1590cf941ebf121a3ec61e80bf517ce8d9be0a"
 S = "${WORKDIR}/pygobject-${PV}"
 
 FILESPATH = "${FILE_DIRNAME}/python-pygobject:${FILE_DIRNAME}/files"
diff --git a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
index d3f4f50..c32d998 100644
--- a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
+++ b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
@@ -14,6 +14,9 @@ SRC_URI = "ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.17/${SRCNAME}-${PV}.tar
            file://prevent_to_get_display_during_import.patch \
            file://nodocs.patch \
            file://acinclude.m4"
+
+SRC_URI[md5sum] = "43d704343d7ca04a6e4ddd4fa73a3c55"
+SRC_URI[sha256sum] = "6a61817a2e765c6209c72ecdf44389ec134c1ebed1d842408bf001c9321f1400"
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 EXTRA_OECONF = "--disable-docs --with-python-includes=${STAGING_INCDIR}/../"
diff --git a/meta/recipes-devtools/python/python-pyrex_0.9.9.bb b/meta/recipes-devtools/python/python-pyrex_0.9.9.bb
index b62ffbf..bba84ce 100644
--- a/meta/recipes-devtools/python/python-pyrex_0.9.9.bb
+++ b/meta/recipes-devtools/python/python-pyrex_0.9.9.bb
@@ -12,6 +12,9 @@ SRC_URI = "\
   http://www.cosc.canterbury.ac.nz/greg.ewing/python/${SRCNAME}/${SRCNAME}-${PV}.tar.gz \
   file://pyrex-fix-optimized-mode.patch \
 "
+
+SRC_URI[md5sum] = "515dee67d15d4393841e2d60e8341947"
+SRC_URI[sha256sum] = "5f87df06831d0b3412eb4bc9d3fc2ee7bfae1b913d7da8c23ab2bf5699fb6b50"
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 inherit distutils
diff --git a/meta/recipes-devtools/python/python-scons_2.0.1.bb b/meta/recipes-devtools/python/python-scons_2.0.1.bb
index 97a7a8c..0dfa837 100644
--- a/meta/recipes-devtools/python/python-scons_2.0.1.bb
+++ b/meta/recipes-devtools/python/python-scons_2.0.1.bb
@@ -8,6 +8,9 @@ SRCNAME = "scons"
 PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/scons/scons-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "beca648b894cdbf85383fffc79516d18"
+SRC_URI[sha256sum] = "0a8151da41c4a26c776c84f44f747ce03e093d43be3e83b38c14a76ab3256762"
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 inherit distutils
diff --git a/meta/recipes-devtools/python/python_2.6.6.bb b/meta/recipes-devtools/python/python_2.6.6.bb
index 50f8d70..b33e0a9 100644
--- a/meta/recipes-devtools/python/python_2.6.6.bb
+++ b/meta/recipes-devtools/python/python_2.6.6.bb
@@ -14,6 +14,9 @@ SRC_URI = "\
   file://99-ignore-optimization-flag.patch \
   file://sitecustomize.py \
 "
+
+SRC_URI[md5sum] = "cf4e6881bb84a7ce6089e4a307f71f14"
+SRC_URI[sha256sum] = "134c5e0736bae2e5570d0b915693374f11108ded63c35a23a35d282737d2ce83"
 S = "${WORKDIR}/Python-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-devtools/qemu/qemu_0.12.4.bb b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
index f52a5ca..04526d1 100644
--- a/meta/recipes-devtools/qemu/qemu_0.12.4.bb
+++ b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
@@ -27,6 +27,9 @@ SRC_URI = "\
     file://fix-configure-checks.patch \
     file://powerpc_rom.bin"
 
+SRC_URI[md5sum] = "93e6b134dff89b2799f57b7d9e0e0fc5"
+SRC_URI[sha256sum] = "1a29a5b5151162d1de035c4926d1a1dbffee4a145ef61ee865d6b82aaea0602e"
+
 do_install_append () {
         install -d ${D}${datadir}/qemu
         install -m 0755 ${WORKDIR}/powerpc_rom.bin ${D}${datadir}/qemu
diff --git a/meta/recipes-devtools/quilt/quilt-native_0.48.bb b/meta/recipes-devtools/quilt/quilt-native_0.48.bb
index d1dd576..a62531e 100644
--- a/meta/recipes-devtools/quilt/quilt-native_0.48.bb
+++ b/meta/recipes-devtools/quilt/quilt-native_0.48.bb
@@ -2,3 +2,6 @@ require quilt.inc
 require quilt-native.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "f77adda60039ffa753f3c584a286f12b"
+SRC_URI[sha256sum] = "73fd760d3b5cbf06417576591dc37d67380d189392db9000c21b7cbebee49ffc"
diff --git a/meta/recipes-devtools/quilt/quilt_0.48.bb b/meta/recipes-devtools/quilt/quilt_0.48.bb
index c56bde1..a2a8a5c 100644
--- a/meta/recipes-devtools/quilt/quilt_0.48.bb
+++ b/meta/recipes-devtools/quilt/quilt_0.48.bb
@@ -5,4 +5,7 @@ RDEPENDS_${PN} += "patch diffstat bzip2 util-linux"
 PR = "r0"
 SRC_URI += "file://aclocal.patch"
 
+SRC_URI[md5sum] = "f77adda60039ffa753f3c584a286f12b"
+SRC_URI[sha256sum] = "73fd760d3b5cbf06417576591dc37d67380d189392db9000c21b7cbebee49ffc"
+
 inherit gettext
diff --git a/meta/recipes-devtools/rpm/rpm_5.1.10.bb b/meta/recipes-devtools/rpm/rpm_5.1.10.bb
index ff5caa2..3914b59 100644
--- a/meta/recipes-devtools/rpm/rpm_5.1.10.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.1.10.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.1/POKY/${BPN}-${PV}.tar.gz \
 	   file://perfile_rpmdeps.sh \
 	   file://rpm-no-loop.patch \
 	  "
+
+SRC_URI[md5sum] = "a5deb83b451f11c04461c630937b1189"
+SRC_URI[sha256sum] = "701726a6ae8283fcabc308dae523ad9599388296a562db1b3d7d7c871641af7e"
 inherit autotools gettext
 
 acpaths = "-I ${S}/db/dist/aclocal -I ${S}/db/dist/aclocal_java"
diff --git a/meta/recipes-devtools/rsync/rsync_3.0.7.bb b/meta/recipes-devtools/rsync/rsync_3.0.7.bb
index 3a1e48a..971fd54 100644
--- a/meta/recipes-devtools/rsync/rsync_3.0.7.bb
+++ b/meta/recipes-devtools/rsync/rsync_3.0.7.bb
@@ -4,6 +4,9 @@ PR = "r1"
 
 SRC_URI += "file://acinclude.m4"
 
+SRC_URI[md5sum] = "b53525900817cf1ba7ad3a516ab5bfe9"
+SRC_URI[sha256sum] = "9ee00d16c023c486328cbb61f59928a954b24b7b7173c3517ebb0d6c3edfe7c8"
+
 EXTRA_OECONF += "--disable-xattr-support --disable-acl-support"
 
 # rsync 3.0 uses configure.sh instead of configure, and
diff --git a/meta/recipes-devtools/strace/strace_4.5.20.bb b/meta/recipes-devtools/strace/strace_4.5.20.bb
index bc08043..3dba59f 100644
--- a/meta/recipes-devtools/strace/strace_4.5.20.bb
+++ b/meta/recipes-devtools/strace/strace_4.5.20.bb
@@ -6,6 +6,9 @@ LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=4535377ede62550fdeaf39f595fd550a"
 PR = "r1"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/strace/strace-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "64dfe10d9db0c1e34030891695ffca4b"
+SRC_URI[sha256sum] = "ea8c059369eaa5ad90b246f34eab247d0ee48bfdee2670c7196320a4669ccabd"
 inherit autotools
 
 export INCLUDES = "-I. -I./linux"
diff --git a/meta/recipes-devtools/syslinux/syslinux_4.03.bb b/meta/recipes-devtools/syslinux/syslinux_4.03.bb
index 74e3f60..1fa318b 100644
--- a/meta/recipes-devtools/syslinux/syslinux_4.03.bb
+++ b/meta/recipes-devtools/syslinux/syslinux_4.03.bb
@@ -12,6 +12,9 @@ PR = "r0"
 SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/boot/syslinux/syslinux-${PV}.tar.bz2 \
            file://cross-build.patch"
 
+SRC_URI[md5sum] = "a7ca38a0a5786b6efae8fb01a1ae8070"
+SRC_URI[sha256sum] = "c65567e324f9d1f7f794ae8f9578a0292bbd47d7b8d895a004d2f0152d0bda38"
+
 COMPATIBLE_HOST = '(x86_64|i.86).*-(linux|freebsd.*)'
 
 EXTRA_OEMAKE = " \
diff --git a/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb b/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
index e69b413..a33a540 100644
--- a/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
+++ b/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
@@ -13,6 +13,9 @@ SRC_URI = "http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2 \
 	   file://fix_issue_caused_by_ccache.patch \
            file://fixed-perl-path.patch"
 
+SRC_URI[md5sum] = "b289c5f4ab8e39741602445f1dd09b34"
+SRC_URI[sha256sum] = "bc0f0153b5a47b986f1d8efa2c488e0aea85a1cf2c4b11c52be127903080285f"
+
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
 
 inherit autotools
diff --git a/meta/recipes-extended/at/at_3.1.12.bb b/meta/recipes-extended/at/at_3.1.12.bb
index 3be9489..e1df11e 100644
--- a/meta/recipes-extended/at/at_3.1.12.bb
+++ b/meta/recipes-extended/at/at_3.1.12.bb
@@ -17,6 +17,9 @@ SRC_URI = "${DEBIAN_MIRROR}/main/a/at/at_${PV}.orig.tar.gz \
     file://file_replacement_with_gplv2.patch \
     file://S99at"
 
+SRC_URI[md5sum] = "1e67991776148fb319fd77a2e599a765"
+SRC_URI[sha256sum] = "7c55c6ab4fbe8add9e68f31b2b0ebf3fe805c9a4e7cfb2623a3d8a4789cc18f3"
+
 EXTRA_OECONF += "ac_cv_path_SENDMAIL=/bin/true \
                  --with-daemon_username=root \
                  --with-daemon_groupname=root \
diff --git a/meta/recipes-extended/augeas/augeas_0.7.3.bb b/meta/recipes-extended/augeas/augeas_0.7.3.bb
index f9f6b38..2549f6c 100644
--- a/meta/recipes-extended/augeas/augeas_0.7.3.bb
+++ b/meta/recipes-extended/augeas/augeas_0.7.3.bb
@@ -1,3 +1,6 @@
 require augeas.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "d907943fc21c2d1db5dc8d97ec02a9e5"
+SRC_URI[sha256sum] = "10be72446699fdcaad66e800bd83a74b4af4da40348eaca04effd8677c11514a"
diff --git a/meta/recipes-extended/bash/bash_4.1.bb b/meta/recipes-extended/bash/bash_4.1.bb
index 6f0ced7..6a558ed 100644
--- a/meta/recipes-extended/bash/bash_4.1.bb
+++ b/meta/recipes-extended/bash/bash_4.1.bb
@@ -2,12 +2,37 @@ require bash.inc
 
 PR = "r0"
 
-SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz \
-           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-001;apply=yes;striplevel=0 \
-           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-002;apply=yes;striplevel=0 \
-           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-003;apply=yes;striplevel=0 \
-           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-004;apply=yes;striplevel=0 \
-           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-005;apply=yes;striplevel=0 \
-           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-006;apply=yes;striplevel=0 \
-           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-007;apply=yes;striplevel=0 \
+SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
+           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-001;apply=yes;striplevel=0;name=patch001 \
+           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-002;apply=yes;striplevel=0;name=patch002 \
+           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-003;apply=yes;striplevel=0;name=patch003 \
+           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-004;apply=yes;striplevel=0;name=patch004 \
+           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-005;apply=yes;striplevel=0;name=patch005 \
+           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-006;apply=yes;striplevel=0;name=patch006 \
+           http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-007;apply=yes;striplevel=0;name=patch007 \
            "
+
+SRC_URI[tarball.md5sum] = "9800d8724815fd84994d9be65ab5e7b8"
+SRC_URI[tarball.sha256sum] = "3f627124a83c6d34db503a923e20710d370573a29dd5d11d6f116d1aee7be1da"
+
+SRC_URI[patch001.md5sum] = "582dea5671b557f783e18629c2f77b68"
+SRC_URI[patch001.sha256sum] = "a6e47fa108f853d0f0999520509c11680d37c8b7823b92b96d431766dd620278"
+
+SRC_URI[patch002.md5sum] = "118d465095d4a4706eb1d34696a2666a"
+SRC_URI[patch002.sha256sum] = "322e229de186b3bd87dedabfbad8386716f103e87ff00cd1b2db844e0dff78f8"
+
+SRC_URI[patch003.md5sum] = "120f7cf039a40d35fe375e59d6f17adc"
+SRC_URI[patch003.sha256sum] = "91763dddbbb98c3ff7deb3faea3b3ad6e861e7bfd2e46c045c0d1d85d1b3256d"
+
+SRC_URI[patch004.md5sum] = "336ee037fc2cc1e2350b05097fbdc87c"
+SRC_URI[patch004.sha256sum] = "78c063ba34c1f390a5bf2e5727624ca2e253bbef49ce187cabb240eee7f4ff9e"
+
+SRC_URI[patch005.md5sum] = "9471e666797f0b03eb2175ed752a9550"
+SRC_URI[patch005.sha256sum] = "519639d8d1664be74d7ec15879d16337fe8c71af8d648b02f84ccdd4fb739c1a"
+
+SRC_URI[patch006.md5sum] = "fb80ccd58cb1e34940f3adf4ce6e4a1e"
+SRC_URI[patch006.sha256sum] = "5986abcf33c0b087bd5670f1ae6a6400a8ce6ab7e7c4de18b9826d0ee10f2c49"
+
+SRC_URI[patch007.md5sum] = "192a8b161d419a1d0d211169f1d1046e"
+SRC_URI[patch007.sha256sum] = "74012a2c28ba4fb532c3eb69155ac870aac8d53990fa4e1e52cdc173d4c205a7"
+
diff --git a/meta/recipes-extended/bc/bc_1.06.bb b/meta/recipes-extended/bc/bc_1.06.bb
index eaef5f3..02915e1 100644
--- a/meta/recipes-extended/bc/bc_1.06.bb
+++ b/meta/recipes-extended/bc/bc_1.06.bb
@@ -15,4 +15,7 @@ PR = "r0"
 
 SRC_URI = "${GNU_MIRROR}/bc/bc-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "d44b5dddebd8a7a7309aea6c36fda117"
+SRC_URI[sha256sum] = "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea72c0e33"
+
 inherit autotools
diff --git a/meta/recipes-extended/blktool/blktool_4-6.bb b/meta/recipes-extended/blktool/blktool_4-6.bb
index 3313b03..74169d6 100644
--- a/meta/recipes-extended/blktool/blktool_4-6.bb
+++ b/meta/recipes-extended/blktool/blktool_4-6.bb
@@ -5,8 +5,14 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://blktool.c;beginline=7;endline=8;md5=a5e798ea98fd50972088968a15e5f373"
 DEPENDS = "glib-2.0"
 
-SRC_URI = "${DEBIAN_MIRROR}/main/b/blktool/blktool_4.orig.tar.gz \
-           ${DEBIAN_MIRROR}/main/b/blktool/blktool_4-6.diff.gz;apply=yes"
+SRC_URI = "${DEBIAN_MIRROR}/main/b/blktool/blktool_4.orig.tar.gz;name=tarball \
+           ${DEBIAN_MIRROR}/main/b/blktool/blktool_4-6.diff.gz;apply=yes;name=patch"
+
+SRC_URI[tarball.md5sum] = "62edc09c9908107e69391c87f4f3fd40"
+SRC_URI[tarball.sha256sum] = "b1e6d5912546d2a4b704ec65c2b9664aa3b4663e7d800e06803330335a2cb764"
+
+SRC_URI[patch.md5sum] = "2d1bc2f2c38b65d47e27da7c7508d17f"
+SRC_URI[patch.sha256sum] = "999f2062203e389327d997724621be37bea9c98fa226238f9f4eb4a6ea25bd4b"
 
 PR = "r0"
 S = "${WORKDIR}/${PN}-4.orig"
diff --git a/meta/recipes-extended/byacc/byacc_20100610.bb b/meta/recipes-extended/byacc/byacc_20100610.bb
index 04cdd7c..f02a11b 100644
--- a/meta/recipes-extended/byacc/byacc_20100610.bb
+++ b/meta/recipes-extended/byacc/byacc_20100610.bb
@@ -3,5 +3,5 @@ LICENSE="other-BSD"
 LIC_FILES_CHKSUM = "file://package/debian/copyright;md5=4dc4c30f840a7203fb6edf20b3db849e"
 require byacc.inc
 
-SRC_URI[md5sum] = "b9715b9a2867c221176b597e8f73cbc9"
-SRC_URI[sha256sum] = "1364c7fe382de659e8b9841a1736b645345a460d2f4302303e80c02235a2a575"
+SRC_URI[md5sum] = "3063667be3bfcd844bdac9afd560954b"
+SRC_URI[sha256sum] = "02bcfb9262127fe23abe2c42f02de12c3ea51a9fffc9fb82ffa3bda7289d72c1"
diff --git a/meta/recipes-extended/bzip2/bzip2_1.0.6.bb b/meta/recipes-extended/bzip2/bzip2_1.0.6.bb
index 1e858f4..5e558a2 100644
--- a/meta/recipes-extended/bzip2/bzip2_1.0.6.bb
+++ b/meta/recipes-extended/bzip2/bzip2_1.0.6.bb
@@ -9,6 +9,9 @@ SRC_URI = "http://www.bzip.org/${PV}/${BPN}-${PV}.tar.gz \
            file://configure.ac \
 	   file://Makefile.am"
 
+SRC_URI[md5sum] = "00b516f4704d4a7cb50a1d97e6e8e15b"
+SRC_URI[sha256sum] = "a2848f34fcd5d6cf47def00461fcb528a0484d8edef8208d6d2e2909dc61d9cd"
+
 CFLAGS_append = " -fPIC -fpic -Winline -fno-strength-reduce -D_FILE_OFFSET_BITS=64"
 
 inherit autotools update-alternatives
diff --git a/meta/recipes-extended/cpio/cpio_2.11.bb b/meta/recipes-extended/cpio/cpio_2.11.bb
index 1948b61..7e82ec0 100644
--- a/meta/recipes-extended/cpio/cpio_2.11.bb
+++ b/meta/recipes-extended/cpio/cpio_2.11.bb
@@ -5,5 +5,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949"
 
 PR = "r0"
 
-SRC_URI[md5sum] = "20fc912915c629e809f80b96b2e75d7d"
-SRC_URI[sha256sum] = "bb820bfd96e74fc6ce43104f06fe733178517e7f5d1cdee553773e8eff7d5bbd"
+SRC_URI[md5sum] = "1112bb6c45863468b5496ba128792f6c"
+SRC_URI[sha256sum] = "601b1d774cd6e4cd39416203c91ec59dbd65dd27d79d75e1a9b89497ea643978"
diff --git a/meta/recipes-extended/cracklib/cracklib_2.8.18.bb b/meta/recipes-extended/cracklib/cracklib_2.8.18.bb
index 9789737..6c8577d 100644
--- a/meta/recipes-extended/cracklib/cracklib_2.8.18.bb
+++ b/meta/recipes-extended/cracklib/cracklib_2.8.18.bb
@@ -9,4 +9,7 @@ PR ="r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/cracklib/cracklib-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "79053ad8bc714a44cd660cb12116211b"
+SRC_URI[sha256sum] = "2b072f67f7267358459424c3ed70f7f5b70919118e6504a90d3bce37a67c1454"
+
 inherit autotools gettext
diff --git a/meta/recipes-extended/cronie/cronie_1.4.6.bb b/meta/recipes-extended/cronie/cronie_1.4.6.bb
index e9b146b..ae72466 100644
--- a/meta/recipes-extended/cronie/cronie_1.4.6.bb
+++ b/meta/recipes-extended/cronie/cronie_1.4.6.bb
@@ -18,6 +18,9 @@ PR = "r0"
 SRC_URI = "https://fedorahosted.org/releases/c/r/cronie/cronie-${PV}.tar.gz \
            file://crond.init"
 
+SRC_URI[md5sum] = "968e3d3e7c8e1d0588d533883482d3fa"
+SRC_URI[sha256sum] = "4435484c28a4452ee37db27182675660cdebf16d8956771b28c8a6f2e9c8048b"
+
 inherit autotools update-rc.d
 
 INITSCRIPT_NAME = "crond"
diff --git a/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb b/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
index 9c03eec..f1fde8a 100644
--- a/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
+++ b/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
@@ -8,6 +8,9 @@ SRC_URI = http://download.berlios.de/cwautomacros/cwautomacros-${PV}.tar.bz2
 
 PR = "r0"
 
+SRC_URI[md5sum] = "352b295897ddb30c0d7d0acdd0b2313a"
+SRC_URI[sha256sum] = "8f683713baa63e6b5c2ea72067f77cbacf0bee7d4efa907951c6bb5ac1ffd6b0"
+
 do_install() {
 	oe_runmake CWAUTOMACROSPREFIX=${D}${prefix} install
 }
diff --git a/meta/recipes-extended/diffutils/diffutils_2.8.1.bb b/meta/recipes-extended/diffutils/diffutils_2.8.1.bb
index 09df13b..801b5ff 100644
--- a/meta/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/meta/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -9,6 +9,9 @@ PR = "r4"
 
 SRC_URI = "${GNU_MIRROR}/diffutils/diffutils-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "71f9c5ae19b60608f6c7f162da86a428"
+SRC_URI[sha256sum] = "c5001748b069224dd98bf1bb9ee877321c7de8b332c8aad5af3e2a7372d23f5a"
+
 inherit autotools update-alternatives gettext
 
 # diffutils assumes non-glibc compilation with uclibc and
diff --git a/meta/recipes-extended/ed/ed_1.5.bb b/meta/recipes-extended/ed/ed_1.5.bb
index 2242ffa..8ea0e3f 100644
--- a/meta/recipes-extended/ed/ed_1.5.bb
+++ b/meta/recipes-extended/ed/ed_1.5.bb
@@ -13,6 +13,9 @@ PR = "r0"
 SRC_URI = "${GNU_MIRROR}/ed/ed-${PV}.tar.gz \
            file://ed-1.2-build.patch"
 
+SRC_URI[md5sum] = "e66c03d7e4c67b025d5b6093ec678267"
+SRC_URI[sha256sum] = "97dd34a49ebc9c97e414b90a087d63eafc41377a340848c97e75a9cba187fba1"
+
 do_configure() {
 	${S}/configure
 }
diff --git a/meta/recipes-extended/ethtool/ethtool_2.6.36.bb b/meta/recipes-extended/ethtool/ethtool_2.6.36.bb
index 9658f63..a345084 100644
--- a/meta/recipes-extended/ethtool/ethtool_2.6.36.bb
+++ b/meta/recipes-extended/ethtool/ethtool_2.6.36.bb
@@ -8,4 +8,7 @@ PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/gkernel/ethtool-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "3b2322695e9ee7bf447ebcdb85f93e83"
+SRC_URI[sha256sum] = "639622180fe48dc7bb117ffbf263395d7ae47aac9819b8d9f83ff053ecf17bdd"
+
 inherit autotools
diff --git a/meta/recipes-extended/findutils/findutils_4.4.2.bb b/meta/recipes-extended/findutils/findutils_4.4.2.bb
index 18514f3..cfc6546 100644
--- a/meta/recipes-extended/findutils/findutils_4.4.2.bb
+++ b/meta/recipes-extended/findutils/findutils_4.4.2.bb
@@ -6,6 +6,9 @@ SRC_URI += "file://01-27017.patch \
             file://02-28824.patch \
             file://03-28872.patch"
 
+SRC_URI[md5sum] = "351cc4adb07d54877fa15f75fb77d39f"
+SRC_URI[sha256sum] = "434f32d171cbc0a5e72cfc5372c6fc4cb0e681f8dce566a0de5b6fccd702b62a"
+
 # http://savannah.gnu.org/bugs/?27299
 EXTRA_OECONF += "gl_cv_func_wcwidth_works=yes"
 
diff --git a/meta/recipes-extended/gamin/gamin_0.1.10.bb b/meta/recipes-extended/gamin/gamin_0.1.10.bb
index 21f1da4..14aa8e7 100644
--- a/meta/recipes-extended/gamin/gamin_0.1.10.bb
+++ b/meta/recipes-extended/gamin/gamin_0.1.10.bb
@@ -12,6 +12,9 @@ PR = "r2"
 SRC_URI = "http://www.gnome.org/~veillard/gamin/sources/gamin-${PV}.tar.gz \
            file://no-abstract-sockets.patch"
 
+SRC_URI[md5sum] = "b4ec549e57da470c04edd5ec2876a028"
+SRC_URI[sha256sum] = "28085f0ae8be10eab582ff186af4fb0be92cc6c62b5cc19cd09b295c7c2899a1"
+
 inherit autotools pkgconfig
 
 EXTRA_OECONF = "--without-python"
diff --git a/meta/recipes-extended/gawk/gawk_3.1.8.bb b/meta/recipes-extended/gawk/gawk_3.1.8.bb
index c3fbe0e..7c83ed5 100644
--- a/meta/recipes-extended/gawk/gawk_3.1.8.bb
+++ b/meta/recipes-extended/gawk/gawk_3.1.8.bb
@@ -15,6 +15,9 @@ PR = "r0"
 
 SRC_URI = "${GNU_MIRROR}/gawk/gawk-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "35937a0f83f0efe7a8c2dee635624784"
+SRC_URI[sha256sum] = "2146b3cc7a2d2b16a9457e73f14a3cb51a4292575425ed8f16f7e0a5e4f1a50d"
+
 inherit autotools gettext update-alternatives
 
 PACKAGES += "gawk-common pgawk"
diff --git a/meta/recipes-extended/gperf/gperf_3.0.4.bb b/meta/recipes-extended/gperf/gperf_3.0.4.bb
index ee532c9..c2942cd 100644
--- a/meta/recipes-extended/gperf/gperf_3.0.4.bb
+++ b/meta/recipes-extended/gperf/gperf_3.0.4.bb
@@ -1,3 +1,6 @@
 require gperf.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "c1f1db32fb6598d6a93e6e88796a8632"
+SRC_URI[sha256sum] = "767112a204407e62dbc3106647cf839ed544f3cf5d0f0523aaa2508623aad63e"
diff --git a/meta/recipes-extended/groff/groff_1.18.1.4.bb b/meta/recipes-extended/groff/groff_1.18.1.4.bb
index b78cbfa..0c4e1a6 100644
--- a/meta/recipes-extended/groff/groff_1.18.1.4.bb
+++ b/meta/recipes-extended/groff/groff_1.18.1.4.bb
@@ -15,6 +15,9 @@ SRC_URI = "ftp://ftp.gnu.org/gnu/groff/groff-${PV}.tar.gz \
 inherit autotools
 
 EXTRA_OECONF="--without-x --prefix=${D} --exec-prefix=${D} --bindir=${D}${bindir} --datadir=${D}${datadir} --mandir=${D}${datadir}/man --infodir=${D}${datadir}info --with-appresdir=${D}${datadir}"
+
+SRC_URI[md5sum] = "ceecb81533936d251ed015f40e5f7287"
+SRC_URI[sha256sum] = "ff3c7c3b6cae5e8cc5062a144de5eff0022e8e970e1774529cc2d5dde46ce50d"
 PARALLEL_MAKE = ""
 
 
diff --git a/meta/recipes-extended/gzip/gzip_1.4.bb b/meta/recipes-extended/gzip/gzip_1.4.bb
index 93020ba..ab8a744 100644
--- a/meta/recipes-extended/gzip/gzip_1.4.bb
+++ b/meta/recipes-extended/gzip/gzip_1.4.bb
@@ -3,3 +3,6 @@ require gzip.inc
 PR = "r0"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "e381b8506210c794278f5527cba0e765"
+SRC_URI[sha256sum] = "d166cfd3da380da1bd535633e8890bfb5664f9e68870a611d1dc01a3e9f711ee"
diff --git a/meta/recipes-extended/hdparm/hdparm_6.3.bb b/meta/recipes-extended/hdparm/hdparm_6.3.bb
index 0f69a3f..a652302 100644
--- a/meta/recipes-extended/hdparm/hdparm_6.3.bb
+++ b/meta/recipes-extended/hdparm/hdparm_6.3.bb
@@ -9,6 +9,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/hdparm/hdparm-${PV}.tar.gz \
 	   file://bswap.patch;patch=1 \
 	   file://uclibc.patch;patch=1"
 
+SRC_URI[md5sum] = "0c12672f3a09c14ad0b0882f15fc9389"
+SRC_URI[sha256sum] = "08688a6a46ba495494bf838f8f26103e797584c1888eca94e43a171e1b37246d"
+
 do_install () {
 	install -d ${D}/${sbindir} ${D}/${mandir}/man8
 	oe_runmake 'DESTDIR=${D}' install
diff --git a/meta/recipes-extended/iptables/iptables_1.4.9.bb b/meta/recipes-extended/iptables/iptables_1.4.9.bb
index ad707d3..55736fd 100644
--- a/meta/recipes-extended/iptables/iptables_1.4.9.bb
+++ b/meta/recipes-extended/iptables/iptables_1.4.9.bb
@@ -20,6 +20,9 @@ FILES_${PN}-dbg =+ "${libexecdir}/xtables/.debug"
 
 SRC_URI = "http://netfilter.org/projects/iptables/files/iptables-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "db1312f7ce5a4c11dc981a2ac76b26e8"
+SRC_URI[sha256sum] = "1ac719d6265cf64220c80c0974ed9d35febdac2986bb96eeaa9c8c7959a1d306"
+
 inherit autotools
 
 EXTRA_OECONF = "--with-kernel=${STAGING_INCDIR} \
diff --git a/meta/recipes-extended/iputils/iputils_s20100418.bb b/meta/recipes-extended/iputils/iputils_s20100418.bb
index bdb5265..f7458ac 100644
--- a/meta/recipes-extended/iputils/iputils_s20100418.bb
+++ b/meta/recipes-extended/iputils/iputils_s20100418.bb
@@ -23,6 +23,9 @@ SRC_URI = "http://www.skbuff.net/iputils/${PN}-${PV}.tar.bz2 \
            file://debian/CVE-2010-2529.diff \
           "
 
+SRC_URI[md5sum] = "df6b0062118cdc5c62e3c810f831e976"
+SRC_URI[sha256sum] = "d0e8cbe6ce6a484ffb81697425b3b933746882f6f1521ac71c5c88971cee7684"
+
 # man is not compiled here, since it requires docbook-utils-native
 # which is not available in poky
 
diff --git a/meta/recipes-extended/less/less_436.bb b/meta/recipes-extended/less/less_436.bb
index 872a127..7364631 100644
--- a/meta/recipes-extended/less/less_436.bb
+++ b/meta/recipes-extended/less/less_436.bb
@@ -14,6 +14,9 @@ PR = "r0"
 
 SRC_URI = "http://www.greenwoodsoftware.com/${PN}/${PN}-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "817bf051953ad2dea825a1cdf460caa4"
+SRC_URI[sha256sum] = "57a16ff07431a9af45cf1cd5b374e1066d019304219f0d156e22bb8c4d6734d2"
+
 
 inherit autotools update-alternatives
 
diff --git a/meta/recipes-extended/libaio/libaio_0.3.107.bb b/meta/recipes-extended/libaio/libaio_0.3.107.bb
index 32d52ad..4797b50 100644
--- a/meta/recipes-extended/libaio/libaio_0.3.107.bb
+++ b/meta/recipes-extended/libaio/libaio_0.3.107.bb
@@ -11,6 +11,9 @@ SRC_URI = "${DEBIAN_MIRROR}/main/liba/libaio/libaio_${PV}.orig.tar.gz \
            file://toolchain.patch \
            file://destdir.patch"
 
+SRC_URI[md5sum] = "db32c19c61ca937bcb1ba48da9180682"
+SRC_URI[sha256sum] = "e6ad9246d7cd615d90fb3d231eec94111a36a85e9ffc759ac6bdab1a03995f27"
+
 EXTRA_OEMAKE =+ "prefix=${prefix} includedir=${includedir} libdir=${libdir}"
 
 do_install () {
diff --git a/meta/recipes-extended/libidn/libidn_1.19.bb b/meta/recipes-extended/libidn/libidn_1.19.bb
index 2e29ade..3edea65 100644
--- a/meta/recipes-extended/libidn/libidn_1.19.bb
+++ b/meta/recipes-extended/libidn/libidn_1.19.bb
@@ -12,6 +12,9 @@ inherit pkgconfig autotools gettext
 
 SRC_URI = "http://ftp.gnu.org/gnu/libidn/${P}.tar.gz"
 
+SRC_URI[md5sum] = "a45142126d28162014c995f969bdb5a8"
+SRC_URI[sha256sum] = "8ed2e936b1ae3e30b45b54ca3672deaa83ee0f4d20db5ad83dc1af7222d39f41"
+
 # command tool is under GPLv3+, while libidn itself is under LGPLv2.1+
 # so package command into a separate package
 PACKAGES =+ "idn"
diff --git a/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb b/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb
index dc64799..c4ca0c0 100644
--- a/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb
+++ b/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb
@@ -10,4 +10,7 @@ PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/libtirpc/libtirpc-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "d77eb15f464bf9d6e66259eaf78b2a4e"
+SRC_URI[sha256sum] = "ea77cadd63941fc4edbee7863d2c7094e6a18263d2a2c8922319aee91352ff41"
+
 inherit autotools
diff --git a/meta/recipes-extended/libuser/libuser_0.56.18.bb b/meta/recipes-extended/libuser/libuser_0.56.18.bb
index d72430e..55c82a7 100644
--- a/meta/recipes-extended/libuser/libuser_0.56.18.bb
+++ b/meta/recipes-extended/libuser/libuser_0.56.18.bb
@@ -11,6 +11,9 @@ SECTION = "base"
 
 SRC_URI = "https://fedorahosted.org/releases/l/i/libuser/libuser-${PV}.tar.xz \
            file://disable-sgml-doc.patch;patch=1"
+
+SRC_URI[md5sum] = "de074409153f690821d9340cb33ee435"
+SRC_URI[sha256sum] = "fc23d744f6853c213adb619cfb5b22c49a9ea8a5a75a1e4121f71b28cffa3a74"
 PR = "r0"
 
 DEPENDS = "gettext libpam glib-2.0 xz-native"
diff --git a/meta/recipes-extended/lighttpd/lighttpd_1.4.28.bb b/meta/recipes-extended/lighttpd/lighttpd_1.4.28.bb
index f85c3c4..d43766c 100644
--- a/meta/recipes-extended/lighttpd/lighttpd_1.4.28.bb
+++ b/meta/recipes-extended/lighttpd/lighttpd_1.4.28.bb
@@ -24,6 +24,9 @@ SRC_URI = "http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-${PV}.t
         file://lighttpd \
 "
 
+SRC_URI[src.md5sum] = "202d36efc6324adb95a3600d2826ec6a"
+SRC_URI[src.sha256sum] = "efd7623f43182723b99c51d57a24158e22a207cd90dca35aaf3b2e3bac115712"
+
 EXTRA_OECONF = " \
              --without-bzip2 \
              --without-ldap \
diff --git a/meta/recipes-extended/logrotate/logrotate_3.7.9.bb b/meta/recipes-extended/logrotate/logrotate_3.7.9.bb
index f657d78..ce899ca 100644
--- a/meta/recipes-extended/logrotate/logrotate_3.7.9.bb
+++ b/meta/recipes-extended/logrotate/logrotate_3.7.9.bb
@@ -11,6 +11,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=18810669f13b87348459e611d31ab760"
 
 SRC_URI = "https://fedorahosted.org/releases/l/o/logrotate/logrotate-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "eeba9dbca62a9210236f4b83195e4ea5"
+SRC_URI[sha256sum] = "080caf904e70e04da16b8dfa95a5a787ec7d722ee1af18ccea437d3ffdd6fec0"
+
 
 EXTRA_OEMAKE = "CC='${CC}'"
 
diff --git a/meta/recipes-extended/lsb/lsb_1.4.bb b/meta/recipes-extended/lsb/lsb_1.4.bb
index bc47c22..a574c3b 100644
--- a/meta/recipes-extended/lsb/lsb_1.4.bb
+++ b/meta/recipes-extended/lsb/lsb_1.4.bb
@@ -8,6 +8,9 @@ PR = "r0"
 LIC_FILES_CHKSUM = "file://README;md5=12da544b1a3a5a1795a21160b49471cf"
 
 SRC_URI = "http://cdnetworks-kr-1.dl.sourceforge.net/project/lsb/lsb_release/${PV}/lsb-release-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "30537ef5a01e0ca94b7b8eb6a36bb1e4"
+SRC_URI[sha256sum] = "99321288f8d62e7a1d485b7c6bdccf06766fb8ca603c6195806e4457fdf17172"
 S = ${WORKDIR}/lsb-release-${PV}
 
 do_install(){
diff --git a/meta/recipes-extended/lsof/lsof_4.84.bb b/meta/recipes-extended/lsof/lsof_4.84.bb
index 2748135..f9d3fe1 100644
--- a/meta/recipes-extended/lsof/lsof_4.84.bb
+++ b/meta/recipes-extended/lsof/lsof_4.84.bb
@@ -5,6 +5,9 @@ LICENSE = "BSD"
 PR = "r0"
 
 SRC_URI = "ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "a09326df500ef7e4550af546868338d6"
+SRC_URI[sha256sum] = "20893a2d9b443fba519602f05692d5f72054a9f6dc1236bcb2616cc5330dc725"
 LOCALSRC = "file://${WORKDIR}/lsof_${PV}/lsof_${PV}_src.tar"
 S = "${WORKDIR}/lsof_${PV}_src"
 
diff --git a/meta/recipes-extended/man-pages/man-pages_3.25.bb b/meta/recipes-extended/man-pages/man-pages_3.25.bb
index 291886b..83e23ed 100644
--- a/meta/recipes-extended/man-pages/man-pages_3.25.bb
+++ b/meta/recipes-extended/man-pages/man-pages_3.25.bb
@@ -8,6 +8,9 @@ PR = "r0"
 LIC_FILES_CHKSUM = "file://README;md5=9dab010c5baa416669e5d17381799dd5"
 SRC_URI = "http://www.kernel.org/pub/linux/docs/man-pages/Archive/${PN}-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "98ec2324abea77d7a992470dd44d140c"
+SRC_URI[sha256sum] = "474242842a78dc2121687b7db6c32b6c78af5458f2bd809e23563dd185e2b169"
+
 RDEPENDS = "man"
 
 do_configure_prepend() {
diff --git a/meta/recipes-extended/man/man_1.6e.bb b/meta/recipes-extended/man/man_1.6e.bb
index 1ac1097..905f6df 100644
--- a/meta/recipes-extended/man/man_1.6e.bb
+++ b/meta/recipes-extended/man/man_1.6e.bb
@@ -37,6 +37,9 @@ SRC_URI = "http://primates.ximian.com/~flucifredi/man/man-1.6e.tar.gz \
            file://man-1.6e-lzma+xz-support.patch;striplevel=1 \
            file://man*"
 
+SRC_URI[md5sum] = "d8187cd756398baefc48ba7d60ff6a8a"
+SRC_URI[sha256sum] = "022faf23844eabb3662eabb105836925dd83bedda10271e2450a5bc5b61a5b5f"
+
 
 do_configure () {
         ${S}/configure -default -confdir ${D}/etc +sgid +fhs +lang all
diff --git a/meta/recipes-extended/mc/mc_4.7.3.bb b/meta/recipes-extended/mc/mc_4.7.3.bb
index 8fd16b1..22a1a93 100644
--- a/meta/recipes-extended/mc/mc_4.7.3.bb
+++ b/meta/recipes-extended/mc/mc_4.7.3.bb
@@ -8,6 +8,9 @@ RDEPENDS = "ncurses-terminfo"
 
 SRC_URI = "http://www.midnight-commander.org/downloads/${PN}-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "42eb806d733b11d0d13ff7ee5fd1a03c"
+SRC_URI[sha256sum] = "4815184f28218a43080e4a425b5cd4e159277a10c56ff06d29bf441828fe5927"
+
 inherit autotools gettext
 
 EXTRA_OECONF = "--with-screen=ncurses --without-gpm-mouse --without-x --without-samba"
diff --git a/meta/recipes-extended/mdadm/mdadm_3.1.4.bb b/meta/recipes-extended/mdadm/mdadm_3.1.4.bb
index 94c4f6c..99ca336 100644
--- a/meta/recipes-extended/mdadm/mdadm_3.1.4.bb
+++ b/meta/recipes-extended/mdadm/mdadm_3.1.4.bb
@@ -13,6 +13,9 @@ PR = "r1"
 SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/raid/mdadm/${PN}-${PV}.tar.bz2 \
 	   file://fix-z-now.patch;striplevel=0"
 
+SRC_URI[md5sum] = "0e7dcb5cc4192ae3abd9956bac475576"
+SRC_URI[sha256sum] = "849ad0ad4ad3c1d2d8806a16b30e1f59ab2daf313cb103807207f7cba889ea63"
+
 CFLAGS += "-fno-strict-aliasing"
 
 inherit autotools
diff --git a/meta/recipes-extended/mingetty/mingetty_1.08.bb b/meta/recipes-extended/mingetty/mingetty_1.08.bb
index 2b93bb4..26eb98f 100644
--- a/meta/recipes-extended/mingetty/mingetty_1.08.bb
+++ b/meta/recipes-extended/mingetty/mingetty_1.08.bb
@@ -8,6 +8,9 @@ PR = "r0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0c56db0143f4f80c369ee3af7425af6e"
 SRC_URI = "http://cdnetworks-kr-1.dl.sourceforge.net/project/mingetty/mingetty/${PV}/mingetty-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "2a75ad6487ff271424ffc00a64420990"
+SRC_URI[sha256sum] = "0f55c90ba4faa913d91ef99cbf5cb2eb4dbe2780314c3bb17953f849c8cddd17"
+
 EXTRA_OEMAKE = "CC='${CC}'"
 
 do_install(){
diff --git a/meta/recipes-extended/minicom/minicom_2.4.bb b/meta/recipes-extended/minicom/minicom_2.4.bb
index 439dbd7..fbe2d30 100644
--- a/meta/recipes-extended/minicom/minicom_2.4.bb
+++ b/meta/recipes-extended/minicom/minicom_2.4.bb
@@ -9,14 +9,14 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=420477abc567404debca0a2a1cb6b645 \
 SRC_URI = "http://alioth.debian.org/frs/download.php/3195/minicom-${PV}.tar.gz \
 	file://rename-conflicting-functions.patch \
 	"
-
 #	file://gcc4-scope.patch;patch=1 \
 
+SRC_URI[md5sum] = "700976a3c2dcc8bbd50ab9bb1c08837b"
+SRC_URI[sha256sum] = "6b7af240b073ba847b091fd75aed4bf720eb94d30e188d23bb098d016bf40a48"
+
 inherit autotools gettext
 
 do_install() {
 	for d in doc extras man lib src; do make -C $d DESTDIR=${D} install; done
 }
 
-SRC_URI[md5sum] = "700976a3c2dcc8bbd50ab9bb1c08837b"
-SRC_URI[sha256sum] = "700976a3c2dcc8bbd50ab9bb1c08837b"
diff --git a/meta/recipes-extended/mktemp/mktemp_1.7.bb b/meta/recipes-extended/mktemp/mktemp_1.7.bb
index a348274..41ee10c 100644
--- a/meta/recipes-extended/mktemp/mktemp_1.7.bb
+++ b/meta/recipes-extended/mktemp/mktemp_1.7.bb
@@ -11,6 +11,9 @@ SRC_URI = "ftp://ftp.mktemp.org/pub/mktemp/${P}.tar.gz \
         file://disable-strip.patch \
         "
 
+SRC_URI[md5sum] = "787bbed9fa2ee8e7645733c0e8e65172"
+SRC_URI[sha256sum] = "8e94b9e1edf866b2609545da65b627996ac5d158fda071e492bddb2f4a482675"
+
 inherit autotools update-alternatives
 
 EXTRA_OECONF = "--with-libc"
diff --git a/meta/recipes-extended/net-tools/net-tools_1.60-23.bb b/meta/recipes-extended/net-tools/net-tools_1.60-23.bb
index 031169c..843b020 100644
--- a/meta/recipes-extended/net-tools/net-tools_1.60-23.bb
+++ b/meta/recipes-extended/net-tools/net-tools_1.60-23.bb
@@ -6,13 +6,19 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b \
                     file://ifconfig.c;startline=11;endline=15;md5=da4c7bb79a5d0798faa99ef869721f4a"
 PR = "r0"
 
-SRC_URI = "ftp://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60.orig.tar.gz \
-           ftp://ftp.debian.org/debian/pool/main/n/net-tools/${PN}_${PV}.diff.gz;apply=no \
+SRC_URI = "ftp://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60.orig.tar.gz;name=tarball \
+           ftp://ftp.debian.org/debian/pool/main/n/net-tools/${PN}_${PV}.diff.gz;apply=no;name=patch \
            file://net-tools-config.h \
            file://net-tools-config.make" 
 
 S = "${WORKDIR}/net-tools-1.60"
 
+SRC_URI[tarball.md5sum] = "ecaf37acb5b5daff4bdda77785fd916d"
+SRC_URI[tarball.sha256sum] = "ec67967cf7b1a3a3828a84762fbc013ac50ee5dc9aa3095d5c591f302c2de0f5"
+
+SRC_URI[patch.md5sum] = "2412e55c20308d5fbd28bfadd18c075f"
+SRC_URI[patch.sha256sum] = "d678b3ea97d6c7ca548918994642bfc6b5511ab02f3a5881dfcca00c88bfd73b"
+
 inherit gettext
 
 # The Makefile is lame, no parallel build
diff --git a/meta/recipes-extended/parted/parted_1.9.0.bb b/meta/recipes-extended/parted/parted_1.9.0.bb
index 96253b2..3601fb1 100644
--- a/meta/recipes-extended/parted/parted_1.9.0.bb
+++ b/meta/recipes-extended/parted/parted_1.9.0.bb
@@ -10,6 +10,9 @@ SRC_URI = "${GNU_MIRROR}/parted/parted-${PV}.tar.gz \
            file://no_check.patch;patch=1 \
            file://syscalls.patch;patch=1 "
 
+SRC_URI[md5sum] = "055305bc7bcf472ce38f9abf69a9d94d"
+SRC_URI[sha256sum] = "53231241ba24c104c207bd2920d70d31fda86df86a69c90e11f35144ffc55509"
+
 EXTRA_OECONF = "--disable-Werror --disable-device-mapper"
 
 inherit autotools pkgconfig gettext
diff --git a/meta/recipes-extended/pax/pax_3.4.bb b/meta/recipes-extended/pax/pax_3.4.bb
index 32804ba..6710216 100644
--- a/meta/recipes-extended/pax/pax_3.4.bb
+++ b/meta/recipes-extended/pax/pax_3.4.bb
@@ -13,4 +13,7 @@ PR = "r0"
 
 SRC_URI = "ftp://ftp.suse.com/pub/people/kukuk/pax/pax-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "fbd9023b590b45ac3ade95870702a0d6"
+SRC_URI[sha256sum] = "ac3c06048e02828077cf7757d3d142241429238893b91d529af29a2e8cc5623b"
+
 inherit autotools
diff --git a/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb b/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb
index 6f6e75c..660beec 100644
--- a/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb
+++ b/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb
@@ -6,6 +6,9 @@ PR = "r0"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Convert-ASN1-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "6f5c45724db1b09911e489275d19d0f5"
+SRC_URI[sha256sum] = "94e37fcb52148355cf9a0e96518c82bbb80b0b97adcce88bdb87766ca1cf9e45"
+
 S = "${WORKDIR}/Convert-ASN1-${PV}"
 
 inherit cpan
diff --git a/meta/recipes-extended/procps/procps_3.2.8.bb b/meta/recipes-extended/procps/procps_3.2.8.bb
index 32d8124..f694612 100644
--- a/meta/recipes-extended/procps/procps_3.2.8.bb
+++ b/meta/recipes-extended/procps/procps_3.2.8.bb
@@ -19,6 +19,9 @@ SRC_URI += "file://procmodule.patch \
 	    file://procps-3.2.8+gmake-3.82.patch \
 	    "
 
+SRC_URI[md5sum] = "9532714b6846013ca9898984ba4cd7e0"
+SRC_URI[sha256sum] = "11ed68d8a4433b91cd833deb714a3aa849c02aea738c42e6b4557982419c1535"
+
 FILES = "${bindir}/top.${PN} ${base_bindir}/ps.${PN} ${bindir}/uptime.${PN} ${base_bindir}/kill.${PN} \
 	 ${bindir}/free.${PN} ${bindir}/w ${bindir}/watch ${bindir}/pgrep ${bindir}/pmap ${bindir}/pwdx \
 	 ${bindir}/snice ${bindir}/vmstat ${bindir}/slabtop ${bindir}/pkill ${bindir}/skill ${bindir}/tload \
diff --git a/meta/recipes-extended/psmisc/psmisc_22.2.bb b/meta/recipes-extended/psmisc/psmisc_22.2.bb
index c9db90e..3a7059a 100644
--- a/meta/recipes-extended/psmisc/psmisc_22.2.bb
+++ b/meta/recipes-extended/psmisc/psmisc_22.2.bb
@@ -2,3 +2,6 @@ require psmisc.inc
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 PR = "r1"
+
+SRC_URI[md5sum] = "77737c817a40ef2c160a7194b5b64337"
+SRC_URI[sha256sum] = "6bca237485a352362133792e000a3c8e367a26b0312c5c607db7c2a97717d15f"
diff --git a/meta/recipes-extended/quota/quota_4.00-pre1.bb b/meta/recipes-extended/quota/quota_4.00-pre1.bb
index 486f81e..11651f7 100644
--- a/meta/recipes-extended/quota/quota_4.00-pre1.bb
+++ b/meta/recipes-extended/quota/quota_4.00-pre1.bb
@@ -10,6 +10,9 @@ PR = "r0"
 
 SRC_URI = "http://downloads.sourceforge.net/project/linuxquota/quota-tools/${PV}/quota-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "ef9d66e8a968ecffd2d9df648fa8ada2"
+SRC_URI[sha256sum] = "181a9b90b10bbffaaf9a18e7fef96a5752ab20f7b72d81c472166ab32e415994"
+
 S = ${WORKDIR}/quota-tools
 
 inherit autotools
diff --git a/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb b/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb
index a8c6006..492ff83 100644
--- a/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb
+++ b/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb
@@ -13,6 +13,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/rpcbind/rpcbind-${PV}.tar.bz2 \
            file://fix_host_path.patch \
           "
 
+SRC_URI[md5sum] = "1a77ddb1aaea8099ab19c351eeb26316"
+SRC_URI[sha256sum] = "c92f263e0353887f16379d7708ef1fb4c7eedcf20448bc1e4838f59497a00de3"
+
 PR = "r1"
 
 inherit autotools
diff --git a/meta/recipes-extended/screen/screen_4.0.3.bb b/meta/recipes-extended/screen/screen_4.0.3.bb
index a3eb825..31c4970 100644
--- a/meta/recipes-extended/screen/screen_4.0.3.bb
+++ b/meta/recipes-extended/screen/screen_4.0.3.bb
@@ -12,10 +12,16 @@ SECTION = "console/utils"
 DEPENDS = "ncurses"
 PR = "r0"
 
-SRC_URI = "${GNU_MIRROR}/screen/screen-${PV}.tar.gz \
-           ${DEBIAN_MIRROR}/main/s/screen/screen_4.0.3-11+lenny1.diff.gz \
+SRC_URI = "${GNU_MIRROR}/screen/screen-${PV}.tar.gz;name=tarball \
+           ${DEBIAN_MIRROR}/main/s/screen/screen_4.0.3-11+lenny1.diff.gz;name=patch \
            file://configure.patch"
 
+SRC_URI[tarball.md5sum] = "8506fd205028a96c741e4037de6e3c42"
+SRC_URI[tarball.sha256sum] = "78f0d5b1496084a5902586304d4a73954b2bfe33ea13edceecf21615c39e6c77"
+
+SRC_URI[patch.md5sum] = "9bacd9be1d9c57e2e0381df2775b33e0"
+SRC_URI[patch.sha256sum] = "19130d097e9ed897c84a2c640634dd36ee3233c17b0bf5d18549ed1e064b3073"
+
 inherit autotools
 
 EXTRA_OECONF = "--with-pty-mode=0620 --with-pty-group=5"
diff --git a/meta/recipes-extended/sed/sed_4.2.1.bb b/meta/recipes-extended/sed/sed_4.2.1.bb
index 734b1e0..045fd66 100644
--- a/meta/recipes-extended/sed/sed_4.2.1.bb
+++ b/meta/recipes-extended/sed/sed_4.2.1.bb
@@ -10,6 +10,9 @@ DEPENDS = "gettext"
 
 SRC_URI = "${GNU_MIRROR}/sed/sed-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "f0fd4d7da574d4707e442285fd2d3b86"
+SRC_URI[sha256sum] = "8773541ce097fdc4c5b9e7da12a82dffbb30cd91f7bc169f52f05f93b7fc3060"
+
 inherit autotools update-alternatives
 
 do_install () {
diff --git a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb b/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
index bc00c09..ca5f533 100644
--- a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
+++ b/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
@@ -8,4 +8,7 @@ SRC_URI += "file://shadow.automake-1.11.patch \
 	    file://shadow-4.1.4.2-groupmod-pam-check.patch \
 	    file://shadow-4.1.4.2-su_no_sanitize_env.patch"
 
+SRC_URI[md5sum] = "d593a9cab93c48ee0a6ba056db8c1997"
+SRC_URI[sha256sum] = "97987f6a7967a85e6aa0dba2a1d52db8bd69af5a717391de5693db768fb78990"
+
 EXTRA_OECONF_libc-uclibc += " --with-nscd=no "
diff --git a/meta/recipes-extended/sysklogd/sysklogd_1.5.bb b/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
index 75c1147..040f052 100644
--- a/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
+++ b/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
@@ -1,2 +1,5 @@
 require sysklogd.inc
 PR = "r2"
+
+SRC_URI[md5sum] = "e053094e8103165f98ddafe828f6ae4b"
+SRC_URI[sha256sum] = "6169b8e91d29288e90404f01462b69e7f2afb1161aa419826fe4736c7f9eb773"
diff --git a/meta/recipes-extended/sysstat/sysstat_9.1.5.bb b/meta/recipes-extended/sysstat/sysstat_9.1.5.bb
index d7b7e66..a9071b3 100644
--- a/meta/recipes-extended/sysstat/sysstat_9.1.5.bb
+++ b/meta/recipes-extended/sysstat/sysstat_9.1.5.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 PR = "r0"
 
 
+
+SRC_URI[md5sum] = "b680828159b5158094b9bf1ebad30e90"
+SRC_URI[sha256sum] = "2a567a35511ddb873169ad3345f4e6a6219d39750638bf804027342ef89cb3e0"
diff --git a/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb b/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb
index 308a8b6..ec937c7 100644
--- a/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb
+++ b/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb
@@ -42,6 +42,9 @@ SRC_URI = "ftp://ftp.porcupine.org/pub/security/tcp_wrappers_${PV}.tar.gz \
            file://try-from.8 \
            file://safe_finger.8"
 
+SRC_URI[md5sum] = "e6fa25f71226d090f34de3f6b122fb5a"
+SRC_URI[sha256sum] = "9543d7adedf78a6de0b221ccbbd1952e08b5138717f4ade814039bb489a4315d"
+
 S = "${WORKDIR}/tcp_wrappers_${PV}"
 
 PARALLEL_MAKE = ""
diff --git a/meta/recipes-extended/time/time_1.7.bb b/meta/recipes-extended/time/time_1.7.bb
index 1030489..e82077f 100644
--- a/meta/recipes-extended/time/time_1.7.bb
+++ b/meta/recipes-extended/time/time_1.7.bb
@@ -2,6 +2,9 @@ require time.inc
 
 SRC_URI = "${GNU_MIRROR}/time/time-${PV}.tar.gz \
 	   file://debian.patch;patch=1"
+
+SRC_URI[md5sum] = "e38d2b8b34b1ca259cf7b053caac32b3"
+SRC_URI[sha256sum] = "e37ea79a253bf85a85ada2f7c632c14e481a5fd262a362f6f4fd58e68601496d"
 #	   file://autofoo.patch;patch=1 \
 #	   file://compile.patch;patch=1"
 S = "${WORKDIR}/time-${PV}"
diff --git a/meta/recipes-extended/tzdata/tzdata_2010o.bb b/meta/recipes-extended/tzdata/tzdata_2010o.bb
index cd3e759..882d67a 100644
--- a/meta/recipes-extended/tzdata/tzdata_2010o.bb
+++ b/meta/recipes-extended/tzdata/tzdata_2010o.bb
@@ -15,6 +15,9 @@ RCONFLICTS= "timezones timezone-africa timezone-america timezone-antarctica \
 
 SRC_URI = "ftp://elsie.nci.nih.gov/pub/tzdata${PV}.tar.gz"
 
+SRC_URI[md5sum] = "5cae5c56fad81dc29f8fcd933a05768e"
+SRC_URI[sha256sum] = "cd0f3799688b3b870cd988505e47c2975b1808e73ec0677bc9db4b705b534c07"
+
 S = "${WORKDIR}"
 
 TZONES= "africa antarctica asia australasia europe northamerica southamerica  \
diff --git a/meta/recipes-extended/unzip/unzip_6.0.bb b/meta/recipes-extended/unzip/unzip_6.0.bb
index 069dfb8..ccdd372 100644
--- a/meta/recipes-extended/unzip/unzip_6.0.bb
+++ b/meta/recipes-extended/unzip/unzip_6.0.bb
@@ -7,6 +7,9 @@ PE = "1"
 PR = "r0"
 
 SRC_URI = "ftp://ftp.info-zip.org/pub/infozip/src/unzip60.tgz"
+
+SRC_URI[md5sum] = "62b490407489521db863b523a7f86375"
+SRC_URI[sha256sum] = "036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37"
 S = "${WORKDIR}/unzip60"
 
 export LD = "${CC}"
diff --git a/meta/recipes-extended/watchdog/watchdog_5.9.bb b/meta/recipes-extended/watchdog/watchdog_5.9.bb
index c768077..d625924 100644
--- a/meta/recipes-extended/watchdog/watchdog_5.9.bb
+++ b/meta/recipes-extended/watchdog/watchdog_5.9.bb
@@ -11,6 +11,9 @@ PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/watchdog/watchdog-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "d7cae3c9829f5d9a680764f314234867"
+SRC_URI[sha256sum] = "60d8e9180b8800e1b2386553a9f63a026bddad4997d21790f7c5dde7e77065ec"
+
 inherit autotools
 
 RRECOMMENDS_${PN} = "kernel-module-softdog"
diff --git a/meta/recipes-extended/which/which_2.20.bb b/meta/recipes-extended/which/which_2.20.bb
index 6efb24f..f8c9bf4 100644
--- a/meta/recipes-extended/which/which_2.20.bb
+++ b/meta/recipes-extended/which/which_2.20.bb
@@ -13,6 +13,9 @@ PR = "r1"
 SRC_URI = "http://ftp.gnu.org/gnu/which/which-${PV}.tar.gz \
            file://remove-declaration.patch"
 
+SRC_URI[md5sum] = "95be0501a466e515422cde4af46b2744"
+SRC_URI[sha256sum] = "d417b65c650d88ad26a208293c1c6e3eb60d4b6d847f01ff8f66aca63e2857f8"
+
 do_configure_prepend() {
 	sed -i -e 's%@ACLOCAL_CWFLAGS@%-I ${STAGING_DIR_NATIVE}/usr/share/cwautomacros/m4%g' ${S}/Makefile.am ${S}/tilde/Makefile.am
 }
diff --git a/meta/recipes-extended/xinetd/xinetd_2.3.14.bb b/meta/recipes-extended/xinetd/xinetd_2.3.14.bb
index 122be2c..159cb2c 100644
--- a/meta/recipes-extended/xinetd/xinetd_2.3.14.bb
+++ b/meta/recipes-extended/xinetd/xinetd_2.3.14.bb
@@ -16,6 +16,9 @@ SRC_URI = "http://www.xinetd.org/xinetd-${PV}.tar.gz \
       file://xinetd-should-be-able-to-listen-on-IPv6-even-in-ine.patch \
       "
 
+SRC_URI[md5sum] = "567382d7972613090215c6c54f9b82d9"
+SRC_URI[sha256sum] = "760e0e617c609a0509ef63fc7e9580d2f1d88c6113bb6d63273de7de7cd0bc1f"
+
 inherit autotools update-rc.d
 
 INITSCRIPT_NAME = "xinetd"
diff --git a/meta/recipes-extended/xz/xz_5.0.0.bb b/meta/recipes-extended/xz/xz_5.0.0.bb
index ca76182..031c92a 100644
--- a/meta/recipes-extended/xz/xz_5.0.0.bb
+++ b/meta/recipes-extended/xz/xz_5.0.0.bb
@@ -11,6 +11,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=c475b6c7dca236740ace4bba553e8e1c \
 
 SRC_URI = "http://tukaani.org/xz/xz-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "f3c0706d100ad2b6d63327584d026c50"
+SRC_URI[sha256sum] = "eba9211990a642fc2c35ea02618b710c7fa898d78ccca48b546a07bdde03c44d"
+
 DEPENDS = "gettext"
 
 PR = "r0"
diff --git a/meta/recipes-extended/zip/zip_3.0.bb b/meta/recipes-extended/zip/zip_3.0.bb
index c5df637..b009c24 100644
--- a/meta/recipes-extended/zip/zip_3.0.bb
+++ b/meta/recipes-extended/zip/zip_3.0.bb
@@ -4,3 +4,6 @@ PR="r0"
 
 # zip-2.32 still uses directory name of zip-2.30
 S = "${WORKDIR}/zip30"
+
+SRC_URI[md5sum] = "7b74551e63f8ee6aab6fbc86676c0d37"
+SRC_URI[sha256sum] = "f0e8bb1f9b7eb0b01285495a2699df3a4b766784c1765a8f1aeedf63c0806369"
diff --git a/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb b/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb
index 5106f58..b4adfe4 100644
--- a/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb
@@ -17,6 +17,9 @@ inherit gnome
 
 SRC_URI += "file://omf.patch;patch=1"
 
+SRC_URI[archive.md5sum] = "30daabb0ca4898fea2647999e7813e8f"
+SRC_URI[archive.sha256sum] = "dd4817103d23745d00c735dd137951552ba7b576cb8f68e6a529d06661e9b6a1"
+
 EXTRA_AUTORECONF = ""
 DEPENDS = ""
 
diff --git a/meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb b/meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb
index fa3ffb2..424eafe 100644
--- a/meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb
+++ b/meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb
@@ -2,3 +2,6 @@ require gnome-desktop.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://COPYING.LIB;md5=5f30f0716dfdd0d91eb439ebec522ec2"
+
+SRC_URI[archive.md5sum] = "5c80d628a240eb9d9ff78913b31f2f67"
+SRC_URI[archive.sha256sum] = "55cbecf67efe1fa1e57ac966520a7c46d799c8ba3c652a1219f60cafccb3739d"
diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb b/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
index 09121db..9bdcced 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
@@ -2,3 +2,6 @@ require gnome-doc-utils.inc
 LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=eb723b61539feef013de476e68b5c50a \
 		    file://COPYING.LGPL;md5=a6f89e2100d9b6cdffcea4f398e37343 "
 PR = "r1"
+
+SRC_URI[archive.md5sum] = "920914c13c57e67616c6ff8594579786"
+SRC_URI[archive.sha256sum] = "f6c0124f61b9400c63da630dd3a9ac1b738eac0058da245661ff699fad267aca"
diff --git a/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
index 855fa81..9898428 100644
--- a/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
@@ -16,6 +16,9 @@ FILES_${PN} += "${datadir}/*"
 SRC_URI = "${GNOME_MIRROR}/${PN}/2.31/${PN}-${PV}.tar.bz2 \
            file://iconpath-option.patch"
 
+SRC_URI[md5sum] = "8e727703343d4c18c73c79dd2009f8ed"
+SRC_URI[sha256sum] = "ea7e05b77ead159379392b3b275ca0c9cbacd7d936014e447cc7c5e27a767982"
+
 EXTRA_OECONF = "--disable-hicolor-check --with-iconmap=${STAGING_LIBDIR_NATIVE}/../libexec/icon-name-mapping"
 
 inherit autotools
diff --git a/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb b/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
index 1826a7a..153979e 100644
--- a/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
+++ b/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
@@ -22,6 +22,9 @@ EXTRA_OECONF = "--disable-gtk-doc"
 
 SRC_URI += "file://org.gnome.keyring.service"
 
+SRC_URI[archive.md5sum] = "9a8aa74e03361676f29d6e73155786fc"
+SRC_URI[archive.sha256sum] = "31fecec1430a97f59a6159a5a2ea8d6a1b44287f1e9e595b3594df46bf7f18f9"
+
 do_install_append () {
 	install -d ${D}${datadir}/dbus-1/services
 	install -m 0644 ${WORKDIR}/org.gnome.keyring.service ${D}${datadir}/dbus-1/services
diff --git a/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb b/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
index edaabe1..3bb50d1 100644
--- a/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
@@ -12,5 +12,8 @@ PR = "r3"
 
 SRC_URI += "file://pkgconfig.patch;patch=1"
 
+SRC_URI[archive.md5sum] = "541858188f80090d12a33b5a7c34d42c"
+SRC_URI[archive.sha256sum] = "37196b5b37085bbcd45c338c36e26898fe35dd5975295f69f48028b1e8436fd7"
+
 DEPENDS += "shared-mime-info intltool-native"
 RDEPENDS = "shared-mime-info"
diff --git a/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb b/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb
index 928549c..0c307da 100644
--- a/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb
+++ b/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb
@@ -23,6 +23,9 @@ RPROVIDES = "gnome-vfs-plugin-dbus"
 SRC_URI += "file://gconftool-lossage.patch;patch=1;pnum=1 \
 	    file://gnome-vfs-no-kerberos.patch;patch=1;pnum=0"
 
+SRC_URI[archive.md5sum] = "a05fab03eeef10a47dd156b758982f2e"
+SRC_URI[archive.sha256sum] = "62de64b5b804eb04104ff98fcd6a8b7276d510a49fbd9c0feb568f8996444faa"
+
 EXTRA_OECONF = " \
                  --disable-hal \
 		 --disable-openssl \
diff --git a/meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb b/meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb
index 3bdd697..d9037a2 100644
--- a/meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb
+++ b/meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb
@@ -11,6 +11,9 @@ SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-${
        file://${ART_CONFIG} \
        file://Makefile.am.patch;patch=1"
 
+SRC_URI[md5sum] = "08559ff3c67fd95d57b0c5e91a6b4302"
+SRC_URI[sha256sum] = "fdc11e74c10fc9ffe4188537e2b370c0abacca7d89021d4d303afdf7fd7476fa"
+
 inherit autotools pkgconfig
 
 DEPENDS = ""
diff --git a/meta/recipes-gnome/gnome/libgdata_0.6.5.bb b/meta/recipes-gnome/gnome/libgdata_0.6.5.bb
index 8e8da5c..b5e6ee3 100644
--- a/meta/recipes-gnome/gnome/libgdata_0.6.5.bb
+++ b/meta/recipes-gnome/gnome/libgdata_0.6.5.bb
@@ -10,3 +10,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24 \
 DEPENDS = "libxml2 glib-2.0 libsoup-2.4"
 
 inherit gnome pkgconfig autotools
+
+SRC_URI[archive.md5sum] = "e12f52a3d25c25016856c64ca0331221"
+SRC_URI[archive.sha256sum] = "dcb82f7162d69549512444376da2cdea65650ee4dae4d00eed7fbbd3387ddf2c"
diff --git a/meta/recipes-gnome/gnome/libgnome-keyring_2.32.0.bb b/meta/recipes-gnome/gnome/libgnome-keyring_2.32.0.bb
index 9004006..09b6d9c 100644
--- a/meta/recipes-gnome/gnome/libgnome-keyring_2.32.0.bb
+++ b/meta/recipes-gnome/gnome/libgnome-keyring_2.32.0.bb
@@ -16,3 +16,6 @@ inherit gnome
 DEPENDS = "dbus eggdbus"
 
 EXTRA_OECONF = "--disable-gtk-doc"
+
+SRC_URI[archive.md5sum] = "c42b2ca66204835d901d3dbfc1fa5ae6"
+SRC_URI[archive.sha256sum] = "56388c0d81ddfdb57d30e4963c83ecc1c18498aab99395420e0fff69929a0f0c"
diff --git a/meta/recipes-gnome/gnome/metacity_2.22.0.bb b/meta/recipes-gnome/gnome/metacity_2.22.0.bb
index f0d6c89..e698ec4 100644
--- a/meta/recipes-gnome/gnome/metacity_2.22.0.bb
+++ b/meta/recipes-gnome/gnome/metacity_2.22.0.bb
@@ -18,3 +18,6 @@ EXTRA_OECONF += "--disable-verbose \
 	         --disable-xinerama"
 
 FILES_${PN} += "${datadir}/themes"
+
+SRC_URI[archive.md5sum] = "8cb6d02cf66a1003532b4f5d2754d696"
+SRC_URI[archive.sha256sum] = "3c670b41a214311006dc05f9a005696b9d3fdcb5c80f1275367416600103b3bf"
diff --git a/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb b/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
index 27f63db..7df9d51 100644
--- a/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
+++ b/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
@@ -11,3 +11,6 @@ inherit gnome pkgconfig
 
 FILES_${PN} += "${datadir}/icons"
 FILES_${PN}-dbg += "${libdir}/gthumb/modules/.debug"
+
+SRC_URI[archive.md5sum] = "2911cd9b875efdfd554547176c59e309"
+SRC_URI[archive.sha256sum] = "9bb32ee44647f3f934d41344e2c1dbbd1546bf4949824030b3b818545758118c"
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
index b32d8e4..dec5187 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
@@ -28,6 +28,9 @@ SRC_URI = "http://download.gnome.org/sources/gtk+/2.20/gtk+-${PV}.tar.bz2 \
             file://configurefix.patch;patch=1 \
 	  "
 
+SRC_URI[md5sum] = "53e6f3a93bd22934878fc4a4a34c68aa"
+SRC_URI[sha256sum] = "0e081731d21e34ff45c82199490c2889504fa8b3c7e117c043e82ababaec0f65"
+
 EXTRA_OECONF = "--without-libtiff --without-libjasper --disable-xkb --disable-glibtest --disable-cups"
 
 LIBV = "2.10.0"
diff --git a/meta/recipes-gnome/gtk-engines/gtk-engines_2.20.2.bb b/meta/recipes-gnome/gtk-engines/gtk-engines_2.20.2.bb
index 3cbc4d7..85c38e2 100644
--- a/meta/recipes-gnome/gtk-engines/gtk-engines_2.20.2.bb
+++ b/meta/recipes-gnome/gtk-engines/gtk-engines_2.20.2.bb
@@ -35,3 +35,6 @@ python populate_packages_prepend() {
 	do_split_packages(d, themes_root, '(.*)', 'gtk-theme-%s', 'GTK theme %s', allow_dirs=True, extra_depends='')
 	# TODO: mark theme packages as arch all
 }
+
+SRC_URI[archive.md5sum] = "5deb287bc6075dc21812130604c7dc4f"
+SRC_URI[archive.sha256sum] = "15b680abca6c773ecb85253521fa100dd3b8549befeecc7595b10209d62d66b5"
diff --git a/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb b/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
index 43e4d07..07b3075 100644
--- a/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
+++ b/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
@@ -6,12 +6,30 @@ PV = "2.11.0+svnr${SRCREV}"
 PR = "r1"
 
 SRC_URI = "svn://anonymous@svn.gnome.org/svn/gtkhtml2/;module=trunk \
-	http://svn.o-hand.com/repos/web/trunk/patches/at-import_box-pos.patch;patch=1;pnum=0;maxrev=1157 \
-	http://svn.o-hand.com/repos/web/trunk/patches/css-stylesheet-user.patch;patch=1;pnum=0;maxrev=1157 \
-	http://svn.o-hand.com/repos/web/trunk/patches/css-media.patch;patch=1;pnum=0;maxrev=1157 \
-	http://svn.o-hand.com/repos/web/trunk/patches/add-end-element-signal.patch;patch=1;pnum=0;maxrev=1157 \
-	http://svn.o-hand.com/repos/web/trunk/patches/add-dom-functions.patch;patch=1;pnum=0;maxrev=1157 \
-	http://svn.o-hand.com/repos/web/trunk/patches/iain-mem-leak.patch;patch=1;pnum=0;maxrev=1157"
+	http://svn.o-hand.com/repos/web/trunk/patches/at-import_box-pos.patch;patch=1;pnum=0;maxrev=1157;name=patch1 \
+	http://svn.o-hand.com/repos/web/trunk/patches/css-stylesheet-user.patch;patch=1;pnum=0;maxrev=1157;name=patch2 \
+	http://svn.o-hand.com/repos/web/trunk/patches/css-media.patch;patch=1;pnum=0;maxrev=1157;name=patch3 \
+	http://svn.o-hand.com/repos/web/trunk/patches/add-end-element-signal.patch;patch=1;pnum=0;maxrev=1157;name=patch4 \
+	http://svn.o-hand.com/repos/web/trunk/patches/add-dom-functions.patch;patch=1;pnum=0;maxrev=1157;name=patch5 \
+	http://svn.o-hand.com/repos/web/trunk/patches/iain-mem-leak.patch;patch=1;pnum=0;maxrev=1157;name=patch6"
+
+SRC_URI[patch1.md5sum] = "160c648e29637f2ed6301f4dfdecce21"
+SRC_URI[patch1.sha256sum] = "3ec786e6df9e1a935aff4848b6989cad8f87c1fa8813dc033b338e18b17138d8"
+
+SRC_URI[patch2.md5sum] = "05fc3627ca364095702dc804f41c8391"
+SRC_URI[patch2.sha256sum] = "df5cca50a8f95333505d7920929fea251daea3be25be6834a1c50a742d9eb674"
+
+SRC_URI[patch3.md5sum] = "d3fe4cda3545f3e4718f1acc186608ab"
+SRC_URI[patch3.sha256sum] = "3aefaa17ffa38143bf5df1161c51ab402d35bfbee41ab4643c313edf569165d5"
+
+SRC_URI[patch4.md5sum] = "651b1601d8a1b21c8a3040fadb729043"
+SRC_URI[patch4.sha256sum] = "d067e8331bf9c6851f1c6067d991a7f54327f532900b405ebdf8e149c071f381"
+
+SRC_URI[patch5.md5sum] = "041be9711a16e629d01487664ba97152"
+SRC_URI[patch5.sha256sum] = "42956fb41341cf82ae8bce18b4cf96a7e2aa631b1b60657afb6d7e9be7cd138c"
+
+SRC_URI[patch6.md5sum] = "4e11dc7899d68f2be2e06ccee01d296d"
+SRC_URI[patch6.sha256sum] = "1e2cc080e654c1839c5cb4b4adf4c62a23e7da208427f3ba0b16cfed9e5cfa98"
 
 S = "${WORKDIR}/trunk"
 
diff --git a/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.12.bb b/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.12.bb
index 7b2ae29..98c0d91 100644
--- a/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.12.bb
+++ b/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-theme_0.12.bb
@@ -13,6 +13,9 @@ PR = "r0"
 SRC_URI = "http://icon-theme.freedesktop.org/releases/${P}.tar.gz \
         file://index.theme"
 
+SRC_URI[md5sum] = "55cafbcef8bcf7107f6d502149eb4d87"
+SRC_URI[sha256sum] = "9edca690617eaa19054951ca53501c802180262be8880ed84754ac46c93bec73"
+
 PACKAGE_ARCH = "all"
 
 FILES_${PN} += "${datadir}/icons"
diff --git a/meta/recipes-gnome/libffi/libffi_3.0.9.bb b/meta/recipes-gnome/libffi/libffi_3.0.9.bb
index 7e3c1d8..8ef90e7 100644
--- a/meta/recipes-gnome/libffi/libffi_3.0.9.bb
+++ b/meta/recipes-gnome/libffi/libffi_3.0.9.bb
@@ -1,4 +1,7 @@
 SRC_URI = "ftp://sourceware.org/pub/libffi/${BPN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "1f300a7a7f975d4046f51c3022fa5ff1"
+SRC_URI[sha256sum] = "589d25152318bc780cd8919b14670793f4971d9838dab46ed38c32b3ee92c452"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa09cb778aaba64dc9eac37ab7e4e5d8"
 inherit autotools
diff --git a/meta/recipes-gnome/libglade/libglade_2.6.4.bb b/meta/recipes-gnome/libglade/libglade_2.6.4.bb
index 9296eda..f128602 100644
--- a/meta/recipes-gnome/libglade/libglade_2.6.4.bb
+++ b/meta/recipes-gnome/libglade/libglade_2.6.4.bb
@@ -16,6 +16,9 @@ inherit autotools pkgconfig gnome
 
 SRC_URI += "file://glade-cruft.patch;patch=1 file://no-xml2.patch;patch=1"
 
+SRC_URI[archive.md5sum] = "d1776b40f4e166b5e9c107f1c8fe4139"
+SRC_URI[archive.sha256sum] = "64361e7647839d36ed8336d992fd210d3e8139882269bed47dc4674980165dec"
+
 EXTRA_OECONF += "--without-libxml2"
 
 CFLAGS += "-lz"
diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
index 4717042..35cf5a4 100644
--- a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
+++ b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
@@ -16,6 +16,9 @@ EXTRA_OECONF = "--disable-mozilla-plugin --without-svgz --without-croco --disabl
 
 SRC_URI += "file://doc_Makefile.patch"
 
+SRC_URI[archive.md5sum] = "b015a9bd80143ec876af489d882dc28b"
+SRC_URI[archive.sha256sum] = "e0f6f936dab583de317cc0c36a48f80bdb9c93775225ee84140c7e5e3f841068"
+
 do_configure_prepend () {
 	export GDK_PIXBUF_QUERYLOADERS="${libdir}/gtk-2.0/version/loaders"
 	echo "CLEANFILES=" > gtk-doc.make
diff --git a/meta/recipes-gnome/libunique/libunique_1.1.6.bb b/meta/recipes-gnome/libunique/libunique_1.1.6.bb
index 0c1b9a0..7eb64e0 100644
--- a/meta/recipes-gnome/libunique/libunique_1.1.6.bb
+++ b/meta/recipes-gnome/libunique/libunique_1.1.6.bb
@@ -1,4 +1,7 @@
 SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/libunique/1.1/libunique-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "7955769ef31f1bc4f83446dbb3625e6d"
+SRC_URI[sha256sum] = "e5c8041cef8e33c55732f06a292381cb345db946cf792a4ae18aa5c66cdd4fbb"
 PR = "r1"
 
 DEPENDS = "glib-2.0 gtk+ dbus"
diff --git a/meta/recipes-graphics/cairo/cairo_1.10.0.bb b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
index 627de5e..d4d0703 100644
--- a/meta/recipes-graphics/cairo/cairo_1.10.0.bb
+++ b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
@@ -6,6 +6,9 @@ PR = "r0"
 
 SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "70a2ece66cf473d976e2db0f75bf199e"
+SRC_URI[sha256sum] = "0f2ce4cc4615594088d74eb8b5360bad7c3cc3c3da9b61af9bfd979ed1ed94b2"
+
 RDEPENDS += "libcairo2 libcairo-gobject2 libcairo-script-interpreter2 \
 		  cairo-perf-utils"
 
diff --git a/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb b/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
index e0403ec..052ae25 100644
--- a/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
+++ b/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
@@ -17,6 +17,9 @@ SRC_URI = "http://fontconfig.org/release/fontconfig-${PV}.tar.gz \
            file://fix-pkgconfig.patch \
            file://97_fontconfig"
 
+SRC_URI[md5sum] = "77e15a92006ddc2adbb06f840d591c0e"
+SRC_URI[sha256sum] = "fa2a1c6eea654d9fce7a4b1220f10c99cdec848dccaf1625c01f076b31382335"
+
 PACKAGES =+ "fontconfig-utils-dbg fontconfig-utils "
 FILES_fontconfig-utils-dbg = "${bindir}/*.dbg"
 FILES_fontconfig-utils = "${bindir}/*"
diff --git a/meta/recipes-graphics/freetype/freetype_2.4.3.bb b/meta/recipes-graphics/freetype/freetype_2.4.3.bb
index da62ffb..2508559 100644
--- a/meta/recipes-graphics/freetype/freetype_2.4.3.bb
+++ b/meta/recipes-graphics/freetype/freetype_2.4.3.bb
@@ -14,6 +14,9 @@ PR = "r0"
 SRC_URI = "${SOURCEFORGE_MIRROR}/freetype/freetype-${PV}.tar.bz2 \
            file://no-hardcode.patch"
 
+SRC_URI[md5sum] = "75ac7082bde7b3805dc5d6bc806fa045"
+SRC_URI[sha256sum] = "b4e626db62fd1b4549ff5d57f5eca3a41631fd6066adf8a31c11879b51249afc"
+
 S = "${WORKDIR}/freetype-${PV}"
 
 inherit autotools pkgconfig binconfig
diff --git a/meta/recipes-graphics/libmatchbox/libmatchbox_1.9.bb b/meta/recipes-graphics/libmatchbox/libmatchbox_1.9.bb
index fb554b8..3bc912b 100644
--- a/meta/recipes-graphics/libmatchbox/libmatchbox_1.9.bb
+++ b/meta/recipes-graphics/libmatchbox/libmatchbox_1.9.bb
@@ -8,6 +8,9 @@ SRC_URI = "http://projects.o-hand.com/matchbox/sources/${PN}/${PV}/${PN}-${PV}.t
            file://check.m4 \
            file://matchbox-start-fix.patch;patch=1"
 
+SRC_URI[md5sum] = "465fa15c43bf0091a3810e7702fe143f"
+SRC_URI[sha256sum] = "f7054f93c57ba6b758d0e4f47d4d2dd96a7fe487e1157eb70a4d642910275aea"
+
 do_configure_prepend () {
 	cp ${WORKDIR}/check.m4 ${S}/
 }
diff --git a/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb b/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb
index 9cd15a2..9dcd56c 100644
--- a/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb
+++ b/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb
@@ -18,6 +18,9 @@ SRC_URI = "http://projects.o-hand.com/matchbox/sources/optional-dependencies/Xse
         file://link-x11.patch;apply=yes \
         file://disable_Os_option.patch"
 
+SRC_URI[md5sum] = "c14aa9db6c097e0306dac97fb7da1add"
+SRC_URI[sha256sum] = "f274a4bc969ae192994a856b7f786c6fce96bae77f96c1c2b71dd97599e06e43"
+
 S = "${WORKDIR}/Xsettings-client-0.10"
 
 inherit autotools gettext
diff --git a/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb b/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb
index 90cc571..a812ece 100644
--- a/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb
+++ b/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb
@@ -12,6 +12,9 @@ DEPENDS = "glib-2.0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/lxde/menu-cache-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "ac4a9ea77db68d3db3f9f53cc75af66a"
+SRC_URI[sha256sum] = "6b7c1627b5102d8301a8a3e845f673a7181a71dde32f6455abf22d03e392b89f"
+
 PR = "r0"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-graphics/pango/pango_1.28.3.bb b/meta/recipes-graphics/pango/pango_1.28.3.bb
index ae914ff..cb8208d 100644
--- a/meta/recipes-graphics/pango/pango_1.28.3.bb
+++ b/meta/recipes-graphics/pango/pango_1.28.3.bb
@@ -6,4 +6,7 @@ PR = "r0"
 
 SRC_URI += "file://no-tests.patch"
 
+SRC_URI[archive.md5sum] = "caa74baea47e7e16bc73c89f9089d522"
+SRC_URI[archive.sha256sum] = "5e278bc9430cc7bb00270f183360d262c5006b51248e8b537ea904573f200632"
+
 PARALLEL_MAKE = ""
diff --git a/meta/recipes-graphics/startup-notification/startup-notification_0.10.bb b/meta/recipes-graphics/startup-notification/startup-notification_0.10.bb
index 8b34982..da91051 100644
--- a/meta/recipes-graphics/startup-notification/startup-notification_0.10.bb
+++ b/meta/recipes-graphics/startup-notification/startup-notification_0.10.bb
@@ -21,3 +21,6 @@ DEPENDS = "virtual/libx11 libsm xcb-util"
 inherit autotools pkgconfig
 
 SRC_URI = "http://www.freedesktop.org/software/startup-notification/releases/${PN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "bca0ed1c74bc4e483ea2ed12a5717354"
+SRC_URI[sha256sum] = "64bbeb5c28619721fc19d6920ad2b8bf6c0dc3a0e96a1b0bc26f480fbc525459"
diff --git a/meta/recipes-graphics/tslib/tslib_1.0.bb b/meta/recipes-graphics/tslib/tslib_1.0.bb
index 8db90d9..fd75d60 100644
--- a/meta/recipes-graphics/tslib/tslib_1.0.bb
+++ b/meta/recipes-graphics/tslib/tslib_1.0.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://download.berlios.de/tslib/tslib-${PV}.tar.bz2 \
            file://ts.conf-simpad-2.4 \
            file://ts.conf-collie-2.4 \
            file://tslib.sh"
+
+SRC_URI[md5sum] = "92b2eb55b1e4ef7e2c0347069389390e"
+SRC_URI[sha256sum] = "9c40d914e4f6fe00bdd77137d671c7ce4f211686228f2eb8b2d3c2360bc249c8"
 SRC_URI_append_mnci += " file://devfs.patch;patch=1"
 SRC_URI_append_mnci += " file://event1.patch;patch=1"
 SRC_URI_append_qemumips += " file://32bitBE-support.patch;patch=1"
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
index afb4a57..6e897a3 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
@@ -13,6 +13,9 @@ PE = "1"
 SRC_URI = "https://fedorahosted.org/releases/l/i/liberation-fonts/liberation-fonts-${PV}.tar.gz \
            file://30-liberation-aliases.conf"
 
+SRC_URI[md5sum] = "4846797ef0fc70b0cbaede2514677c58"
+SRC_URI[sha256sum] = "0e0d0957c85b758561a3d4aef4ebcd2c39959e5328429d96ae106249d83531a1"
+
 do_install () {
 	install -d ${D}${datadir}/fonts/ttf/
 	for i in *.ttf; do
diff --git a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
index 1001e29..ed64b1e 100644
--- a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
+++ b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
@@ -33,3 +33,6 @@ fc-cache
 
 
 FILES_${PN} = "/etc ${datadir}/fonts"
+
+SRC_URI[md5sum] = "bb22bd5b4675f5dbe17c6963d8c00ed6"
+SRC_URI[sha256sum] = "db5b27df7bbb318036ebdb75acd3e98f1bd6eb6608fb70a67d478cd243d178dc"
diff --git a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
index af21786..87cda2c 100644
--- a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
+++ b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
@@ -11,5 +11,8 @@ DEPENDS = "openssl virtual/libx11 libxext avahi jpeg zlib"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/libvncserver/x11vnc-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "1498a68d02aa7b6c97bf746c073c8d00"
+SRC_URI[sha256sum] = "60a7cceee2c9a5f1c854340b2bae13f975ac55906237042f81f795b28a154a79"
+
 inherit autotools
 
diff --git a/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb b/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb
index 8ded7a0..3ef9ab2 100644
--- a/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb
+++ b/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb
@@ -13,6 +13,9 @@ PARALLEL_MAKE = ""
 
 SRC_URI = "http://xcb.freedesktop.org/dist/libpthread-stubs-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "e8fa31b42e13f87e8f5a7a2b731db7ee"
+SRC_URI[sha256sum] = "35b6d54e3cc6f3ba28061da81af64b9a92b7b757319098172488a660e3d87299"
+
 inherit autotools pkgconfig
 
 RDEPENDS_${PN}-dev = ""
diff --git a/meta/recipes-graphics/xcb/libxcb_1.7.bb b/meta/recipes-graphics/xcb/libxcb_1.7.bb
index fc80927..426f790 100644
--- a/meta/recipes-graphics/xcb/libxcb_1.7.bb
+++ b/meta/recipes-graphics/xcb/libxcb_1.7.bb
@@ -8,3 +8,6 @@ PR = "r0"
 DEPENDS += "libpthread-stubs xcb-proto-native"
 
 PACKAGES =+ "libxcb-xinerama"
+
+SRC_URI[md5sum] = "925699df361b99491165ebc12068056b"
+SRC_URI[sha256sum] = "e776dc35e2a66094e7308ce2e045fb4e27cf3ca30ab1813a8fc08538140724df"
diff --git a/meta/recipes-graphics/xcb/xcb-proto_1.6.bb b/meta/recipes-graphics/xcb/xcb-proto_1.6.bb
index a367b7c..74a6ec7 100644
--- a/meta/recipes-graphics/xcb/xcb-proto_1.6.bb
+++ b/meta/recipes-graphics/xcb/xcb-proto_1.6.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d763b081cb10c223435b01e00dc0aba7 \
                     file://src/dri2.xml;beginline=2;endline=28;md5=f8763b13ff432e8597e0d610cf598e65"
 
 PR = "r0"
+
+SRC_URI[md5sum] = "04313e1d914b44d0e457f6c494fc178b"
+SRC_URI[sha256sum] = "f52bc1159b12496f002404eb5793c01277b20c82cb72c5ff076d7b25da9b5ca2"
diff --git a/meta/recipes-graphics/xcb/xcb-util_0.3.6.bb b/meta/recipes-graphics/xcb/xcb-util_0.3.6.bb
index b0e50d8..1057b34 100644
--- a/meta/recipes-graphics/xcb/xcb-util_0.3.6.bb
+++ b/meta/recipes-graphics/xcb/xcb-util_0.3.6.bb
@@ -13,3 +13,6 @@ LIC_FILES_CHKSUM = "file://xcb-util-common.h;endline=30;md5=6c74595925fd773cc8cf
 
 PR = "r0"
 
+
+SRC_URI[md5sum] = "dd8968b8ee613cb027a8ef1fcbdc8fc9"
+SRC_URI[sha256sum] = "ffb8ee11ab015858a970ab7edd56bd2436b281657596561d8429d4a90df60e57"
diff --git a/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_0.1.1.bb b/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_0.1.1.bb
index 67ca086..0727d0f 100644
--- a/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_0.1.1.bb
+++ b/meta/recipes-graphics/xcursor-transparent-theme/xcursor-transparent-theme_0.1.1.bb
@@ -11,6 +11,9 @@ PR="r3"
 SRC_URI = "http://matchbox-project.org/sources/utils/xcursor-transparent-theme-${PV}.tar.gz \
 	   file://use-relative-symlinks.patch;patch=1 \
 	   file://fix_watch_cursor.patch;patch=1"
+
+SRC_URI[md5sum] = "7b0c623049d4aab20600d6473f8aab23"
+SRC_URI[sha256sum] = "b26adf2d503d01299718390ae39dab4691a67220de09423be0364e9a060bf7e4"
 FILES_${PN} = "${datadir}/icons/xcursor-transparent/cursors/*"
 
 inherit autotools
diff --git a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
index ebd5775..729c2a5 100644
--- a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
@@ -9,3 +9,6 @@ RDEPENDS += "mkfontscale"
 BBCLASSEXTEND = "native"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=b4fcf2b90cadbfc15009b9e124dc3a3f"
+
+SRC_URI[md5sum] = "9365ac66d19186eaf030482d312fca06"
+SRC_URI[sha256sum] = "a534650cff503619f9101577d816cde283da993bc039273477bd8dfbd01a2d0b"
diff --git a/meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb b/meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
index 46a7311..c117519 100644
--- a/meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
+++ b/meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
@@ -7,3 +7,6 @@ DEPENDS += " zlib libfontenc freetype virtual/libx11"
 BBCLASSEXTEND = "native"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=8ecbbbc1259a329e96ccc4dd86ad2ca2"
+
+SRC_URI[md5sum] = "96ca346f185c0ab48e42bf5bb0375da5"
+SRC_URI[sha256sum] = "8306b229cca233216a6582cb1ff60af78e37c47d6412ac823d7d41c3d7de7127"
diff --git a/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb b/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
index eaa83ac..88dec1b 100644
--- a/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
+++ b/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
@@ -8,3 +8,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=428ca4d67a41fcd4fc3283dce9bbda7e \
 
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "3459958a7fdccf02fa43b70fda9cd87f"
+SRC_URI[sha256sum] = "a1fd752abd3496568614c2f2209d21452bdd5b8c9a5c14a5705725bd8c298e12"
diff --git a/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb b/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
index d5f3576..daccca7 100644
--- a/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
@@ -8,3 +8,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=5ec74dd7ea4d10c4715a7c44f159a40b"
 DEPENDS += "libxau libxext libxmu"
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "46fc44e5e947d3720f3be5054044ff0e"
+SRC_URI[sha256sum] = "6d139500ff1daf806525adf071f8c1778ad138a0378c73ea831ad18847ad746c"
diff --git a/meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb b/meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb
index f5d47e1..ff5a58f 100644
--- a/meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb
@@ -8,4 +8,7 @@ PE = "1"
 
 SRC_URI += "file://disable-xkb.patch"
 
+SRC_URI[md5sum] = "d1d516610316138105cd07064b257c5c"
+SRC_URI[sha256sum] = "780d8dfe65653f42ee26d35928ab7f72f5f27ab08eda692fe4baad05126a0631"
+
 EXTRA_OECONF = "--disable-xkb"
diff --git a/meta/recipes-graphics/xorg-app/xhost_1.0.3.bb b/meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
index 2c643d8..d39058a 100644
--- a/meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
+++ b/meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=cbe6a2ee97dc38c7265adfec5644689b"
 DEPENDS += "libxmu libxau"
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "c7f91b4a750d297f269c2a0a3206a1b2"
+SRC_URI[sha256sum] = "2d63007c65e89fe273a43f3e45b3c0133acbc3ceeda6bfc9671388409134ad17"
diff --git a/meta/recipes-graphics/xorg-app/xinit_1.2.1.bb b/meta/recipes-graphics/xorg-app/xinit_1.2.1.bb
index 7a083a7..68150ca 100644
--- a/meta/recipes-graphics/xorg-app/xinit_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-app/xinit_1.2.1.bb
@@ -6,3 +6,6 @@ PR = "r0"
 PE = "1"
 
 FILES_${PN} += "${libdir}X11/xinit"
+
+SRC_URI[md5sum] = "56f2d202b3dc10fcd21931a67bb270f7"
+SRC_URI[sha256sum] = "16bcc73ae81b6d80fd1a9419ea757f38870d1043d440b6d56fcaa79d4c6c9b07"
diff --git a/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb b/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
index bc2b788..6f43668 100644
--- a/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
@@ -7,3 +7,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=08436e4f4476964e2e2dd7e7e41e076a"
 DEPENDS += "libxkbfile"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "38c387bacdc01038c8ac280588792bcf"
+SRC_URI[sha256sum] = "9775bcfd43d9ffa41e2865e5b2c933f419bf983d7a529b3103656c76fd82e663"
diff --git a/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb b/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb
index 6f60cdd..2d5ee24 100644
--- a/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb
@@ -6,3 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=eef098b27f09d0ac39268df0cc2c00b5"
 
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "b18850d373f3717dca569377c449d091"
+SRC_URI[sha256sum] = "421ee7a17b0cf559c4901225f70c497e3c5ca205ec7dcc84712055818d2f3402"
diff --git a/meta/recipes-graphics/xorg-app/xprop_1.1.0.bb b/meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
index e9b0b2e..cfa02dd 100644
--- a/meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
@@ -8,3 +8,6 @@ DEPENDS += " libxmu virtual/libx11"
 
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "f0bacbd30f0dd1c1e9ccafe97687b7a4"
+SRC_URI[sha256sum] = "cc8e07901574895f113baffda19272c54545879e02012314527ebbf2dcc66226"
diff --git a/meta/recipes-graphics/xorg-app/xset_1.2.1.bb b/meta/recipes-graphics/xorg-app/xset_1.2.1.bb
index 2d80d3b..5ce0a5b 100644
--- a/meta/recipes-graphics/xorg-app/xset_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-app/xset_1.2.1.bb
@@ -9,5 +9,8 @@ PE = "1"
 
 SRC_URI += "file://disable-xkb.patch"
 
+SRC_URI[md5sum] = "4e0ce390394416c9e2c5cd4d7413ba87"
+SRC_URI[sha256sum] = "ec995f7d23109cfa6420ae87c38158f29a2a6f9d0b7df0a1be34e69e165292a1"
+
 CFLAGS += "-D_GNU_SOURCE"
 EXTRA_OECONF = "--disable-xkb"
diff --git a/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb b/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
index 640f413..3c6f667 100644
--- a/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
@@ -4,3 +4,6 @@ DESCRIPTION = "Print out X-Video extension adaptor information"
 LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94"
 DEPENDS += " libxv"
 PE = "1"
+
+SRC_URI[md5sum] = "e1e318436f49e2f0f3764593dadd9ad2"
+SRC_URI[sha256sum] = "126e2a612ac723f9688904fcfa612688d62e520ce55c56eb34eb5390074cf150"
diff --git a/meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb b/meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb
index 6bf8627..8e37294 100644
--- a/meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb
@@ -6,3 +6,6 @@ DEPENDS += "libxext libxmu"
 
 PR = "r0"
 PE = "0"
+
+SRC_URI[md5sum] = "932cb1393dee3caaf26f3515f640d783"
+SRC_URI[sha256sum] = "759e03d80b2a8bc843d501d5fd91fe1506da403019b6f165d32aa1b9909f8cf8"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
index d1e55fb..1b4470c 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
@@ -5,3 +5,6 @@ DESCRIPTION = "X.Org X server -- evdev input driver"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fefe33b1cf0cacba0e72e3b0fa0f0e16"
 
 PR = "r0"
+
+SRC_URI[md5sum] = "eceb6dc517c0649b772f18708a1aade8"
+SRC_URI[sha256sum] = "9dec173ac9d8d09ef5cb2f79e74471f5f3ddd108827f3e95958b623766260333"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
index 1efb505..f5e51e0 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
@@ -5,3 +5,6 @@ DESCRIPTION = "X.Org X server -- keyboard input driver"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eae2c98cbb8c60401893ff9313ff3826"
 
 PR = "r1"
+
+SRC_URI[md5sum] = "fd17158ffeacecc8cc670604460cb98b"
+SRC_URI[sha256sum] = "842d36cfca68ddab4f2c562c73bfd43ba76de2d490d60034f0c5dd524aa6d6a5"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
index 835b7b1..d0914cf 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
@@ -3,3 +3,6 @@ require xf86-input-common.inc
 DESCRIPTION = "X.Org X server -- mouse input driver"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=237eb1d1a602d29ef2af62d8fba60f19"
+
+SRC_URI[md5sum] = "cef849b1a2743d2e84de98422f372974"
+SRC_URI[sha256sum] = "c7ae245e5168276346145f196d1d1faed618f41d5174a2031c71fab6e1a2fbdb"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
index 8b7b3f7..84adb85 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
@@ -5,3 +5,6 @@ DESCRIPTION = "X.Org X server -- keyboard input driver"
 LIC_FILES_CHKSUM = "file://COPYING;md5=08955125302e95a16628a4bec64ade5f"
 
 DEPENDS += "libxi"
+
+SRC_URI[md5sum] = "29a6f9da5123149e4abc8ff83880ed5c"
+SRC_URI[sha256sum] = "a63b48c5c8eb09416b941dea591a948e111d1b2e14d4620f25377cf47cf877e6"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb b/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
index 219f4b9..15aeb58 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
@@ -6,3 +6,6 @@ PR = "r0"
 RDEPENDS_${PN} += "xf86-input-mouse"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=622841c068a9d7625fbfe7acffb1a8fc"
+
+SRC_URI[md5sum] = "49c6e77851e9f7bc5cb7d85f061992f8"
+SRC_URI[sha256sum] = "a6369d5a860627f2a38842d5563045b263a459e534f6ae08df48f330f9a40910"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
index 17f9d37..7527413 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
@@ -9,3 +9,6 @@ DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
 	    virtual/libgl xineramaproto xf86driproto libpciaccess"
 
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
+
+SRC_URI[md5sum] = "07fa32958aff9b463dd3af5481ef6626"
+SRC_URI[sha256sum] = "8ed85a0e94523539d81d5ae6639fa22ceb1c1e3baf89128915db65d4d2900d7a"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb b/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
index 4f089c6..c76248f 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
@@ -10,3 +10,6 @@ DEPENDS += "virtual/libx11 libxvmc drm glproto \
 PR = "r0"
 
 COMPATIBLE_HOST = '(i.86.*-linux|x86_64.*-linux)'
+
+SRC_URI[md5sum] = "579bee487309b1bdc8329bf627d43413"
+SRC_URI[sha256sum] = "b24a7cb2d87e416561e25122eab2cd48fc64a2ba105238456eefef16f29f38a3"
diff --git a/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb b/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb
index acbb8e8..a5d9013 100644
--- a/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb
@@ -8,3 +8,6 @@ PR = "${INC_PR}.0"
 DEPENDS = "mkfontscale-native font-util-native"
 
 EXTRA_OECONF += "--with-encodingsdir=${datadir}/fonts/X11/encodings"
+
+SRC_URI[md5sum] = "0f2d6546d514c5cc4ecf78a60657a5c1"
+SRC_URI[sha256sum] = "ced6312988a45d23812c2ac708b4595f63fd7a49c4dcd9f66bdcd50d1057d539"
diff --git a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
index e729e99..f3b3716 100644
--- a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
+++ b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
@@ -15,3 +15,6 @@ RDEPENDS_virtclass-native = "font-util"
 
 PE = "1"
 PR = "${INC_PR}.0"
+
+SRC_URI[md5sum] = "6d25f64796fef34b53b439c2e9efa562"
+SRC_URI[sha256sum] = "8b453b2aae1cfa8090009ca037037b8c5e333550651d5a158b7264ce1d472c9a"
diff --git a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
index 8f90176..972e9e3 100644
--- a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
@@ -22,3 +22,6 @@ do_configure_prepend() {
 }
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "1bdd8ed070e02b2165d7b0f0ed93280b"
+SRC_URI[sha256sum] = "dbbac617ae6cdf6f459e602361211d217f4bad5ad8bfb6adcede6196693f9712"
diff --git a/meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb
index 20523b8..11845cc 100644
--- a/meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb
@@ -9,3 +9,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94 \
 DEPENDS += "libxext dmxproto"
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "a2fcf0382837888d3781b714489a8999"
+SRC_URI[sha256sum] = "1904a8f848cc5d76105cb07707890aca095540a37fb0a63d359f71da51d3e2d5"
diff --git a/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
index 691624c..2933f93 100644
--- a/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
@@ -10,3 +10,6 @@ PR = "r1"
 PE = "1"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "11d3c292f05a90f6f67840a9e9c3d9b8"
+SRC_URI[sha256sum] = "348a1b0142f61afeaafc9497e997d6f10074affed8682e202d019f10170b9cbf"
diff --git a/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb b/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb
index ec3ad13..7228a02 100644
--- a/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb
+++ b/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb
@@ -14,3 +14,6 @@ PE = "1"
 XORG_PN = "libICE"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "bb72a732b15e9dc25c3036559387eed5"
+SRC_URI[sha256sum] = "a8b1692f151a473cee8733df9aefe98f7e5f64dfe6d4213cb6231d7bf855b901"
diff --git a/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb b/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb
index 9c7915b..b68f3ad 100644
--- a/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb
@@ -8,3 +8,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=aa44c26bc646c6c9d9619c73b94a6e31"
 PR = "r0"
 
 DEPENDS += "xproto virtual/libx11"
+
+SRC_URI[md5sum] = "285e07976274572e1f1e68edee09b70a"
+SRC_URI[sha256sum] = "f6b3c00e1c0aab0729563115d3d798e14c9210b4e10fccb484efe1c5eae85657"
diff --git a/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
index c01bfcd..5ce01b7 100644
--- a/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
@@ -13,3 +13,6 @@ PE = "1"
 XORG_PN = "libSM"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "e78c447bf1790552b644eca81b542742"
+SRC_URI[sha256sum] = "0cd8df1b7067bfda10b05d38279777770677c6fecb5a14e804a28597da7a57cb"
diff --git a/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb b/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb
index 6537461..98c84e6 100644
--- a/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb
@@ -14,3 +14,6 @@ PE = "1"
 XORG_PN = "libXau"
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "4a2cbd83727682f9ee1c1e719bac6adb"
+SRC_URI[sha256sum] = "ee84415ffedcc1c0d39b3a39c35d0596c89907bba93d22bf85e24d21f90170fc"
diff --git a/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb b/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb
index 0d7b84d..e6a1611 100644
--- a/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb
@@ -14,3 +14,6 @@ PR = "r0"
 XORG_PN = "libXcomposite"
 
 SRC_URI += " file://change-include-order.patch"
+
+SRC_URI[md5sum] = "a60e0b5c276d0aa9e2d3b982c98f61c8"
+SRC_URI[sha256sum] = "32294d28f4ee46db310c344546d98484728b7d52158c6d7c25bba02563b41aad"
diff --git a/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb b/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb
index 4b0a3b1..0506079 100644
--- a/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb
+++ b/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb
@@ -11,3 +11,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXcursor"
+
+SRC_URI[md5sum] = "866ed46f7e0d85b8c0003cebbb78a4af"
+SRC_URI[sha256sum] = "a06ef74579e2c06f9490e682b8e7ac915cb5280ee47bb071a2b850637a2bf6fe"
diff --git a/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb b/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb
index f42a9c9..f2ed669 100644
--- a/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb
@@ -12,3 +12,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXdamage"
+
+SRC_URI[md5sum] = "44774e1a065158b52f1a0da5100cebec"
+SRC_URI[sha256sum] = "bc6169c826d3cb17435ca84e1b479d65e4b51df1e48bbc3ec39a9cabf842c7a8"
diff --git a/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb
index b1648fb..344bdb1 100644
--- a/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb
@@ -16,3 +16,6 @@ DEPENDS += "gettext"
 XORG_PN = "libXdmcp"
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "762b6bbaff7b7d0831ddb4f072f939a5"
+SRC_URI[sha256sum] = "b8a0e9a3192a3afddb56eb1d7adf933e423b401b2a492975d776dc0423c10072"
diff --git a/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
index 658ccf3..75417c2 100644
--- a/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
@@ -14,3 +14,6 @@ PE = "1"
 XORG_PN = "libXext"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "9bb236ff0193e9fc1c1fb504dd840331"
+SRC_URI[sha256sum] = "4aed3e211e41c47908c293515580e731c26048f61a1212bf0888d1f456de6ff7"
diff --git a/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb b/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb
index d42e0a3..8ecf1f8 100644
--- a/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb
+++ b/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb
@@ -13,3 +13,6 @@ PE = "1"
 XORG_PN = "libXfixes"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "1b4b8386bd5d1751b2c7177223ad4629"
+SRC_URI[sha256sum] = "2e6cd020460e4ef5d5a1d9b5d21143e9f5e580036a79c7de26ae539d7bcb8d74"
diff --git a/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb b/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb
index 6aa83c4..2e19f8f 100644
--- a/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb
@@ -16,3 +16,6 @@ PE = "1"
 XORG_PN = "libXfont"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "6fb689cfe13d8d9460f4abb5bd88588d"
+SRC_URI[sha256sum] = "f79245652901d20092092e942155d32b8dde15527637db3c09a1adc83672e9cc"
diff --git a/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb b/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb
index 97f7ed6..5ee42be 100644
--- a/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb
@@ -7,3 +7,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXfontcache"
+
+SRC_URI[md5sum] = "bbd37768c87f63cf2eb845b2c0f56515"
+SRC_URI[sha256sum] = "0d639219549f51fa0e6b4414383f5d13e6c1638e66b3434f4626eb989ffacbce"
diff --git a/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb b/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb
index 7f5ccdd..fc9c0a7 100644
--- a/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb
@@ -23,3 +23,6 @@ FILES_${PN} = "${libdir}/lib*${SOLIBS}"
 FILES_${PN}-dev = "${includedir} ${libdir}/lib*${SOLIBSDEV} ${libdir}/*.la \
 		${libdir}/*.a ${libdir}/pkgconfig \
 		${datadir}/aclocal ${bindir} ${sbindir}"
+
+SRC_URI[md5sum] = "cce3c327258116493b753f157e0360c7"
+SRC_URI[sha256sum] = "c8685ae56da0c1dcc2bc1e34607e7d76ae98b86a1a71baba3a6b76dbcf5ff9b2"
diff --git a/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb b/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb
index 7f37d85..7820653 100644
--- a/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb
@@ -11,3 +11,6 @@ PE = "1"
 
 XORG_PN = "libXi"
 
+
+SRC_URI[md5sum] = "4ccdfe866f94c99b9190d16ffcfb3bdc"
+SRC_URI[sha256sum] = "42efe95a08c7bd28bc913bf8c34ed026abcc62504307626fc5150ca360b93283"
diff --git a/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb b/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb
index ef875f1..a4048b7 100644
--- a/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb
@@ -12,3 +12,6 @@ PR = "r3"
 PE = "1"
 
 XORG_PN = "libXinerama"
+
+SRC_URI[md5sum] = "ecd4839ad01f6f637c6fb5327207f89b"
+SRC_URI[sha256sum] = "bbe2b4a0e8ccf01a40f02c429c8418bd1fe652fd2c6f05d487e1319599d6779f"
diff --git a/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb b/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb
index f46c147..17bbca0 100644
--- a/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb
+++ b/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb
@@ -11,3 +11,6 @@ PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "59b4fe0bdf8d9b05e45b59e8fe9e7516"
+SRC_URI[sha256sum] = "667e370a733b96b647a40211430cfc41dd2160c9a2aa701d0c839c626d0f2ae5"
diff --git a/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
index 761746e..bea2179 100644
--- a/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
@@ -19,3 +19,6 @@ PACKAGES =+ "libxmuu libxmuu-dev"
 
 FILES_libxmuu = "${libdir}/libXmuu.so.*"
 FILES_libxmuu-dev = "${libdir}/libXmuu.so"
+
+SRC_URI[md5sum] = "6836883a0120e8346cf7f58dc42e465a"
+SRC_URI[sha256sum] = "0fa91f303b70decc1ef6201c88c8a5f0b4ecd68c6c88bdcc891ecd1a689d36ad"
diff --git a/meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb
index 7d3b874..5b412ec 100644
--- a/meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb
@@ -13,3 +13,6 @@ PE = "1"
 XORG_PN = "libXp"
 
 CFLAGS_append += " -I ${S}/include/X11/XprintUtil -I ${S}/include/X11/extensions"
+
+SRC_URI[md5sum] = "0f4ac39108c1ae8c443cdfac259b58fa"
+SRC_URI[sha256sum] = "7e64b1550ce85b05762e960459ac676a0406c786756b200ff29c57f84bce9cae"
diff --git a/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb b/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
index 7658e2e..ecb8ad7 100644
--- a/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
+++ b/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
@@ -12,3 +12,6 @@ XORG_PN = "libXpm"
 PACKAGES =+ "sxpm cxpm"
 FILES_cxpm = "${bindir}/cxpm"
 FILES_sxpm = "${bindir}/sxpm"
+
+SRC_URI[md5sum] = "2de3a1b9541f4b3a6f9d84b69d25530e"
+SRC_URI[sha256sum] = "8add01029cab0598ca86e01a2f7781a636f74b757abe6b50ba61b2a6e2fd621e"
diff --git a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
index 75723aa..cc54790 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
@@ -7,3 +7,6 @@ LIC_FILES_CHKSUM = "file://src/xpapputil.c;beginline=2;endline=27;md5=be811cca90
 PE = "1"
 
 XORG_PN = "libXprintAppUtil"
+
+SRC_URI[md5sum] = "d2de510570aa6714681109b2ba178365"
+SRC_URI[sha256sum] = "24606446003379dbf499ef57e9294ce622c0f7f8a8f10834db61dc59ef690aa5"
diff --git a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
index 6fb1af5..a499fe2 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
@@ -7,3 +7,6 @@ PR = "r1"
 PE = "1"
 
 XORG_PN = "libXprintUtil"
+
+SRC_URI[md5sum] = "22584f1aab1deba253949b562d1f0f45"
+SRC_URI[sha256sum] = "72b6ae0420b9601f55be147e8d068f670b951ae73a81423ba25be5875d826e6c"
diff --git a/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb b/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb
index d6a9ae6..789d394 100644
--- a/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb
@@ -13,3 +13,6 @@ PE = "1"
 XORG_PN = "libXrandr"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "7785c3f7cff2735c94657e8f87ed8ad3"
+SRC_URI[sha256sum] = "62bba708649c04cbbc2f5de910942a01cc727b27225bc06169af8a89b957c661"
diff --git a/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb b/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb
index 080042f..22418e3 100644
--- a/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb
@@ -13,3 +13,6 @@ PE = "1"
 XORG_PN = "libXrender"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "3b3b7d076c2384b6c600c0b5f4ba971f"
+SRC_URI[sha256sum] = "7f58b1e263109e0a873eef8423aa14733a5499befbe645053aa622ed1f3ea668"
diff --git a/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb b/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb
index 5c8c47c..5d8f946 100644
--- a/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb
@@ -11,3 +11,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXres"
+
+SRC_URI[md5sum] = "d08f0b6df3f96c051637d37009f4e55a"
+SRC_URI[sha256sum] = "a00b0f464bc0c038db5614513b0e33475db22a7b3cd41e4e56a6c661a518a059"
diff --git a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
index fd3641d..a95cc96 100644
--- a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
@@ -9,3 +9,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXScrnSaver"
+
+SRC_URI[md5sum] = "898794bf6812fc9be9bf1bb7aa4d2b08"
+SRC_URI[sha256sum] = "ce3a66e2f6fa85b22280ab9cc1b2a113a2cb0ade9470914c7c3d6ac1d44b259a"
diff --git a/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb b/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb
index b9705c8..7a62e7b 100644
--- a/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb
+++ b/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb
@@ -28,3 +28,6 @@ do_compile() {
 	fi
 	oe_runmake
 }
+
+SRC_URI[md5sum] = "8a414f8f2327aaa616ca2dcac1f5d8c3"
+SRC_URI[sha256sum] = "eab91b594b801f7f07a20f936dda70a629028858cbcf541becf94f2786ae6b01"
diff --git a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
index 39c7bef..19b1c36 100644
--- a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
@@ -6,3 +6,6 @@ PR = "r1"
 PE = "1"
 
 XORG_PN = "libXTrap"
+
+SRC_URI[md5sum] = "1e2d966b5b2b89910e418bb0f78e10de"
+SRC_URI[sha256sum] = "cfd12ce675bd5cdeac3720582741fe81a99343bef475d440cb34a7f2cdfe34ba"
diff --git a/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb
index 5d2ec5f..811a190 100644
--- a/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb
@@ -12,3 +12,6 @@ PR = "r2"
 PE = "1"
 
 XORG_PN = "libXtst"
+
+SRC_URI[md5sum] = "7c592c72da6676f8b0aeec9133b81686"
+SRC_URI[sha256sum] = "7a2e0912b521f6bd8c392189874ba4a3b8168b0bba4c2143e073de53d8e85408"
diff --git a/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb b/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb
index d6e5777..0feecb4 100644
--- a/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb
@@ -10,3 +10,6 @@ DEPENDS += "libxext videoproto"
 PR = "r0"
 
 XORG_PN = "libXv"
+
+SRC_URI[md5sum] = "e292445a64b63e918bbc8b6aae6391dd"
+SRC_URI[sha256sum] = "e20f8e594bb0f44f3fbd25996945730391d72acbe5eaac760429fd6579caf5ee"
diff --git a/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb b/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb
index 49e58f6..6f87f72 100644
--- a/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb
@@ -12,3 +12,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXvMC"
+
+SRC_URI[md5sum] = "bfc7524646f890dfc30dea1d676004a3"
+SRC_URI[sha256sum] = "3dda80e9c71fd14a14f93279c6f661703c5c1c43d104a5db0842377bdf0c3392"
diff --git a/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb b/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb
index 6ea3a19..cc76861 100644
--- a/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb
+++ b/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb
@@ -8,3 +8,6 @@ PE = "1"
 XORG_PN = "libXxf86dga"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=abb99ac125f84f424a4278153988e32f"
+
+SRC_URI[md5sum] = "bbd5fdf63d4c107c8cb710d4df2012b4"
+SRC_URI[sha256sum] = "1ba652f562ce3fb3fef092ce5485eb7ef15b521124c901977b56d6f324605a06"
diff --git a/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.2.bb b/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.2.bb
index 8284dac..12a1ad7 100644
--- a/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.2.bb
@@ -12,3 +12,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXxf86misc"
+
+SRC_URI[md5sum] = "51fed53e8de067d4b8666f75a0212400"
+SRC_URI[sha256sum] = "8e64b6b1bf34fcd112b1fd866d77e110b47794e825a996e4492c0ee408957cb3"
diff --git a/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb b/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb
index bf190ad..0e4e95b 100644
--- a/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb
@@ -11,3 +11,6 @@ PR = "r0"
 PE = "1"
 
 XORG_PN = "libXxf86vm"
+
+SRC_URI[md5sum] = "34dc3df888c164378da89a7deeb245a0"
+SRC_URI[sha256sum] = "21cae9239aefd59353a4ddb0d6ed890402b681570ccd4bc977d80a75a020239e"
diff --git a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
index 0e59bd5..358bf84 100644
--- a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
@@ -6,6 +6,9 @@ LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0e7f21ca7db975c63467d2e7624a12f9"
 
 SRC_URI = "http://people.freedesktop.org/~svu/xkeyboard-config-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "bb8a98ee61cdc4bd835fdfd2b5cee3e6"
+SRC_URI[sha256sum] = "175f275f5a041edda41fe0f27e59061d1d9c6615959475e4d68ad773b6a2e376"
 SECTION = "x11/libs"
 DEPENDS = "intltool xkbcomp-native glib-2.0"
 
diff --git a/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb b/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
index a6e9feb..6a533e7 100644
--- a/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
+++ b/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
@@ -13,3 +13,6 @@ RDEPENDS_${PN}-dev = ""
 DEPENDS += "gettext"
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "c66f9ffd2da4fb012220c6c40ebc7609"
+SRC_URI[sha256sum] = "c5f9a73705ddbb8c9b8f16c4fac33b4b9ba7661b8305474b4c1549e48d9ca5c6"
diff --git a/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.0.bb b/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.0.bb
index 0ea0729..894c141 100644
--- a/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.0.bb
@@ -10,3 +10,6 @@ DESCRIPTION = "X.Org BigReqs extension headers"
 BBCLASSEXTEND = "native nativesdk"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=b12715630da6f268d0d3712ee1a504f4"
+
+SRC_URI[md5sum] = "d30c5dbf19ca6dffcd9788227ecff8c5"
+SRC_URI[sha256sum] = "4864e12d3c5a99b0a9ee4704822455299345e6c65b23c688a4e4bf11481107bd"
diff --git a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb
index 191053b..37bbe31 100644
--- a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb
+++ b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb
@@ -6,3 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=f8cdfa47489609f305b91521f3a8803f \
 
 CONFLICTS = "compositeext"
 PE = "1"
+
+SRC_URI[md5sum] = "6281344d656d4e0c8e9db4918efe3d1d"
+SRC_URI[sha256sum] = "6013d1ca63b2b7540f6f99977090812b899852acfbd9df123b5ebaa911e30003"
diff --git a/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb b/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
index db92da3..1f2c555 100644
--- a/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
@@ -7,3 +7,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d5f5a2de65c3a84cbde769f07a769608 \
 CONFLICTS = "damageext"
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "998e5904764b82642cc63d97b4ba9e95"
+SRC_URI[sha256sum] = "5c7c112e9b9ea8a9d5b019e5f17d481ae20f766cb7a4648360e7c1b46fc9fc5b"
diff --git a/meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb b/meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb
index 635c63f..da62629 100644
--- a/meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb
+++ b/meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb
@@ -6,3 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=a3c3499231a8035efd0e004cfbd3b72a \
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "880a41720b2937e2660dcdc0d34a8791"
+SRC_URI[sha256sum] = "3a882ca43a1f359e3489468e6c407fd7d56d559f8895cf096a2ec877d6c403b0"
diff --git a/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb b/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb
index 048c27f..849dc00 100644
--- a/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb
+++ b/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb
@@ -7,3 +7,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=2e396fa91834f8786032cad2da5638f3 \
                     file://dri2proto.h;endline=31;md5=22f28bf68d01b533f26195e94b3ed8ca"
 
 PR = "r0"
+
+SRC_URI[md5sum] = "3407b494d5e90d584c9af52aa8f9f028"
+SRC_URI[sha256sum] = "b2141892a0db35feffa5e952ff5e1d2727c4436b07d7e2e9dd2ed89c8bb3e677"
diff --git a/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb b/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb
index 16f9039..9e28304 100644
--- a/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb
@@ -6,3 +6,6 @@ PR = "r1"
 PE = "1"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=6cf85dc8217152304ac976db1e240ebe"
+
+SRC_URI[md5sum] = "5c74f61d6f77b2e6a083b2b31000be42"
+SRC_URI[sha256sum] = "47881a52a8d9da1e41e4f028ed32a8b44f738afbead819c0a07253fdc1641885"
diff --git a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
index daf9c7a..567f1fe 100644
--- a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
@@ -9,3 +9,6 @@ PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "bdb58ecc313b509247036d5c11fa99df"
+SRC_URI[sha256sum] = "de4cbfccb533c190073445eb2a891d997e89f6fb58204f68ae82871de044f857"
diff --git a/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb b/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb
index 302e84a..d4594b3 100644
--- a/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb
+++ b/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb
@@ -8,3 +8,6 @@ PR = "r1"
 PE = "1"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "a8a50e5e995bfacb0359575faf7f6906"
+SRC_URI[sha256sum] = "1dcaa659d416272ff68e567d1910ccc1e369768f13b983cffcccd6c563dbe3cb"
diff --git a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb b/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
index 44f6a34..1ed8100 100644
--- a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
+++ b/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
@@ -8,3 +8,6 @@ PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "37102ffcaa73f77d700acd6f7a25d8f0"
+SRC_URI[sha256sum] = "9c9abc81e2927e6b6ffc6eece1f3fbc7559f506a2848673a21e72c0ae4d639bc"
diff --git a/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb b/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
index b612d9d..9c8e703 100644
--- a/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
+++ b/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
@@ -8,3 +8,6 @@ PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "55edc5ff2efb734215c868f72f7cf27e"
+SRC_URI[sha256sum] = "48be7a9d190b600210e5ad08b4e8862a6b08e72dc52dbdf324716a888eb457de"
diff --git a/meta/recipes-graphics/xorg-proto/inputproto_2.0.bb b/meta/recipes-graphics/xorg-proto/inputproto_2.0.bb
index f3332a8..1b63be5 100644
--- a/meta/recipes-graphics/xorg-proto/inputproto_2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/inputproto_2.0.bb
@@ -10,3 +10,6 @@ PE = "1"
 inherit gettext
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "0f7acbc14a082f9ae03744396527d23d"
+SRC_URI[sha256sum] = "472f57f7928ab20a1303a25982c4091db9674c2729bbd692c9a7204e23ea1af4"
diff --git a/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb b/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
index e98d3d6..affd627 100644
--- a/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
@@ -10,3 +10,6 @@ PE = "1"
 DEPENDS += "gettext"
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "e7edb59a3f54af15f749e8f3e314ee62"
+SRC_URI[sha256sum] = "0eba4f525e1700798cc0585fe29556e4369fba6517c670866273ad104cf5f49d"
diff --git a/meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb b/meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb
index 194abba..6f8e205 100644
--- a/meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb
@@ -7,3 +7,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=a2363c155fd3749a8cf436ef56c3070f \
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "7321847a60748b4d2f1fa16db4b6ede8"
+SRC_URI[sha256sum] = "f059a93188e7143dbb6cc55e31ccf81b976776aa3023bfa57f47501fd1bfd3be"
diff --git a/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb b/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
index 1e116d9..c027bfa 100644
--- a/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
+++ b/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
@@ -9,3 +9,6 @@ PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "597491c0d8055e2a66f11350c4985775"
+SRC_URI[sha256sum] = "d90d00612cc49292bd8d9dc19efb1c9187385fbe87590d7279a02e5e1066dc71"
diff --git a/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb b/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
index 0ba3d65..b5f68d3 100644
--- a/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
+++ b/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
@@ -7,3 +7,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=575827a0f554bbed332542976d5f3d40 \
 CONFLICTS = "recordext"
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "24541a30b399213def35f48efd926c63"
+SRC_URI[sha256sum] = "b27eb043d3e618bc1f8b704a64f8ae218ea00e7f36f9107ac41d41940773098d"
diff --git a/meta/recipes-graphics/xorg-proto/renderproto_0.11.bb b/meta/recipes-graphics/xorg-proto/renderproto_0.11.bb
index afdbb05..50854f9 100644
--- a/meta/recipes-graphics/xorg-proto/renderproto_0.11.bb
+++ b/meta/recipes-graphics/xorg-proto/renderproto_0.11.bb
@@ -9,3 +9,6 @@ PR = "r1"
 PE = "1"
 
 BBCLASSEXTEND = "nativesdk"
+
+SRC_URI[md5sum] = "b160a9733fe91b666e74fca284333148"
+SRC_URI[sha256sum] = "c4d1d6d9b0b6ed9a328a94890c171d534f62708f0982d071ccd443322bedffc2"
diff --git a/meta/recipes-graphics/xorg-proto/resourceproto_1.1.0.bb b/meta/recipes-graphics/xorg-proto/resourceproto_1.1.0.bb
index 702e8f3..23afed7 100644
--- a/meta/recipes-graphics/xorg-proto/resourceproto_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/resourceproto_1.1.0.bb
@@ -6,3 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 CONFLICTS = "resourceext"
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "84795594b3ebd2ee2570cf93340d152c"
+SRC_URI[sha256sum] = "408d9ab067e4141d1bb844d2d0d7d26ad177567384190c32a913131cf549b36b"
diff --git a/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.0.bb b/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.0.bb
index cd99251..0000a6b 100644
--- a/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.0.bb
@@ -7,3 +7,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=eed49b78b15b436c933b6b8b054e3901 \
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "9040c991a56ee9b5976936f8c65d5c8a"
+SRC_URI[sha256sum] = "deaf0a3212617e0dab353a3c3a66e0a1f2398306eca0fd882ac15996b0e44d99"
diff --git a/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb b/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb
index c152be7..c4a0780 100644
--- a/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb
+++ b/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0a984c8e242256a12f3b8dac085893db"
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "3b713239e5e6b269b31cb665563358df"
+SRC_URI[sha256sum] = "ff32a0d3bc696cadc3457be9c85e9818af2b6daa2f159188bb01aad7e932a0e1"
diff --git a/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb b/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
index 83378b6..827aa27 100644
--- a/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
+++ b/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59d089e37bf57b5206602da38f58ca5d"
 
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "c3b348c6e2031b72b11ae63fc7f805c2"
+SRC_URI[sha256sum] = "3ec76d24931d1e08c6c8d0b89a25e32dc44bc8f87d1dcb3fe201e3c99f89635a"
diff --git a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb b/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
index fbd5284..9b677e6 100644
--- a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
@@ -9,3 +9,6 @@ PE = "1"
 DEPENDS += "gettext"
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "cd7372cd827bfd7ca7e9238f2ce274b1"
+SRC_URI[sha256sum] = "730e27e22bfb99409bc364233f3f766f5163de0cbf2edad33738cfdf55f04c15"
diff --git a/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb b/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
index 157f070..2289744 100644
--- a/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
@@ -9,3 +9,6 @@ PE = "1"
 inherit gettext
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "263ae968b223c23b2986603d84e5c30e"
+SRC_URI[sha256sum] = "f6f829e112c8eca7c2f10b2193e8d927b9b7722283d647cfd2aea09758159199"
diff --git a/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb b/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb
index f038a1c..4bf6b53 100644
--- a/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb
@@ -9,3 +9,6 @@ PE = "1"
 DEPENDS += "gettext"
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "120e226ede5a4687b25dd357cc9b8efe"
+SRC_URI[sha256sum] = "ba9220e2c4475f5ed2ddaa7287426b30089e4d29bd58d35fad57ba5ea43e1648"
diff --git a/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb b/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb
index c400193..99f1f0e 100644
--- a/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb
@@ -6,3 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 CONFLICTS = "xxf86dgaext"
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "a036dc2fcbf052ec10621fd48b68dbb1"
+SRC_URI[sha256sum] = "ac5ef65108e1f2146286e53080975683dae49fc94680042e04bd1e2010e99050"
diff --git a/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb b/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb
index 6f31845..9f76ddd 100644
--- a/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb
@@ -6,3 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94 \
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "309d552732666c3333d7dc63e80d042f"
+SRC_URI[sha256sum] = "d23f12deffd03e582e897ed6a7df3ea7f66ee8577f0f61374dcdf2ebffdce1be"
diff --git a/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb b/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb
index 9ea0780..6046c7e 100644
--- a/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "ca63bbb31cf5b7f37b2237e923ff257a"
+SRC_URI[sha256sum] = "45b8ec6a4a8ca21066dce117e09dcc88539862e616e60fb391de05b36f63b095"
diff --git a/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb b/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb
index 9ea0780..6f090d4 100644
--- a/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb
@@ -5,3 +5,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "b6a96ffdae084e27487a58314008b000"
+SRC_URI[sha256sum] = "07d9b237541f2d6313b5b28f5335d987a766b36c87b133f77cc48f31d969a3ae"
diff --git a/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.bb b/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.bb
index ccbbb36..49f8c5c 100644
--- a/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.bb
@@ -7,3 +7,6 @@ CONFLICTS = "xxf86vmext"
 
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "4434894fc7d4eeb4a22e6b876d56fdaa"
+SRC_URI[sha256sum] = "8f704613a5407b31c594d05cf8e053f2b05777172a44e7cd2abd8090bd2ac247"
diff --git a/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.bb b/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.bb
index d053dbb..6b14b8f 100644
--- a/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.bb
@@ -6,3 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3e397a5326c83d5d0ebf5b3f87163ac6 \
 
 PR = "r1"
 PE = "1"
+
+SRC_URI[md5sum] = "a8aadcb281b9c11a91303e24cdea45f5"
+SRC_URI[sha256sum] = "58e88087ceec7201d918f94d6b1247325adca2a9903fed11291b412427a7ba64"
diff --git a/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb b/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
index 866364e..1e968c5 100644
--- a/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
+++ b/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
@@ -8,3 +8,6 @@ PE = "1"
 
 EXTRA_OECONF_append = "--enable-specs=no"
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "700f8663c23713c2a81a6038a7d358f0"
+SRC_URI[sha256sum] = "47b14f6da8c57a726ef1cfa5964a4a6cf9505bc6d78f69d3ae89f4b19956fc2a"
diff --git a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
index 5eba970..9b89400 100644
--- a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
@@ -6,3 +6,6 @@ RDEPENDS = "gcc"
 
 PR = "r2"
 PE = "1"
+
+SRC_URI[md5sum] = "fc49f45251c1336fe1dad5dba1c83fcd"
+SRC_URI[sha256sum] = "fdd3963294e80b27416f902a5c029c033d321f03310d3cafa3afb62b50ddce92"
diff --git a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
index cd8ffdb..8943c2d 100644
--- a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
@@ -8,3 +8,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=b9c6cfb044c6d0ff899eaafe4c729367"
 
 PR = "r0"
 PE = "1"
+
+SRC_URI[md5sum] = "0fd1e53d94142ddee5340f87de0b9561"
+SRC_URI[sha256sum] = "68038fa67929c5553044ad7417e1a64cabe954f04213b305dd36a04a61317d31"
diff --git a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
index c7037d3..7130ea2 100644
--- a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
+++ b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
@@ -14,3 +14,6 @@ RDEPENDS_${PN}-dev = ""
 RRECOMMENDS_${PN}-dbg = "${PN}-dev (= ${EXTENDPV})"
 
 BBCLASSEXTEND = "native nativesdk"
+
+SRC_URI[md5sum] = "8580021f3a9e242ab09d23d62e475d53"
+SRC_URI[sha256sum] = "212c3d14474d7cffdbc22437d4896211a5dce6b99b02b96229c9be7d963c90cf"
diff --git a/meta/recipes-graphics/xrestop/xrestop_0.4.bb b/meta/recipes-graphics/xrestop/xrestop_0.4.bb
index 1fd2450..915a375 100644
--- a/meta/recipes-graphics/xrestop/xrestop_0.4.bb
+++ b/meta/recipes-graphics/xrestop/xrestop_0.4.bb
@@ -13,4 +13,7 @@ DEPENDS = "libxres libxext virtual/libx11"
 
 SRC_URI = "http://projects.o-hand.com/sources/xrestop/xrestop-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "d8a54596cbaf037e62b80c4585a3ca9b"
+SRC_URI[sha256sum] = "67c2fc94a7ecedbaae0d1837e82e93d1d98f4a6d759828860e552119af3ce257"
+
 inherit autotools
diff --git a/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb b/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
index 565393d..2136f34 100644
--- a/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
+++ b/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
@@ -16,6 +16,9 @@ SRC_URI = "${GPE_MIRROR}/xtscal-${PV}.tar.bz2 \
            file://cleanup.patch;patch=1 \
            file://30xTs_Calibrate.sh"
 
+SRC_URI[md5sum] = "9bcab80b474d5454477d1ca166a68c34"
+SRC_URI[sha256sum] = "27b9dc2203de9b1706ca39fa6ca80ecab8807909ec901c4a345b8e41178800a1"
+
 inherit autotools
 
 do_install_append() {
diff --git a/meta/recipes-kernel/kexec/kexec-tools_2.0.2.bb b/meta/recipes-kernel/kexec/kexec-tools_2.0.2.bb
index 758d3ec..0d15b5b 100644
--- a/meta/recipes-kernel/kexec/kexec-tools_2.0.2.bb
+++ b/meta/recipes-kernel/kexec/kexec-tools_2.0.2.bb
@@ -3,3 +3,6 @@ export LDFLAGS = "-L${STAGING_LIBDIR}"
 EXTRA_OECONF = " --with-zlib=yes"
 
 PR = "r0"
+
+SRC_URI[md5sum] = "bc401cf3262b25ff7c9a51fc76c8ab91"
+SRC_URI[sha256sum] = "549ab65c18a2229b6bf21b6875ca6bbe0e579bca08c3543ce6aaf8287a0b4188"
diff --git a/meta/recipes-kernel/latencytop/latencytop_0.5.bb b/meta/recipes-kernel/latencytop/latencytop_0.5.bb
index 75c72c1..247ec16 100644
--- a/meta/recipes-kernel/latencytop/latencytop_0.5.bb
+++ b/meta/recipes-kernel/latencytop/latencytop_0.5.bb
@@ -12,6 +12,9 @@ PR = "r1"
 SRC_URI = "http://www.latencytop.org/download/latencytop-${PV}.tar.gz \
             file://latencytop-makefile.patch"
 
+SRC_URI[md5sum] = "73bb3371c6ee0b0e68e25289027e865c"
+SRC_URI[sha256sum] = "9e7f72fbea7bd918e71212a1eabaad8488d2c602205d2e3c95d62cd57e9203ef"
+
 CFLAGS += "${LDFLAGS}"
 
 do_install() {
diff --git a/meta/recipes-kernel/lttng/lttng-control_0.88.bb b/meta/recipes-kernel/lttng/lttng-control_0.88.bb
index a96b80c..502064f 100644
--- a/meta/recipes-kernel/lttng/lttng-control_0.88.bb
+++ b/meta/recipes-kernel/lttng/lttng-control_0.88.bb
@@ -10,6 +10,9 @@ LTTDATE = "09242010"
 
 SRC_URI = "http://ltt.polymtl.ca/files/lttng/ltt-control-${PV}-${LTTDATE}.tar.gz"
 
+SRC_URI[md5sum] = "ca81d874352756837518d74c9d1091a7"
+SRC_URI[sha256sum] = "89c625a4d1b0823954217df232a31f3cae31de7b6655c0d885a61bece0dfcd88"
+
 S = "${WORKDIR}/ltt-control-${PV}-${LTTDATE}"
 
 inherit autotools
diff --git a/meta/recipes-kernel/lttng/lttng-ust_0.8.bb b/meta/recipes-kernel/lttng/lttng-ust_0.8.bb
index 79b620e..7d88b16 100644
--- a/meta/recipes-kernel/lttng/lttng-ust_0.8.bb
+++ b/meta/recipes-kernel/lttng/lttng-ust_0.8.bb
@@ -16,6 +16,9 @@ PR = "r0"
 
 SRC_URI = "http://lttng.org/files/ust/releases/ust-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "333ff7c8fef92b31dff85789865bb791"
+SRC_URI[sha256sum] = "802398bc2c3ad5c80bd236d1ee24968f4da8a1401695e8dc15cb396ac836abb4"
+
 S = "${WORKDIR}/ust-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb b/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
index 71bcb80..550d8f5 100644
--- a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
+++ b/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
@@ -16,6 +16,9 @@ SECTION = "devel"
 ALTNAME = "lttv-${PV}-20082010"
 
 SRC_URI = "http://lttng.org/files/packages/${ALTNAME}.tar.gz"
+
+SRC_URI[md5sum] = "ebcbc4e21184b4b0dcb0611b4977dad8"
+SRC_URI[sha256sum] = "d258b13cd76c37e4f8395c06159986dd45517bef312895ffa59722087a2879e7"
 S = "${WORKDIR}/${ALTNAME}"
 
 inherit autotools
diff --git a/meta/recipes-kernel/module-init-tools/module-init-tools_3.12.bb b/meta/recipes-kernel/module-init-tools/module-init-tools_3.12.bb
index 6c312b4..3d7c287 100644
--- a/meta/recipes-kernel/module-init-tools/module-init-tools_3.12.bb
+++ b/meta/recipes-kernel/module-init-tools/module-init-tools_3.12.bb
@@ -37,3 +37,6 @@ pkg_postinst_module-init-tools-depmod() {
 pkg_prerm_module-init-tools-depmod() {
 	update-alternatives --remove depmod /sbin/depmod.26
 }
+
+SRC_URI[md5sum] = "8b2257ce9abef74c4a44d825d23140f3"
+SRC_URI[sha256sum] = "d012ab07ea26721467a85a775f34747c1c8897e37f16bec5317d8a72ef8b4f17"
diff --git a/meta/recipes-kernel/modutils/modutils_2.4.27.bb b/meta/recipes-kernel/modutils/modutils_2.4.27.bb
index 497d1f1..0174f83 100644
--- a/meta/recipes-kernel/modutils/modutils_2.4.27.bb
+++ b/meta/recipes-kernel/modutils/modutils_2.4.27.bb
@@ -14,6 +14,9 @@ SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/kernel/modutils/v2.4/modutils-${P
            file://armeb.patch;patch=1 \
 	   file://gcc4.patch;patch=1"
 
+SRC_URI[md5sum] = "bac989c74ed10f3bf86177fc5b4b89b6"
+SRC_URI[sha256sum] = "ab4c9191645f9ffb455ae7c014d8c45339c13a1d0f6914817cfbf30a0bc56bf0"
+
 inherit autotools
 
 # modutils go in /sbin
diff --git a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
index 9679411..894bb9a 100644
--- a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
+++ b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
@@ -19,6 +19,9 @@ PR = "r0"
 SRC_URI = "${SOURCEFORGE_MIRROR}/oprofile/oprofile-${PV}.tar.gz \
            file://opstart.patch \
            file://acinclude.m4"
+
+SRC_URI[md5sum] = "4e407093ac06200185d5a5e6437d7242"
+SRC_URI[sha256sum] = "3f0dd40a7749fc650d25d79d42ebbff8f3b6db310c36e7c3839696cc09077880"
 S = "${WORKDIR}/oprofile-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-kernel/powertop/powertop_1.13.bb b/meta/recipes-kernel/powertop/powertop_1.13.bb
index da3f034..3988406 100644
--- a/meta/recipes-kernel/powertop/powertop_1.13.bb
+++ b/meta/recipes-kernel/powertop/powertop_1.13.bb
@@ -15,6 +15,9 @@ PR = "r0"
 SRC_URI = "http://www.lesswatts.org/projects/powertop/download/powertop-${PV}.tar.gz \
            file://stub_out_the_ncurses_calls_in_dump_mode.patch"
 
+SRC_URI[md5sum] = "78aa17c8f55178004223bf236654298e"
+SRC_URI[sha256sum] = "2bc866089496877dd26d2d316ad5763ab8ecb5e28aefba44bc5d355dcdc58d98"
+
 CFLAGS += "${LDFLAGS}"
 EXTRA_OEMAKE = "VERSION=\"${PV}\""
 
diff --git a/meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb b/meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb
index b0a2a30..db58abb 100644
--- a/meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb
+++ b/meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb
@@ -17,6 +17,9 @@ PR = "r0"
 SRC_URI = "ftp://ftp.alsa-project.org/pub/lib/alsa-lib-${PV}.tar.bz2 \
            file://fix-tstamp-declaration.patch;patch=1"
 
+SRC_URI[md5sum] = "f48b50421d8a69d2d806d9c47e534f0d"
+SRC_URI[sha256sum] = "b4238ecaba5e4a1383af06180611a57ef29f9bf47bc177136dba1bb5b70ff423"
+
 inherit autotools pkgconfig
 
 require alsa-fpu.inc
diff --git a/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb b/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
index 7b30c0d..46283cc 100644
--- a/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
+++ b/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
@@ -11,6 +11,9 @@ PR = "r0"
 SRC_URI = "ftp://ftp.alsa-project.org/pub/utils/alsa-utils-${PV}.tar.bz2 \
            file://ncursesfix.patch;patch=1 "
 
+SRC_URI[md5sum] = "cb0cf46029ac9549cf3a31bff6a4f4e1"
+SRC_URI[sha256sum] = "b7d05e915e25f8540ad151c6dd558cf0fc1e9bb0ee23052d531c983666a1f7b0"
+
 # lazy hack. needs proper fixing in gettext.m4, see
 # http://bugs.openembedded.org/show_bug.cgi?id=2348
 # please close bug and remove this comment when properly fixed
diff --git a/meta/recipes-multimedia/flac/flac_1.2.1.bb b/meta/recipes-multimedia/flac/flac_1.2.1.bb
index 30a8cfb..d41d94e 100644
--- a/meta/recipes-multimedia/flac/flac_1.2.1.bb
+++ b/meta/recipes-multimedia/flac/flac_1.2.1.bb
@@ -20,6 +20,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/flac/flac-${PV}.tar.gz \
            file://flac-gcc43-fixes.patch;patch=1 \
            file://xmms.m4"
 
+SRC_URI[md5sum] = "153c8b15a54da428d1f0fadc756c22c7"
+SRC_URI[sha256sum] = "9635a44bceb478bbf2ee8a785cf6986fba525afb5fad1fd4bba73cf71f2d3edf"
+
 S = "${WORKDIR}/flac-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
index 811daa2..59e127c 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
@@ -22,3 +22,6 @@ do_configure_prepend() {
 	# This m4 file contains nastiness which conflicts with libtool 2.2.2
 	rm ${S}/m4/lib-link.m4 || true
 }
+
+SRC_URI[md5sum] = "7c84766f6d24f41ba90c3f6141012ab8"
+SRC_URI[sha256sum] = "1031dff866df976a957f34039addbab4c0753406299a275f4cf1780e1dbe2a90"
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
index 7e0370a..71d211a 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
@@ -12,6 +12,9 @@ RDEPENDS += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-ftp \
 
 SRC_URI += " file://gst-plugins-base-tremor.patch"
 
+SRC_URI[md5sum] = "3ad90152b58563e1314af26c263f3c4c"
+SRC_URI[sha256sum] = "63938641380be9935c804ae8d55acdcfd93920ed2deb72dcf70f027a78b085d7"
+
 PR = "r1"
 
 inherit gettext
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
index 528dcbf..83b43b6 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
@@ -17,3 +17,6 @@ do_configure_prepend() {
 	# This m4 file contains nastiness which conflicts with libtool 2.2.2
 	rm ${S}/m4/lib-link.m4 || true
 }
+
+SRC_URI[md5sum] = "d734bc866788d1d6fc74c4ff1318926c"
+SRC_URI[sha256sum] = "b5d5750c12412c47d85ba9391c842f6f02cad9511876695e48b15fb37e4699f6"
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
index 38e28fa..7d2bfb8 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
@@ -15,6 +15,9 @@ SRC_URI = "http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.bz
            file://check_fix.patch;patch=1 \
            file://gst-inspect-check-error.patch;patch=1"
 
+SRC_URI[md5sum] = "de01f73f71d97c5854badd363ca06509"
+SRC_URI[sha256sum] = "e8ef301be423797ff36a0bb3615930b112b4175634051d19fd655e0ed974532a"
+
 inherit autotools pkgconfig
 
 EXTRA_OECONF = "--disable-docs-build --disable-dependency-tracking --with-check=no --disable-examples --disable-tests --disable-valgrind --disable-debug"
diff --git a/meta/recipes-multimedia/liba52/liba52_0.7.4.bb b/meta/recipes-multimedia/liba52/liba52_0.7.4.bb
index 884b861..239c30a 100644
--- a/meta/recipes-multimedia/liba52/liba52_0.7.4.bb
+++ b/meta/recipes-multimedia/liba52/liba52_0.7.4.bb
@@ -11,6 +11,9 @@ inherit autotools
 
 SRC_URI = "http://liba52.sourceforge.net/files/a52dec-${PV}.tar.gz \
            file://buildcleanup.patch;patch=1"
+
+SRC_URI[md5sum] = "caa9f5bc44232dc8aeea773fea56be80"
+SRC_URI[sha256sum] = "a21d724ab3b3933330194353687df82c475b5dfb997513eef4c25de6c865ec33"
 S = "${WORKDIR}/a52dec-${PV}"
 
 EXTRA_OECONF = " --enable-shared "
diff --git a/meta/recipes-multimedia/libid3tag/libid3tag_0.15.1b.bb b/meta/recipes-multimedia/libid3tag/libid3tag_0.15.1b.bb
index 072db9d..3616f08 100644
--- a/meta/recipes-multimedia/libid3tag/libid3tag_0.15.1b.bb
+++ b/meta/recipes-multimedia/libid3tag/libid3tag_0.15.1b.bb
@@ -13,6 +13,9 @@ PR = "r3"
 SRC_URI = "ftp://ftp.mars.org/pub/mpeg/libid3tag-${PV}.tar.gz \
            file://addpkgconfig.patch;patch=1"
 
+SRC_URI[md5sum] = "e5808ad997ba32c498803822078748c3"
+SRC_URI[sha256sum] = "63da4f6e7997278f8a3fef4c6a372d342f705051d1eeb6a46a86b03610e26151"
+
 S = "${WORKDIR}/libid3tag-${PV}"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-multimedia/libogg/libogg_1.2.1.bb b/meta/recipes-multimedia/libogg/libogg_1.2.1.bb
index 0c64da2..7223e4e 100644
--- a/meta/recipes-multimedia/libogg/libogg_1.2.1.bb
+++ b/meta/recipes-multimedia/libogg/libogg_1.2.1.bb
@@ -12,4 +12,7 @@ PR = "r0"
 
 SRC_URI = "http://downloads.xiph.org/releases/ogg/libogg-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "b998c2420721146df3b3d0e7776c97b9"
+SRC_URI[sha256sum] = "6858848617bca6eab01e7d8526bc0d2a417e95070a255cbf9c881881365e36c0"
+
 inherit autotools pkgconfig
diff --git a/meta/recipes-multimedia/libpng/libpng_1.2.44.bb b/meta/recipes-multimedia/libpng/libpng_1.2.44.bb
index 318bb74..4a8d5c3 100644
--- a/meta/recipes-multimedia/libpng/libpng_1.2.44.bb
+++ b/meta/recipes-multimedia/libpng/libpng_1.2.44.bb
@@ -10,6 +10,9 @@ PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/libpng/libpng-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "e3ac7879d62ad166a6f0c7441390d12b"
+SRC_URI[sha256sum] = "b9ab20f1c2c3bf6c4448fd9bd8a4a8905b918114d5fada56c97bb758a17b7215"
+
 inherit autotools binconfig pkgconfig
 
 PACKAGES =+ "${PN}12-dbg ${PN}12 ${PN}12-dev"
diff --git a/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb b/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
index 1ecf4e4..85eb7bc 100644
--- a/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
+++ b/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
@@ -7,6 +7,9 @@ DEPENDS = "flac"
 PR = "r3"
 
 SRC_URI = "http://www.mega-nerd.com/SRC/libsamplerate-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "06861c2c6b8e5273c9b80cf736b9fd0e"
+SRC_URI[sha256sum] = "98b8766323c78b7b718dfd4ef6b9292bbf0796b742abb2319b8278cbeee731d4"
 S = "${WORKDIR}/libsamplerate-${PV}"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb b/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
index 1c575f0..4d12a42 100644
--- a/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
+++ b/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
@@ -8,6 +8,9 @@ PR = "r0"
 
 SRC_URI = "http://www.mega-nerd.com/libsndfile/files/libsndfile-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "d0e22b5ff2ef945615db33960376d733"
+SRC_URI[sha256sum] = "54c9c375598538263395a691f9b30987a2faa3d8a166d27e6a09ba4700223d4d"
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=e77fe93202736b47c07035910f47974a"
 
 S = "${WORKDIR}/libsndfile-${PV}"
diff --git a/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb b/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb
index 74d7572..0dc68e9 100644
--- a/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb
+++ b/meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb
@@ -11,6 +11,9 @@ PR = "r1"
 SRC_URI = "http://downloads.xiph.org/releases/theora/libtheora-${PV}.tar.bz2 \
            file://no-docs.patch"
 
+SRC_URI[md5sum] = "292ab65cedd5021d6b7ddd117e07cd8e"
+SRC_URI[sha256sum] = "b6ae1ee2fa3d42ac489287d3ec34c5885730b1296f0801ae577a35193d3affbc"
+
 inherit autotools pkgconfig
 
 EXTRA_OECONF = "--disable-examples"
diff --git a/meta/recipes-multimedia/libtiff/tiff_3.8.2.bb b/meta/recipes-multimedia/libtiff/tiff_3.8.2.bb
index 012085f..2d9fa48 100644
--- a/meta/recipes-multimedia/libtiff/tiff_3.8.2.bb
+++ b/meta/recipes-multimedia/libtiff/tiff_3.8.2.bb
@@ -8,6 +8,9 @@ PR = "r2"
 SRC_URI = "ftp://ftp.remotesensing.org/pub/libtiff/tiff-${PV}.tar.gz \
            file://libtool2.patch;patch=1"
 
+SRC_URI[md5sum] = "fbb6f446ea4ed18955e2714934e5b698"
+SRC_URI[sha256sum] = "be88f037080b93ce0a337b2b3ca5e8195f76885deb6c558cc3aa872ee848fc76"
+
 inherit autotools
 
 PACKAGES =+ "tiffxx tiffxx-dbg tiffxx-dev tiff-utils tiff-utils-dbg"
diff --git a/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb b/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb
index 2181cb6..d30057f 100644
--- a/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb
+++ b/meta/recipes-multimedia/libvorbis/libvorbis_1.3.2.bb
@@ -13,6 +13,9 @@ PR = "r0"
 
 SRC_URI = "http://downloads.xiph.org/releases/vorbis/libvorbis-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "c870b9bd5858a0ecb5275c14486d9554"
+SRC_URI[sha256sum] = "eeb4dcada143846dfba760d982954a02f82e08845cbc33871f5dac547b8b6124"
+
 inherit autotools pkgconfig
 
 # vorbisfile.c reveals a problem in the gcc register spilling for the
diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
index 4ef88f6..8f6b1ba 100644
--- a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
+++ b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
@@ -10,4 +10,7 @@ PR = "r0"
 SRC_URI = "http://ftp.musicbrainz.org/pub/musicbrainz/${PN}-${PV}.tar.gz \
            file://fix_build_issue_for_gcc_4.5.0.patch"
 
+SRC_URI[md5sum] = "f4824d0a75bdeeef1e45cc88de7bb58a"
+SRC_URI[sha256sum] = "7fd459a9fd05be9faec60a9a21caa9a1e9fda03147d58d8c7c95f33582a738c5"
+
 inherit cmake pkgconfig
diff --git a/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb b/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
index 7af02f4..fc7ffe9 100644
--- a/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
+++ b/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
@@ -12,6 +12,9 @@ SRC_URI = "http://0pointer.de/lennart/projects/libcanberra/libcanberra-${PV}.tar
            file://nofallbackfix.patch;patch=1 \
            file://autoconf_version.patch;patch=1"
 
+SRC_URI[md5sum] = "2623370bfcecaeecaeb85e5ec445f340"
+SRC_URI[sha256sum] = "b0e3cb59e605412a52352cf9cf36344b165463d4e65916c95deb73fc51838272"
+
 EXTRA_OECONF = " --disable-oss --disable-ltdl-install" 
 
 do_configure_prepend () {
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.15.bb b/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.15.bb
index 49387ec..7bac9f9 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.15.bb
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.15.bb
@@ -11,6 +11,9 @@ SRC_URI += "\
   file://autoconf_version.patch;patch=1 \
 "
 
+SRC_URI[md5sum] = "4510364eeab219fd100bd1b373b1a002"
+SRC_URI[sha256sum] = "1e8ad5b7c5cf3485bd0738c296274ff2c99d26d12a25a225dc250eddea25b9f1"
+
 do_compile_prepend() {
     cd ${S}
     mkdir -p ${S}/libltdl
diff --git a/meta/recipes-multimedia/speex/speex_1.2rc1.bb b/meta/recipes-multimedia/speex/speex_1.2rc1.bb
index 6f1b133..424f212 100644
--- a/meta/recipes-multimedia/speex/speex_1.2rc1.bb
+++ b/meta/recipes-multimedia/speex/speex_1.2rc1.bb
@@ -10,6 +10,9 @@ PR = "r0"
 
 SRC_URI = "http://downloads.us.xiph.org/releases/speex/speex-1.2rc1.tar.gz"
 
+SRC_URI[md5sum] = "c4438b22c08e5811ff10e2b06ee9b9ae"
+SRC_URI[sha256sum] = "342f30dc57bd4a6dad41398365baaa690429660b10d866b7d508e8f1179cb7a6"
+
 PARALLEL_MAKE = ""
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-qt/qt-apps/fotowall_0.9.bb b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
index e826a5a..30dca4e 100644
--- a/meta/recipes-qt/qt-apps/fotowall_0.9.bb
+++ b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
@@ -12,6 +12,9 @@ RDEPENDS = "qt4-x11-free"
 
 SRC_URI = "http://qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9.tar.bz2"
 
+SRC_URI[md5sum] = "142ef697332e0777c6d22c5bc96cc438"
+SRC_URI[sha256sum] = "e4d0c005d2cb1d7c09438bfc3098eadebc08946e4fbc0655b7fc8b046de3810d"
+
 S = "${WORKDIR}/Fotowall-${PV}"
 
 inherit qmake2 pkgconfig
diff --git a/meta/recipes-qt/qt-apps/quicky_0.4.bb b/meta/recipes-qt/qt-apps/quicky_0.4.bb
index 639d715..004e029 100644
--- a/meta/recipes-qt/qt-apps/quicky_0.4.bb
+++ b/meta/recipes-qt/qt-apps/quicky_0.4.bb
@@ -9,6 +9,9 @@ RDEPENDS = "qt4-x11-free"
 
 SRC_URI = "http://qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz"
 
+SRC_URI[md5sum] = "824d9e477ee9c4994f73a3cb215161d9"
+SRC_URI[sha256sum] = "9c66376e0035d44547612bf629890769a6178c3e7eafbcf95f1c6207ac0f352a"
+
 inherit qmake2 pkgconfig
 
 do_install() {
diff --git a/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb b/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
index e42f650..a6eb0cd 100644
--- a/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
+++ b/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
@@ -4,3 +4,6 @@ require qt-4.6.3.inc
 PR = "r0"
 
 QT_CONFIG_FLAGS += " -xrandr "
+
+SRC_URI[md5sum] = "5c69f16d452b0bb3d44bc3c10556c072"
+SRC_URI[sha256sum] = "f4e0ada8d4d516bbb8600a3ee7d9046c9c79e38cd781df9ffc46d8f16acd1768"
diff --git a/meta/recipes-sato/leafpad/leafpad_0.8.17.bb b/meta/recipes-sato/leafpad/leafpad_0.8.17.bb
index 5407b9e..6291b95 100644
--- a/meta/recipes-sato/leafpad/leafpad_0.8.17.bb
+++ b/meta/recipes-sato/leafpad/leafpad_0.8.17.bb
@@ -11,6 +11,9 @@ DEPENDS = "gtk+ intltool-native"
 DEPENDS_append_poky = " libowl"
 SRC_URI = "http://savannah.nongnu.org/download/${PN}/${PN}-${PV}.tar.gz \
 	   file://leafpad.desktop"
+
+SRC_URI[md5sum] = "d39acdf4d31de309d484511bdc9f5924"
+SRC_URI[sha256sum] = "8df8de7aaea26148225b6120631b4fe6b89d36d2b52962e7c9cc0ce07bfdbd4c"
 PR = "r0"
 
 SRC_URI_append_poky += " file://owl-menu.patch;apply=yes "
diff --git a/meta/recipes-sato/libical/libical_0.46.bb b/meta/recipes-sato/libical/libical_0.46.bb
index 7b2d7b3..e88e449 100644
--- a/meta/recipes-sato/libical/libical_0.46.bb
+++ b/meta/recipes-sato/libical/libical_0.46.bb
@@ -9,4 +9,7 @@ PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/freeassociation/${P}.tar.gz"
 
+SRC_URI[md5sum] = "9c08f88945bfd5d0791d102e4aa4125c"
+SRC_URI[sha256sum] = "000762efb81501421d94ec56343648a62b3bd2884e7cdf6f638e2c207dd8f6a1"
+
 inherit autotools
diff --git a/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.1.bb b/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.1.bb
index 74fb8cf..e00386f 100644
--- a/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.1.bb
+++ b/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_0.1.bb
@@ -3,3 +3,6 @@ require matchbox-theme-sato.inc
 PR = "r0"
 
 SRC_URI = "http://pokylinux.org/releases/sato/matchbox-theme-sato-0.1.tar.gz"
+
+SRC_URI[md5sum] = "72ae272ef7803141a3dcb69e670cff97"
+SRC_URI[sha256sum] = "5b59f9646edbfb907a309332db3bd6fa7080dc1fe24df549480cfae7d974a3fb"
diff --git a/meta/recipes-sato/pcmanfm/pcmanfm_0.9.8.bb b/meta/recipes-sato/pcmanfm/pcmanfm_0.9.8.bb
index 46e46da..6e41b4e 100644
--- a/meta/recipes-sato/pcmanfm/pcmanfm_0.9.8.bb
+++ b/meta/recipes-sato/pcmanfm/pcmanfm_0.9.8.bb
@@ -25,6 +25,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/pcmanfm/pcmanfm-${PV}.tar.gz \
 
 SRC_URI_append_poky = " file://owl-window-menu.patch;patch=1"
 
+SRC_URI[md5sum] = "4a7fdc0526ed14e3293d784c0ce27dea"
+SRC_URI[sha256sum] = "a9335baf127d133da1b2873b3065545bd278fadd4b33e4b91e3d10b165961b68"
+
 inherit autotools pkgconfig
 
 do_install_append () {
diff --git a/meta/recipes-sato/pimlico/tasks_0.18.bb b/meta/recipes-sato/pimlico/tasks_0.18.bb
index f363855..1282e4f 100644
--- a/meta/recipes-sato/pimlico/tasks_0.18.bb
+++ b/meta/recipes-sato/pimlico/tasks_0.18.bb
@@ -7,6 +7,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SRC_URI = "http://pimlico-project.org/sources/${PN}/${PN}-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "d40c0227e496b51be6fde10f387215ed"
+SRC_URI[sha256sum] = "08802003da2517c6e0b2defd66bcaf466edd0ce7188373f564d629af6b93cc91"
+
 OWL_poky = "--with-owl"
 
 PR = "r0"
diff --git a/meta/recipes-sato/puzzles/puzzles_r9023.bb b/meta/recipes-sato/puzzles/puzzles_r9023.bb
index e51bd7a..acf61de 100644
--- a/meta/recipes-sato/puzzles/puzzles_r9023.bb
+++ b/meta/recipes-sato/puzzles/puzzles_r9023.bb
@@ -9,6 +9,9 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=9928b60f3b78be315b7ab699c1b03ff5"
 
 SRC_URI = "http://www.chiark.greenend.org.uk/~sgtatham/puzzles/puzzles-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "ce3b8b49a4970cdecbd3c0deb236802c"
+SRC_URI[sha256sum] = "52ac700d8ecb6bc51c8892f12f0212a6f12504eaae4cf95bb6fe084889ac5932"
 #SRC_URI = "svn://ixion.tartarus.org/main;module=puzzles;rev=${MOD_PV}"
 
 S = "${WORKDIR}/${PN}-${PV}"
diff --git a/meta/recipes-sato/sato-icon-theme/sato-icon-theme_0.4.1.bb b/meta/recipes-sato/sato-icon-theme/sato-icon-theme_0.4.1.bb
index aa976b1..4fbf70d 100644
--- a/meta/recipes-sato/sato-icon-theme/sato-icon-theme_0.4.1.bb
+++ b/meta/recipes-sato/sato-icon-theme/sato-icon-theme_0.4.1.bb
@@ -4,3 +4,6 @@ DEPENDS += "icon-naming-utils-native"
 
 SRC_URI = "http://pokylinux.org/releases/sato/${PN}-${PV}.tar.gz \
            file://iconpath-option.patch"
+
+SRC_URI[md5sum] = "86a847f3128a43a9cf23b7029a656f50"
+SRC_URI[sha256sum] = "0b0a2807a6a96918ac799a86094ec3e8e2c892be0fd679a4232c2a77f2f61732"
diff --git a/meta/recipes-support/apr/apr-util_1.3.4.bb b/meta/recipes-support/apr/apr-util_1.3.4.bb
index 333b496..b2d6cc4 100644
--- a/meta/recipes-support/apr/apr-util_1.3.4.bb
+++ b/meta/recipes-support/apr/apr-util_1.3.4.bb
@@ -9,6 +9,9 @@ SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.gz \
            file://configfix.patch;patch=1 \
            file://configure_fixes.patch;patch=1"
 
+SRC_URI[md5sum] = "a10e2ca150ff07f484c724c36142211f"
+SRC_URI[sha256sum] = "3f07ffdb18fb853290c9b83e82cd5cae66b8fbc357bd391e846c0afdd24fed7e"
+
 EXTRA_OECONF = "--with-apr=${STAGING_BINDIR_CROSS}/apr-1-config \ 
 		--with-dbm=gdbm \
 		--with-gdbm=${STAGING_DIR_HOST}${prefix} \
diff --git a/meta/recipes-support/apr/apr_1.3.3.bb b/meta/recipes-support/apr/apr_1.3.3.bb
index e7e8ad2..26cc01f 100644
--- a/meta/recipes-support/apr/apr_1.3.3.bb
+++ b/meta/recipes-support/apr/apr_1.3.3.bb
@@ -9,6 +9,9 @@ SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.bz2 \
 	   file://cleanup.patch;patch=1 \
            file://configfix.patch;patch=1"
 
+SRC_URI[md5sum] = "2090c21dee4f0eb1512604127dcd158f"
+SRC_URI[sha256sum] = "d95f3b78366c86317043304864bb08cb836312c87ea7d142a4c02154e7e0dd37"
+
 inherit autotools lib_package binconfig
 
 OE_BINCONFIG_EXTRA_MANGLE = " -e 's:location=source:location=installed:'"
diff --git a/meta/recipes-support/aspell/aspell_0.60.6.bb b/meta/recipes-support/aspell/aspell_0.60.6.bb
index 3b8b08a..696d5b4 100644
--- a/meta/recipes-support/aspell/aspell_0.60.6.bb
+++ b/meta/recipes-support/aspell/aspell_0.60.6.bb
@@ -1,4 +1,7 @@
 SRC_URI = "ftp://ftp.gnu.org/gnu/aspell/aspell-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "bc80f0198773d5c05086522be67334eb"
+SRC_URI[sha256sum] = "4f5b1520e26cf6bbb1b5ca8a2f9f22948c3ca38ac4c2dd9e02df042fee7c0e36"
 DESCRIPTION = "GNU Aspell spell-checker"
 SECTION = "console/utils"
 LICENSE="LGPLv2 | LGPLv2.1"
diff --git a/meta/recipes-support/atk/atk_1.32.0.bb b/meta/recipes-support/atk/atk_1.32.0.bb
index 35f8e08..f571fa1 100644
--- a/meta/recipes-support/atk/atk_1.32.0.bb
+++ b/meta/recipes-support/atk/atk_1.32.0.bb
@@ -6,5 +6,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
 
 SRC_URI = "http://download.gnome.org/sources/atk/1.32/${PN}-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "b9a19a3e426cd9ca930f0108c4ee343f"
+SRC_URI[sha256sum] = "e9a3e598f75c4db1af914f8b052dd9f7e89e920a96cc187c18eb06b8339cb16e"
+
 
 
diff --git a/meta/recipes-support/attr/acl_2.2.49.bb b/meta/recipes-support/attr/acl_2.2.49.bb
index e5d5509..2e0e0d3 100644
--- a/meta/recipes-support/attr/acl_2.2.49.bb
+++ b/meta/recipes-support/attr/acl_2.2.49.bb
@@ -1,3 +1,6 @@
 require acl.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "181445894cca986da9ae0099d5ce2d08"
+SRC_URI[sha256sum] = "b9c7f4752e4ef4930a62fa5aa0d7efe1cba2b5a3a2d6ee2b45c0a70c72b7e5d5"
diff --git a/meta/recipes-support/attr/attr_2.4.44.bb b/meta/recipes-support/attr/attr_2.4.44.bb
index 0b21b33..e22e158 100644
--- a/meta/recipes-support/attr/attr_2.4.44.bb
+++ b/meta/recipes-support/attr/attr_2.4.44.bb
@@ -7,3 +7,6 @@ SRC_URI += "file://memory-leak-in-copy.patch \
             file://double-free.patch \
             file://pull-in-string.h.patch \
             file://thinko-in-restore.patch"
+
+SRC_URI[md5sum] = "d132c119831c27350e10b9f885711adc"
+SRC_URI[sha256sum] = "9f6214b8e53f4bba651ac5a72c0f6193b12aa21fbf1d675d89a7b4bc45264498"
diff --git a/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb b/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
index 0da36d9..e381a6b 100644
--- a/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
+++ b/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
@@ -8,6 +8,9 @@ SRC_URI="${SOURCEFORGE_MIRROR}/beecrypt/beecrypt-${PV}.tar.gz \
 	 file://x64fix.patch \
 	 file://disable-icu-check.patch \
 	 file://fix-security.patch"
+
+SRC_URI[md5sum] = "820d26437843ab0a6a8a5151a73a657c"
+SRC_URI[sha256sum] = "f29eb246947677a9e7870521e3d576fd0d91a7072210a4404ed137e40cfc18fd"
 LICENSE = "GPLv2&LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=9894370afd5dfe7d02b8d14319e729a1 \
 	            file://COPYING.LIB;md5=dcf3c825659e82539645da41a7908589"
diff --git a/meta/recipes-support/boost/boost_1.44.0.bb b/meta/recipes-support/boost/boost_1.44.0.bb
index 81a2e53..aa8b324 100644
--- a/meta/recipes-support/boost/boost_1.44.0.bb
+++ b/meta/recipes-support/boost/boost_1.44.0.bb
@@ -9,6 +9,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/boost/${BOOST_P}.tar.bz2 \
            file://arm-intrinsics.patch \
           "
 
+SRC_URI[md5sum] = "f02578f5218f217a9f20e9c30e119c6a"
+SRC_URI[sha256sum] = "45c328029d97d1f1dc7ff8c9527cd0c5cc356636084a800bca2ee4bfab1978db"
+
 BJAM_OPTS    = '${BJAM_TOOLS} \
                 --builddir=${S}/${TARGET_SYS} \
                 ${BJAM_EXTRA}'
diff --git a/meta/recipes-support/consolekit/consolekit_0.4.3.bb b/meta/recipes-support/consolekit/consolekit_0.4.3.bb
index f1da72b..5bf4c52 100644
--- a/meta/recipes-support/consolekit/consolekit_0.4.3.bb
+++ b/meta/recipes-support/consolekit/consolekit_0.4.3.bb
@@ -12,6 +12,9 @@ inherit gnome
 
 SRC_URI = "http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-0.4.3.tar.bz2 \
            file://nopolkit.patch;patch=1"
+
+SRC_URI[md5sum] = "4c39c6eacc75334b890f21eead1d2945"
+SRC_URI[sha256sum] = "fe02aca2b4c21df59aa5fbe6f28ea3ea4b3c9dd64c48c50634e9a53cf9c0dcc5"
 S = "${WORKDIR}/ConsoleKit-${PV}"
 
 FILES_${PN} += "${libdir}/ConsoleKit ${datadir}/dbus-1 ${datadir}/PolicyKit"
diff --git a/meta/recipes-support/curl/curl_7.21.2.bb b/meta/recipes-support/curl/curl_7.21.2.bb
index 3208baf..cc8bbf1 100644
--- a/meta/recipes-support/curl/curl_7.21.2.bb
+++ b/meta/recipes-support/curl/curl_7.21.2.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
            file://noldlibpath.patch \
            file://pkgconfig_fix.patch"
 
+SRC_URI[md5sum] = "ca96df88e044c7c25d19692ec8b250b2"
+SRC_URI[sha256sum] = "f4a632e704f28767e6bbffcc6112db0590b1c9d50d8226d706ad39632355bf21"
+
 inherit autotools pkgconfig binconfig
 
 EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
diff --git a/meta/recipes-support/db/db_4.2.52.bb b/meta/recipes-support/db/db_4.2.52.bb
index df42af5..bd0511d 100644
--- a/meta/recipes-support/db/db_4.2.52.bb
+++ b/meta/recipes-support/db/db_4.2.52.bb
@@ -21,6 +21,9 @@ PR = "r8"
 
 SRC_URI = "http://download.oracle.com/berkeley-db/db-${PV}.tar.gz \
            file://configure_fixes.patch;patch=1 "
+
+SRC_URI[md5sum] = "8b5cff6eb83972afdd8e0b821703c33c"
+SRC_URI[sha256sum] = "f4bddd8d1b4cde0daf5e13e3493ed62a25b736b0bf258e1d929e47bc6a82a28c"
 #SRC_URI_MD5 = "http://downloads.sleepycat.com/db-${PV}.tar.gz.md5"
 #TODO SRC_URI += "file://arm-thumb-mutex.patch;patch=1"
 
diff --git a/meta/recipes-support/enchant/enchant_1.6.0.bb b/meta/recipes-support/enchant/enchant_1.6.0.bb
index 92b4686..7df4f97 100644
--- a/meta/recipes-support/enchant/enchant_1.6.0.bb
+++ b/meta/recipes-support/enchant/enchant_1.6.0.bb
@@ -14,6 +14,9 @@ PR = "r0"
 
 SRC_URI = "http://www.abisource.com/downloads/enchant/${PV}/enchant-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "de11011aff801dc61042828041fb59c7"
+SRC_URI[sha256sum] = "2fac9e7be7e9424b2c5570d8affe568db39f7572c10ed48d4e13cddf03f7097f"
+
 EXTRA_OECONF = "--with-aspell-prefix=${STAGING_DIR_HOST}${prefix} --enable-aspell --disable-binreloc"
 
 FILES_${PN} = "${bindir} ${libdir}/*${SOLIBS} ${datadir}/${PN} ${libdir}/${PN}/*.so"
diff --git a/meta/recipes-support/gdbm/gdbm_1.8.3.bb b/meta/recipes-support/gdbm/gdbm_1.8.3.bb
index 2a85535..587b6a6 100644
--- a/meta/recipes-support/gdbm/gdbm_1.8.3.bb
+++ b/meta/recipes-support/gdbm/gdbm_1.8.3.bb
@@ -11,6 +11,9 @@ SRC_URI = "${GNU_MIRROR}/gdbm/gdbm-${PV}.tar.gz \
 	   file://makefile.patch;patch=1 \
            file://libtool-mode.patch;patch=1"
 
+SRC_URI[md5sum] = "1d1b1d5c0245b1c00aff92da751e9aa1"
+SRC_URI[sha256sum] = "cc340338a2e28b40058ab9eb5354a21d53f88a1582ea21ba0bb185c37a281dc9"
+
 inherit autotools
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/meta/recipes-support/gmp/gmp_5.0.1.bb b/meta/recipes-support/gmp/gmp_5.0.1.bb
index 79aeae5..2d8ac78 100644
--- a/meta/recipes-support/gmp/gmp_5.0.1.bb
+++ b/meta/recipes-support/gmp/gmp_5.0.1.bb
@@ -7,3 +7,6 @@ PR = "r0"
 SRC_URI_append += "file://sh4-asmfix.patch \
                    file://use-includedir.patch "
 
+
+SRC_URI[md5sum] = "6bac6df75c192a13419dfd71d19240a7"
+SRC_URI[sha256sum] = "a2a610f01fd3298dc08c87bf30498c2402590e1bcb227fc40b15ee6d280939fb"
diff --git a/meta/recipes-support/gnutls/gnutls_2.8.6.bb b/meta/recipes-support/gnutls/gnutls_2.8.6.bb
index d8adc6b..59fc226 100644
--- a/meta/recipes-support/gnutls/gnutls_2.8.6.bb
+++ b/meta/recipes-support/gnutls/gnutls_2.8.6.bb
@@ -5,3 +5,6 @@ PR = "r0"
 SRC_URI += "file://gnutls-openssl.patch \
             file://gnutls-texinfo-euro.patch \
             file://configure-fix.patch"
+
+SRC_URI[md5sum] = "eb0a6d7d3cb9ac684d971c14f9f6d3ba"
+SRC_URI[sha256sum] = "d6f846a7064af3ee2c9aebd65dcee76953b767170cbcd719e990ed6b9688a356"
diff --git a/meta/recipes-support/gnutls/libtasn1_2.8.bb b/meta/recipes-support/gnutls/libtasn1_2.8.bb
index a47311e..a10d2ac 100644
--- a/meta/recipes-support/gnutls/libtasn1_2.8.bb
+++ b/meta/recipes-support/gnutls/libtasn1_2.8.bb
@@ -14,6 +14,9 @@ PR = "r0"
 
 SRC_URI = "ftp://ftp.gnutls.org/pub/gnutls/libtasn1/libtasn1-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "53fd164f8670e55a9964666990fb358f"
+SRC_URI[sha256sum] = "2b7d74f4b10b18ae2f0291fcafabe30e42c9ededdea41add8c622302132d545a"
+
 inherit autotools binconfig lib_package
 
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-support/gpgme/gpgme_1.3.0.bb b/meta/recipes-support/gpgme/gpgme_1.3.0.bb
index 1c665b5..4c45a44 100644
--- a/meta/recipes-support/gpgme/gpgme_1.3.0.bb
+++ b/meta/recipes-support/gpgme/gpgme_1.3.0.bb
@@ -10,6 +10,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SRC_URI = "ftp://ftp.gnupg.org/gcrypt/gpgme/gpgme-${PV}.tar.bz2 \
            file://disable_gpgconf_check.patch;patch=1;pnum=1"
+
+SRC_URI[md5sum] = "4784e3c6086c9c25e9a1b4d9f7c5aa96"
+SRC_URI[sha256sum] = "74e040fcd46061f6b0d8b621a2a2a48100a7ba5c9f69e7cf207259a6e2e3e6a1"
 DEPENDS = "libgpg-error libassuan pth"
 PR = "r0"
 
diff --git a/meta/recipes-support/hal/hal-info_20091130.bb b/meta/recipes-support/hal/hal-info_20091130.bb
index e6d50e3..4469904 100644
--- a/meta/recipes-support/hal/hal-info_20091130.bb
+++ b/meta/recipes-support/hal/hal-info_20091130.bb
@@ -1 +1,4 @@
 require hal-info.inc
+
+SRC_URI[md5sum] = "34375489a02a00b250fdc0b280be11b8"
+SRC_URI[sha256sum] = "3b5a90eaea4359977d36c808a19b3f08835345a258c68b9c6c080ad5ef875224"
diff --git a/meta/recipes-support/hal/hal_0.5.14.bb b/meta/recipes-support/hal/hal_0.5.14.bb
index a12be72..f9437f8 100644
--- a/meta/recipes-support/hal/hal_0.5.14.bb
+++ b/meta/recipes-support/hal/hal_0.5.14.bb
@@ -12,3 +12,6 @@ FILES_libhal-storage = "${libdir}/libhal-storage.so.*"
 
 FILES_${PN} =+ "${bindir}/hal-disable-polling \
                 ${bindir}/hal-setup-keymap"
+
+SRC_URI[md5sum] = "e9163df591a6f38f59fdbfe33e73bf20"
+SRC_URI[sha256sum] = "323aacfa52f12def3b0d1e76456e34f027c345adc344aad19a8cc0c59c1a8d02"
diff --git a/meta/recipes-support/icu/icu_3.6.bb b/meta/recipes-support/icu/icu_3.6.bb
index 5042116..4863cbf 100644
--- a/meta/recipes-support/icu/icu_3.6.bb
+++ b/meta/recipes-support/icu/icu_3.6.bb
@@ -1,3 +1,6 @@
 require icu-3.6.inc
 
 PR = "r6"
+
+SRC_URI[md5sum] = "6243f7a19e03e05403ce84e597510d4c"
+SRC_URI[sha256sum] = "5135e8d69d6206d320515df7aeee7027711ab1aef9d8dbf29571a97a9746b041"
diff --git a/meta/recipes-support/js/js_1.7.0+1.8.0rc1.bb b/meta/recipes-support/js/js_1.7.0+1.8.0rc1.bb
index 3632eb9..e56ba26 100644
--- a/meta/recipes-support/js/js_1.7.0+1.8.0rc1.bb
+++ b/meta/recipes-support/js/js_1.7.0+1.8.0rc1.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://ftp.mozilla.org/pub/mozilla.org/js/js-1.8.0-rc1.tar.gz \
            file://jsautocfg.h \
            file://configure.ac"
 
+SRC_URI[md5sum] = "eaad8815dcc66a717ddb87e9724d964e"
+SRC_URI[sha256sum] = "374398699ac3fd802d98d642486cf6b0edc082a119c9c9c499945a0bc73e3413"
+
 S = "${WORKDIR}/js/src"
 
 # use local autoconf script to generate a usable jsautocfg.h
diff --git a/meta/recipes-support/libassuan/libassuan_2.0.1.bb b/meta/recipes-support/libassuan/libassuan_2.0.1.bb
index ef918f4..5425673 100644
--- a/meta/recipes-support/libassuan/libassuan_2.0.1.bb
+++ b/meta/recipes-support/libassuan/libassuan_2.0.1.bb
@@ -12,4 +12,7 @@ DEPENDS = "libgpg-error"
 
 SRC_URI = "ftp://ftp.gnupg.org/gcrypt/libassuan/libassuan-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "53a7d4c22af909d7236d17d454ef935b"
+SRC_URI[sha256sum] = "1117be532ac41b13790b4756df7fa747d3d04264f7b4544aa9d7ff468a24b457"
+
 inherit autotools binconfig
diff --git a/meta/recipes-support/libcap/libcap_2.19.bb b/meta/recipes-support/libcap/libcap_2.19.bb
index eb86153..9abd3b5 100644
--- a/meta/recipes-support/libcap/libcap_2.19.bb
+++ b/meta/recipes-support/libcap/libcap_2.19.bb
@@ -1,3 +1,6 @@
 require libcap.inc
 
 PR = "r1"
+
+SRC_URI[md5sum] = "eb1ff04d39bfa2342b8e78b0fd60dc2d"
+SRC_URI[sha256sum] = "ed1693e344054a398e68a7cc840892e3d1a880562743bdf28fd918649aa5a4ce"
diff --git a/meta/recipes-support/libcheck/libcheck_0.9.8.bb b/meta/recipes-support/libcheck/libcheck_0.9.8.bb
index 048b8ce..d7e0829 100644
--- a/meta/recipes-support/libcheck/libcheck_0.9.8.bb
+++ b/meta/recipes-support/libcheck/libcheck_0.9.8.bb
@@ -9,6 +9,9 @@ LIC_FILES_CHKSUM = "file://COPYING.LESSER;md5=2d5025d4aa3495befef8f17206a5b0a1"
 PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/check/check-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "5d75e9a6027cde79d2c339ef261e7470"
+SRC_URI[sha256sum] = "82acf956bb07584ffea2bf04d5989fe939c3e74ecf93133a21037fd0f7996a7f"
 S = "${WORKDIR}/check-${PV}"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-support/libcroco/libcroco_0.6.2.bb b/meta/recipes-support/libcroco/libcroco_0.6.2.bb
index 2ea33b1..bac0c8d 100644
--- a/meta/recipes-support/libcroco/libcroco_0.6.2.bb
+++ b/meta/recipes-support/libcroco/libcroco_0.6.2.bb
@@ -14,3 +14,6 @@ PR = "r0"
 inherit autotools pkgconfig gnome
 
 SRC_URI_append = " file://croco.patch;apply=yes "
+
+SRC_URI[archive.md5sum] = "1429c597aa4b75fc610ab3a542c99209"
+SRC_URI[archive.sha256sum] = "be24853f64c09b63d39e563fb0222e29bae1a33c3d9f6cbffc0bc27669371749"
diff --git a/meta/recipes-support/libdaemon/libdaemon_0.14.bb b/meta/recipes-support/libdaemon/libdaemon_0.14.bb
index b4092fd..2aafad5 100644
--- a/meta/recipes-support/libdaemon/libdaemon_0.14.bb
+++ b/meta/recipes-support/libdaemon/libdaemon_0.14.bb
@@ -9,6 +9,9 @@ PR = "r0"
 
 SRC_URI = "http://0pointer.de/lennart/projects/libdaemon/libdaemon-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "509dc27107c21bcd9fbf2f95f5669563"
+SRC_URI[sha256sum] = "fd23eb5f6f986dcc7e708307355ba3289abe03cc381fc47a80bca4a50aa6b834"
+
 inherit autotools pkgconfig
 
 EXTRA_OECONF = "--disable-lynx"
diff --git a/meta/recipes-support/libevent/libevent_1.4.14b.bb b/meta/recipes-support/libevent/libevent_1.4.14b.bb
index 4209305..1a369b5 100644
--- a/meta/recipes-support/libevent/libevent_1.4.14b.bb
+++ b/meta/recipes-support/libevent/libevent_1.4.14b.bb
@@ -8,6 +8,9 @@ LIC_FILES_CHKSUM = "file://event.c;endline=26;md5=bc20aa63bf60c36c2d8edb77746f6b
 PR = "r0"
 
 SRC_URI = "http://www.monkey.org/~provos/${BPN}-${PV}-stable.tar.gz"
+
+SRC_URI[md5sum] = "a00e037e4d3f9e4fe9893e8a2d27918c"
+SRC_URI[sha256sum] = "afa61b476a222ba43fc7cca2d24849ab0bbd940124400cb699915d3c60e46301"
 S = "${WORKDIR}/${BPN}-${PV}-stable"
 
 inherit autotools
diff --git a/meta/recipes-support/libexif/libexif_0.6.16.bb b/meta/recipes-support/libexif/libexif_0.6.16.bb
index 4af9c0c..e0d4681 100644
--- a/meta/recipes-support/libexif/libexif_0.6.16.bb
+++ b/meta/recipes-support/libexif/libexif_0.6.16.bb
@@ -6,6 +6,9 @@ DEPENDS = "gettext"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/libexif/libexif-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "deee153b1ded5a944ea05d041d959eca"
+SRC_URI[sha256sum] = "db6885d5e40e3a273ff8bb9708ab739c8ace3c5abdd75509eec8ea31a31aac43"
+
 inherit autotools
 
 do_configure_append() {
diff --git a/meta/recipes-support/libfm/libfm_0.1.14.bb b/meta/recipes-support/libfm/libfm_0.1.14.bb
index 31f78a0..e8e672c 100644
--- a/meta/recipes-support/libfm/libfm_0.1.14.bb
+++ b/meta/recipes-support/libfm/libfm_0.1.14.bb
@@ -15,4 +15,7 @@ PR = "r1"
 SRC_URI = "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz \
            file://add_missing.patch"
 
+SRC_URI[md5sum] = "d55e51dced6bb9ef46665243b079761f"
+SRC_URI[sha256sum] = "e97bf3f9ed4f33b9f0be73e67d360b89337cccf816361faacd8422722269806b"
+
 inherit autotools pkgconfig
diff --git a/meta/recipes-support/libgcrypt/libgcrypt_1.4.6.bb b/meta/recipes-support/libgcrypt/libgcrypt_1.4.6.bb
index a592437..22eefd4 100644
--- a/meta/recipes-support/libgcrypt/libgcrypt_1.4.6.bb
+++ b/meta/recipes-support/libgcrypt/libgcrypt_1.4.6.bb
@@ -1,3 +1,6 @@
 require libgcrypt.inc
 
 PR = "r0"
+
+SRC_URI[md5sum] = "bfd45922eefb8a24d598af77366220d4"
+SRC_URI[sha256sum] = "996d2874643318c9df835777034a8b7a923d3cd0bee593bab1780305f9de872d"
diff --git a/meta/recipes-support/libgpg-error/libgpg-error_1.9.bb b/meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
index 84e84e3..479a11f 100644
--- a/meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
+++ b/meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
@@ -16,6 +16,9 @@ PR = "r0"
 SRC_URI = "ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-${PV}.tar.bz2 \
            file://pkgconfig.patch;"
 
+SRC_URI[md5sum] = "521b98aa9395e7eaf0ef2236233a0796"
+SRC_URI[sha256sum] = "54d9326bfbd46c705963c507953f65a40576d04b374e131008dc5b732ff1e3c3"
+
 # move libgpg-error-config into -dev package
 FILES_${PN} = "${libdir}/lib*.so.*"
 FILES_${PN}-dev += "${bindir}/*"
diff --git a/meta/recipes-support/libmpc/libmpc_0.8.2.bb b/meta/recipes-support/libmpc/libmpc_0.8.2.bb
index 3c9ef1b..f991a8e 100644
--- a/meta/recipes-support/libmpc/libmpc_0.8.2.bb
+++ b/meta/recipes-support/libmpc/libmpc_0.8.2.bb
@@ -6,10 +6,10 @@ PR = "r0"
 LICENSE="LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=7fbc338309ac38fefcd64b04bb903e34"
 SRC_URI = "http://www.multiprecision.org/mpc/download/mpc-${PV}.tar.gz"
-S = "${WORKDIR}/mpc-${PV}"
 
-SRC_URI[md5sum] = "5b34aa804d514cc295414a963aedb6bf"
-SRC_URI[sha256sum] = "e664603757251fd8a352848276497a4c79b7f8b21fd8aedd5cc0598a38fee3e4"
+SRC_URI[md5sum] = "e98267ebd5648a39f881d66797122fb6"
+SRC_URI[sha256sum] = "ae79f8d41d8a86456b68607e9ca398d00f8b7342d1d83bcf4428178ac45380c7"
 
+S = "${WORKDIR}/mpc-${PV}"
 BBCLASSEXTEND = "native nativesdk"
 
diff --git a/meta/recipes-support/libnl/libnl_2.0.bb b/meta/recipes-support/libnl/libnl_2.0.bb
index eb89f0d..e5d559f 100644
--- a/meta/recipes-support/libnl/libnl_2.0.bb
+++ b/meta/recipes-support/libnl/libnl_2.0.bb
@@ -13,6 +13,9 @@ SRC_URI= "http://www.infradead.org/~tgr/libnl/files/${PN}-${PV}.tar.gz \
           file://fix-makefile.patch \
          "
 
+SRC_URI[md5sum] = "6aaf1e9802a17a7d702bb0638044ffa7"
+SRC_URI[sha256sum] = "5a40dc903d3ca1074da7424b908bec8ff16936484798c7e46e53e9db8bc87a9c"
+
 inherit autotools pkgconfig
 
 LEAD_SONAME = "libnl.so"
diff --git a/meta/recipes-support/liboil/liboil_0.3.17.bb b/meta/recipes-support/liboil/liboil_0.3.17.bb
index 8ba3030..fe8a22f 100644
--- a/meta/recipes-support/liboil/liboil_0.3.17.bb
+++ b/meta/recipes-support/liboil/liboil_0.3.17.bb
@@ -15,6 +15,9 @@ PR = "r2"
 SRC_URI = "http://liboil.freedesktop.org/download/${P}.tar.gz \
            file://no-tests.patch;patch=1"
 
+SRC_URI[md5sum] = "47dc734f82faeb2964d97771cfd2e701"
+SRC_URI[sha256sum] = "105f02079b0b50034c759db34b473ecb5704ffa20a5486b60a8b7698128bfc69"
+
 inherit autotools pkgconfig
 
 ARM_INSTRUCTION_SET = "arm"
diff --git a/meta/recipes-support/libpcre/libpcre_8.10.bb b/meta/recipes-support/libpcre/libpcre_8.10.bb
index 4053e45..db89c89 100644
--- a/meta/recipes-support/libpcre/libpcre_8.10.bb
+++ b/meta/recipes-support/libpcre/libpcre_8.10.bb
@@ -10,6 +10,9 @@ LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=77f9b14fe707d0376d89bc162e6c54ff"
 SRC_URI = "${SOURCEFORGE_MIRROR}/pcre/pcre-${PV}.tar.bz2 \
            file://pcre-cross.patch;patch=1"
+
+SRC_URI[md5sum] = "780867a700e9d4e4b9cb47aa5453e4b2"
+SRC_URI[sha256sum] = "7ac4e016f6bad8c7d990e6de9bce58c04ff5dd8838be0c5ada0afad1d6a07480"
 S = "${WORKDIR}/pcre-${PV}"
 
 PROVIDES = "pcre"
diff --git a/meta/recipes-support/libproxy/libproxy_0.4.6.bb b/meta/recipes-support/libproxy/libproxy_0.4.6.bb
index b317eb2..255cd5b 100644
--- a/meta/recipes-support/libproxy/libproxy_0.4.6.bb
+++ b/meta/recipes-support/libproxy/libproxy_0.4.6.bb
@@ -11,6 +11,9 @@ DEPENDS = "virtual/libx11 xmu gconf-dbus"
 
 SRC_URI = "http://libproxy.googlecode.com/files/libproxy-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "199c6b120baf1f7258a55f38d5ec74f5"
+SRC_URI[sha256sum] = "9ad912e63b1efca98fb442240a2bc7302e6021c1d0b1b9363327729f29462f30"
+
 PR = "r0"
 
 inherit cmake pkgconfig
diff --git a/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb b/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
index 92493c8..adc95f3 100644
--- a/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
+++ b/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
@@ -11,6 +11,9 @@ PR = "r0"
 DEPENDS = "glib-2.0 gnutls libxml2 libproxy sqlite3 libgnome-keyring"
 
 SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.32/libsoup-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "894ca0077ec2d923286a69766d0b0b74"
+SRC_URI[sha256sum] = "8779da1b4d85f443f04ea8301f52c4a1943c10e4dc8d20dbcdb3652921de6b8e"
 S = "${WORKDIR}/libsoup-${PV}"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-support/libsoup/libsoup_2.2.100.bb b/meta/recipes-support/libsoup/libsoup_2.2.100.bb
index 94efb7f..a96a762 100644
--- a/meta/recipes-support/libsoup/libsoup_2.2.100.bb
+++ b/meta/recipes-support/libsoup/libsoup_2.2.100.bb
@@ -7,6 +7,9 @@ DEPENDS = "glib-2.0 gnutls libxml2"
 
 SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/${PN}/2.2/${PN}-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "936e29d705aab0483b9a5b8860f68c13"
+SRC_URI[sha256sum] = "fa9f33e96a11133adbfd10538d95ed9704e582ef334c0a119a2a0bfca302877d"
+
 inherit autotools pkgconfig
 
 FILES_${PN} = "${libdir}/lib*.so.*"
diff --git a/meta/recipes-support/liburcu/liburcu_0.4.8.bb b/meta/recipes-support/liburcu/liburcu_0.4.8.bb
index 503b561..655685a 100644
--- a/meta/recipes-support/liburcu/liburcu_0.4.8.bb
+++ b/meta/recipes-support/liburcu/liburcu_0.4.8.bb
@@ -11,6 +11,9 @@ PR = "r0"
 
 SRC_URI = "http://lttng.org/files/urcu/userspace-rcu-${PV}.tar.bz2"
 
+SRC_URI[md5sum] = "408b67506808a1bff2313d83607dbcfe"
+SRC_URI[sha256sum] = "43783a298b5adcfe273878194b28b9dcb95cbe8948a918caaf492c7bcb8c2ff6"
+
 S = "${WORKDIR}/userspace-rcu-${PV}"
 
 inherit autotools
diff --git a/meta/recipes-support/libusb/libusb-compat_0.1.3.bb b/meta/recipes-support/libusb/libusb-compat_0.1.3.bb
index e8d6338..ef8552b 100644
--- a/meta/recipes-support/libusb/libusb-compat_0.1.3.bb
+++ b/meta/recipes-support/libusb/libusb-compat_0.1.3.bb
@@ -20,4 +20,7 @@ PR = "r0"
 SRC_URI = "${SOURCEFORGE_MIRROR}/libusb/libusb-compat-${PV}.tar.bz2 \
            file://0.1.0-beta1-gcc3.4-fix.patch"
 
+SRC_URI[md5sum] = "570ac2ea085b80d1f74ddc7c6a93c0eb"
+SRC_URI[sha256sum] = "a590a03b6188030ee1ca1a0af55685fcde005ca807b963970f839be776031d94"
+
 inherit autotools pkgconfig binconfig
diff --git a/meta/recipes-support/libusb/libusb1_1.0.8.bb b/meta/recipes-support/libusb/libusb1_1.0.8.bb
index 26a535a..302a8be 100644
--- a/meta/recipes-support/libusb/libusb1_1.0.8.bb
+++ b/meta/recipes-support/libusb/libusb1_1.0.8.bb
@@ -9,6 +9,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
 PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/libusb/libusb-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "37d34e6eaa69a4b645a19ff4ca63ceef"
+SRC_URI[sha256sum] = "21d0d3a5710f7f4211c595102c6b9eccb42435a17a4f5bd2c3f4166ab1badba9"
 S = "${WORKDIR}/libusb-${PV}"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-support/libxslt/libxslt_1.1.26.bb b/meta/recipes-support/libxslt/libxslt_1.1.26.bb
index b572697..71fb478 100644
--- a/meta/recipes-support/libxslt/libxslt_1.1.26.bb
+++ b/meta/recipes-support/libxslt/libxslt_1.1.26.bb
@@ -12,6 +12,9 @@ PR = "r0"
 
 SRC_URI = "ftp://xmlsoft.org/libxslt//libxslt-${PV}.tar.gz \
            file://pkgconfig_fix.patch;patch=1"
+
+SRC_URI[md5sum] = "e61d0364a30146aaa3001296f853b2b9"
+SRC_URI[sha256sum] = "55dd52b42861f8a02989d701ef716d6280bfa02971e967c285016f99c66e3db1"
 S = "${WORKDIR}/libxslt-${PV}"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-support/lzo/lzo_2.03.bb b/meta/recipes-support/lzo/lzo_2.03.bb
index 9657d97..05b10ee 100644
--- a/meta/recipes-support/lzo/lzo_2.03.bb
+++ b/meta/recipes-support/lzo/lzo_2.03.bb
@@ -11,6 +11,9 @@ SRC_URI = "http://www.oberhumer.com/opensource/lzo/download/lzo-${PV}.tar.gz \
            file://autofoo.patch \
            file://acinclude.m4"
 
+SRC_URI[md5sum] = "0c3d078c2e8ea5a88971089a2f02a726"
+SRC_URI[sha256sum] = "8b1b0da8f757b9ac318e1c15a0eac8bdb56ca902a2dd25beda06c0f265f22591"
+
 inherit autotools
 
 EXTRA_OECONF = "--enable-shared"
diff --git a/meta/recipes-support/mpfr/mpfr_3.0.0.bb b/meta/recipes-support/mpfr/mpfr_3.0.0.bb
index 3e1b8c4..846cdc0 100644
--- a/meta/recipes-support/mpfr/mpfr_3.0.0.bb
+++ b/meta/recipes-support/mpfr/mpfr_3.0.0.bb
@@ -6,6 +6,9 @@ DEPENDS = "gmp"
 PR = "r0"
 
 SRC_URI = "http://www.mpfr.org/mpfr-${PV}/mpfr-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "f45bac3584922c8004a10060ab1a8f9f"
+SRC_URI[sha256sum] = "8f4e5f9c53536cb798a30455ac429b1f9fc75a0f8af32d6e0ac31ebf1024821f"
 S = "${WORKDIR}/mpfr-${PV}"
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/meta/recipes-support/neon/neon_0.29.5.bb b/meta/recipes-support/neon/neon_0.29.5.bb
index bb18893..f94cdde 100644
--- a/meta/recipes-support/neon/neon_0.29.5.bb
+++ b/meta/recipes-support/neon/neon_0.29.5.bb
@@ -11,6 +11,9 @@ PR = "r0"
 SRC_URI = "http://www.webdav.org/${PN}/${P}.tar.gz \
            file://pkgconfig.patch;patch=1"
 
+SRC_URI[md5sum] = "ff369e69ef0f0143beb5626164e87ae2"
+SRC_URI[sha256sum] = "dea3c52b9f3f915651c6279c76758acf7c427727e8b9b0130f8b138f24012290"
+
 inherit autotools binconfig lib_package pkgconfig
 
 EXTRA_OECONF = "--with-ssl=gnutls --with-libxml2 --with-expat --enable-shared"
diff --git a/meta/recipes-support/popt/popt_1.16.bb b/meta/recipes-support/popt/popt_1.16.bb
index 347c0fc..4d9e518 100644
--- a/meta/recipes-support/popt/popt_1.16.bb
+++ b/meta/recipes-support/popt/popt_1.16.bb
@@ -9,6 +9,9 @@ PR = "r0"
 
 SRC_URI = "http://rpm5.org/files/popt/popt-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "3743beefa3dd6247a73f8f7a32c14c33"
+SRC_URI[sha256sum] = "e728ed296fe9f069a0e005003c3d6b2dde3d9cad453422a10d6558616d304cc8"
+
 inherit autotools
 
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-support/pth/pth_2.0.7.bb b/meta/recipes-support/pth/pth_2.0.7.bb
index 8ee3cd4..e1090d8 100644
--- a/meta/recipes-support/pth/pth_2.0.7.bb
+++ b/meta/recipes-support/pth/pth_2.0.7.bb
@@ -8,6 +8,9 @@ PR = "r1"
 
 SRC_URI = "${GNU_MIRROR}/pth/pth-${PV}.tar.gz"
 
+SRC_URI[md5sum] = "9cb4a25331a4c4db866a31cbe507c793"
+SRC_URI[sha256sum] = "72353660c5a2caafd601b20e12e75d865fd88f6cf1a088b306a3963f0bc77232"
+
 PARALLEL_MAKE=""
 
 inherit autotools binconfig
diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb b/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
index 279086a..f809923 100644
--- a/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
+++ b/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
@@ -1,2 +1,5 @@
 require shared-mime-info.inc
 PR = "r0"
+
+SRC_URI[md5sum] = "eb8d24a6a80888849c9db7f30232ba6a"
+SRC_URI[sha256sum] = "80857ba19f8066bfc8d998bfc72b492e241ebd52d49c245aae9fd5b3d233b024"
diff --git a/meta/recipes-support/sqlite/sqlite3_3.7.3.bb b/meta/recipes-support/sqlite/sqlite3_3.7.3.bb
index fa68c56..4fb7fcc 100644
--- a/meta/recipes-support/sqlite/sqlite3_3.7.3.bb
+++ b/meta/recipes-support/sqlite/sqlite3_3.7.3.bb
@@ -3,3 +3,6 @@ require sqlite3.inc
 LIC_FILES_CHKSUM = "file://src/main.c;endline=16;md5=86c9b824e9d68f8a26343a4b57f6d85a"
 
 PR = "r0"
+
+SRC_URI[md5sum] = "5437978aae90350cf984993091e0d695"
+SRC_URI[sha256sum] = "dbf352e8fbb74829f5e7a88f9f6ceeb80a709537f668c36e4b6cdfb271309ef6"
diff --git a/meta/recipes-support/taglib/taglib_1.6.3.bb b/meta/recipes-support/taglib/taglib_1.6.3.bb
index 74934c0..2c9ff12 100644
--- a/meta/recipes-support/taglib/taglib_1.6.3.bb
+++ b/meta/recipes-support/taglib/taglib_1.6.3.bb
@@ -12,6 +12,9 @@ SRC_URI = "http://launchpad.net/${PN}/trunk/${PV}/+download/${PN}-${PV}.tar.gz \
            file://configuretweak.patch;patch=1 \
            file://nolibtool.patch;patch=1"
 
+SRC_URI[md5sum] = "ddf02f4e1d2dc30f76734df806e613eb"
+SRC_URI[sha256sum] = "a9ba089cc2c6d26d266bad492de31cadaeb878dea858e22ae3196091718f284b"
+
 S = "${WORKDIR}/taglib-${PV}"
 
 inherit autotools pkgconfig binconfig
diff --git a/meta/recipes-support/vte/vte_0.24.3.bb b/meta/recipes-support/vte/vte_0.24.3.bb
index 1953101..c06dd53 100644
--- a/meta/recipes-support/vte/vte_0.24.3.bb
+++ b/meta/recipes-support/vte/vte_0.24.3.bb
@@ -3,3 +3,6 @@ require vte.inc
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 
 PR = "r0"
+
+SRC_URI[archive.md5sum] = "3eba555eab7ccbbe5ca056bb203a14ab"
+SRC_URI[archive.sha256sum] = "fe7d01178976b17ca809e41d0e6dbbcb28e2af5e2f5aa857f9df65affac17d01"
-- 
1.7.1


