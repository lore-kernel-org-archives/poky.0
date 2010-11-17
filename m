Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 60CD84C80FD4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:46:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="574633018"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdah-0007kj-TY
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:07 +0800
Message-Id: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 16:39:49 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/9] [PULL] base utils and libs upgrade
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
X-List-Received-Date: Wed, 17 Nov 2010 08:46:47 -0000



Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro

Thanks,
    Qing He
---


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

 .../dhcp-3.0.3-dhclient-dbus.patch                 |    0
 .../fix-client-path.patch                          |    0
 .../fixincludes.patch                              |    0
 .../{dhcp-4.1.1-P1 => dhcp-4.2.0}/noattrmode.patch |    0
 .../dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/site.h      |    0
 .../dhcp/{dhcp_4.1.1-P1.bb => dhcp_4.2.0.bb}       |    2 +-
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
 .../{openssl_0.9.8o.bb => openssl_0.9.8p.bb}       |    0
 .../B921600.patch                                  |    0
 .../busybox-appletlib-dependency.patch             |    0
 .../{busybox-1.16.2 => busybox-1.17.3}/defconfig   |    0
 .../get_header_tar.patch                           |    0
 .../make-382-fix.patch                             |    0
 .../run-parts.in.usr-bin.patch                     |    6 +-
 .../udhcpc-fix-nfsroot.patch                       |    0
 .../udhcpscript.patch                              |    0
 meta/recipes-core/busybox/busybox.inc              |    9 +++-
 .../{busybox_1.16.2.bb => busybox_1.17.3.bb}       |    2 +-
 .../dbus/dbus-1.2.24/fix-install-daemon.patch      |   56 --------------------
 .../dbus/{dbus-1.2.24 => dbus-1.4.0}/dbus-1.init   |    0
 .../dbus/{dbus-1.2.24 => dbus-1.4.0}/tmpdir.patch  |    0
 .../fix_asneeded.patch                             |    0
 .../no-examples.patch                              |    0
 .../dbus/{dbus-glib_0.86.bb => dbus-glib_0.88.bb}  |    0
 meta/recipes-core/dbus/dbus.inc                    |    1 -
 .../dbus/{dbus_1.2.24.bb => dbus_1.4.0.bb}         |    2 +-
 .../syslinux/files/cross-build.patch               |    7 ++-
 .../{syslinux_3.86.bb => syslinux_4.03.bb}         |    2 +-
 .../sysstat/{sysstat_9.1.4.bb => sysstat_9.1.5.bb} |    0
 .../gnutls/{libtasn1_2.7.bb => libtasn1_2.8.bb}    |    2 +-
 meta/recipes-support/libnl/libnl/compilefix.patch  |   12 ----
 .../libnl/libnl/local-includes.patch               |   11 ----
 .../libnl/{libnl_1.1.bb => libnl_2.0.bb}           |   11 ++--
 55 files changed, 27 insertions(+), 96 deletions(-)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/dhcp-3.0.3-dhclient-dbus.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/fix-client-path.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/fixincludes.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/noattrmode.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/site.h (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp_4.1.1-P1.bb => dhcp_4.2.0.bb} (94%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/configure-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/ca.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/config-hurd.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/debian-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/engines-path.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/kfreebsd-pipe.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/make-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/man-dir.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/man-section.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/no-rpath.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/no-symbolic.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/perl-path.diff (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/pic.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/pkg-config.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/rc4-amd64.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/rehash-crt.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/rehash_pod.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/series (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/shared-lib-ext.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/stddef.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/valgrind.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/version-script.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/shared-libs.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl_0.9.8o.bb => openssl_0.9.8p.bb} (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/B921600.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/busybox-appletlib-dependency.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/defconfig (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/get_header_tar.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/make-382-fix.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/run-parts.in.usr-bin.patch (82%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/udhcpc-fix-nfsroot.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/udhcpscript.patch (100%)
 rename meta/recipes-core/busybox/{busybox_1.16.2.bb => busybox_1.17.3.bb} (98%)
 delete mode 100644 meta/recipes-core/dbus/dbus-1.2.24/fix-install-daemon.patch
 rename meta/recipes-core/dbus/{dbus-1.2.24 => dbus-1.4.0}/dbus-1.init (100%)
 rename meta/recipes-core/dbus/{dbus-1.2.24 => dbus-1.4.0}/tmpdir.patch (100%)
 rename meta/recipes-core/dbus/{dbus-glib-0.86 => dbus-glib-0.88}/fix_asneeded.patch (100%)
 rename meta/recipes-core/dbus/{dbus-glib-0.86 => dbus-glib-0.88}/no-examples.patch (100%)
 rename meta/recipes-core/dbus/{dbus-glib_0.86.bb => dbus-glib_0.88.bb} (100%)
 rename meta/recipes-core/dbus/{dbus_1.2.24.bb => dbus_1.4.0.bb} (64%)
 rename meta/recipes-devtools/syslinux/{syslinux_3.86.bb => syslinux_4.03.bb} (99%)
 rename meta/recipes-extended/sysstat/{sysstat_9.1.4.bb => sysstat_9.1.5.bb} (100%)
 rename meta/recipes-support/gnutls/{libtasn1_2.7.bb => libtasn1_2.8.bb} (98%)
 delete mode 100644 meta/recipes-support/libnl/libnl/compilefix.patch
 delete mode 100644 meta/recipes-support/libnl/libnl/local-includes.patch
 rename meta/recipes-support/libnl/{libnl_1.1.bb => libnl_2.0.bb} (61%)


