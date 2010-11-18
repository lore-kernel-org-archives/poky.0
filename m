Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B95ED4C80A74
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 21:17:17 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 19:17:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="627898783"
Received: from qhe2-db.sh.intel.com ([10.239.13.29])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 19:17:16 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PIuvG-0000wz-Cw; Thu, 18 Nov 2010 11:12:30 +0800
Date: Thu, 18 Nov 2010 11:12:30 +0800
From: Qing He <qing.he@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Message-ID: <20101118031230.GA3589@qhe2-db>
References: <cover.1289983189.git.qing.he@intel.com>
	<4CE41F9A.1020407@intel.com>
MIME-Version: 1.0
In-Reply-To: <4CE41F9A.1020407@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/9] [PULL] base utils and libs upgrade
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
X-List-Received-Date: Thu, 18 Nov 2010 03:17:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 2010-11-18 at 02:31 +0800, Wold, Saul wrote:
> On 11/17/2010 12:39 AM, Qing He wrote:
> >
> >
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >    Branch: qhe/distro
> >    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro
> >
> > Thanks,
> >      Qing He
> > ---
> >
> I will take this set of updates, but had one question below.
> 
> Sau!
> 
> >
> > Qing He (9):
> >    libnl: upgrade to version 2.0
> Why did you remove the utils.c from the LIC_FILES_CHKSUM list?

Saul,
	There is a major directory re-org of the libnl, so utils.c is
not there anymore.

	There is however, some problem in this package. A new
src/COPYING is introduced labeled GPLv3, but not a single file is under
this license, all of them are still LGPLv2 or GPLv2.

Thanks,
Qing

> 
> >    libtasn1: upgrade to version 2.8
> >    syslinux: upgrade to version 4.03
> >    busybox: upgrade to version 1.17.3
> >    dbus: upgrade to version 1.4.0
> >    dbus-glib: upgrade to version 0.88
> >    dhcp: upgrade to version 4.2.0
> >    sysstat: upgrade to version 9.1.5
> >    openssl: upgrade to version 0.9.8p
> >
> >   .../dhcp-3.0.3-dhclient-dbus.patch                 |    0
> >   .../fix-client-path.patch                          |    0
> >   .../fixincludes.patch                              |    0
> >   .../{dhcp-4.1.1-P1 =>  dhcp-4.2.0}/noattrmode.patch |    0
> >   .../dhcp/{dhcp-4.1.1-P1 =>  dhcp-4.2.0}/site.h      |    0
> >   .../dhcp/{dhcp_4.1.1-P1.bb =>  dhcp_4.2.0.bb}       |    2 +-
> >   .../configure-targets.patch                        |    0
> >   .../debian/ca.patch                                |    0
> >   .../debian/config-hurd.patch                       |    0
> >   .../debian/debian-targets.patch                    |    0
> >   .../debian/engines-path.patch                      |    0
> >   .../debian/kfreebsd-pipe.patch                     |    0
> >   .../debian/make-targets.patch                      |    0
> >   .../debian/man-dir.patch                           |    0
> >   .../debian/man-section.patch                       |    0
> >   .../debian/no-rpath.patch                          |    0
> >   .../debian/no-symbolic.patch                       |    0
> >   .../debian/perl-path.diff                          |    0
> >   .../debian/pic.patch                               |    0
> >   .../debian/pkg-config.patch                        |    0
> >   .../debian/rc4-amd64.patch                         |    0
> >   .../debian/rehash-crt.patch                        |    0
> >   .../debian/rehash_pod.patch                        |    0
> >   .../debian/series                                  |    0
> >   .../debian/shared-lib-ext.patch                    |    0
> >   .../debian/stddef.patch                            |    0
> >   .../debian/valgrind.patch                          |    0
> >   .../debian/version-script.patch                    |    0
> >   .../shared-libs.patch                              |    0
> >   .../{openssl_0.9.8o.bb =>  openssl_0.9.8p.bb}       |    0
> >   .../B921600.patch                                  |    0
> >   .../busybox-appletlib-dependency.patch             |    0
> >   .../{busybox-1.16.2 =>  busybox-1.17.3}/defconfig   |    0
> >   .../get_header_tar.patch                           |    0
> >   .../make-382-fix.patch                             |    0
> >   .../run-parts.in.usr-bin.patch                     |    6 +-
> >   .../udhcpc-fix-nfsroot.patch                       |    0
> >   .../udhcpscript.patch                              |    0
> >   meta/recipes-core/busybox/busybox.inc              |    9 +++-
> >   .../{busybox_1.16.2.bb =>  busybox_1.17.3.bb}       |    2 +-
> >   .../dbus/dbus-1.2.24/fix-install-daemon.patch      |   56 --------------------
> >   .../dbus/{dbus-1.2.24 =>  dbus-1.4.0}/dbus-1.init   |    0
> >   .../dbus/{dbus-1.2.24 =>  dbus-1.4.0}/tmpdir.patch  |    0
> >   .../fix_asneeded.patch                             |    0
> >   .../no-examples.patch                              |    0
> >   .../dbus/{dbus-glib_0.86.bb =>  dbus-glib_0.88.bb}  |    0
> >   meta/recipes-core/dbus/dbus.inc                    |    1 -
> >   .../dbus/{dbus_1.2.24.bb =>  dbus_1.4.0.bb}         |    2 +-
> >   .../syslinux/files/cross-build.patch               |    7 ++-
> >   .../{syslinux_3.86.bb =>  syslinux_4.03.bb}         |    2 +-
> >   .../sysstat/{sysstat_9.1.4.bb =>  sysstat_9.1.5.bb} |    0
> >   .../gnutls/{libtasn1_2.7.bb =>  libtasn1_2.8.bb}    |    2 +-
> >   meta/recipes-support/libnl/libnl/compilefix.patch  |   12 ----
> >   .../libnl/libnl/local-includes.patch               |   11 ----
> >   .../libnl/{libnl_1.1.bb =>  libnl_2.0.bb}           |   11 ++--
> >   55 files changed, 27 insertions(+), 96 deletions(-)
> >   rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 =>  dhcp-4.2.0}/dhcp-3.0.3-dhclient-dbus.patch (100%)
> >   rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 =>  dhcp-4.2.0}/fix-client-path.patch (100%)
> >   rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 =>  dhcp-4.2.0}/fixincludes.patch (100%)
> >   rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 =>  dhcp-4.2.0}/noattrmode.patch (100%)
> >   rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 =>  dhcp-4.2.0}/site.h (100%)
> >   rename meta/recipes-connectivity/dhcp/{dhcp_4.1.1-P1.bb =>  dhcp_4.2.0.bb} (94%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/configure-targets.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/ca.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/config-hurd.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/debian-targets.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/engines-path.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/kfreebsd-pipe.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/make-targets.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/man-dir.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/man-section.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/no-rpath.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/no-symbolic.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/perl-path.diff (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/pic.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/pkg-config.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/rc4-amd64.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/rehash-crt.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/rehash_pod.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/series (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/shared-lib-ext.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/stddef.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/valgrind.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/debian/version-script.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl-0.9.8o =>  openssl-0.9.8p}/shared-libs.patch (100%)
> >   rename meta/recipes-connectivity/openssl/{openssl_0.9.8o.bb =>  openssl_0.9.8p.bb} (100%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/B921600.patch (100%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/busybox-appletlib-dependency.patch (100%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/defconfig (100%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/get_header_tar.patch (100%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/make-382-fix.patch (100%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/run-parts.in.usr-bin.patch (82%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/udhcpc-fix-nfsroot.patch (100%)
> >   rename meta/recipes-core/busybox/{busybox-1.16.2 =>  busybox-1.17.3}/udhcpscript.patch (100%)
> >   rename meta/recipes-core/busybox/{busybox_1.16.2.bb =>  busybox_1.17.3.bb} (98%)
> >   delete mode 100644 meta/recipes-core/dbus/dbus-1.2.24/fix-install-daemon.patch
> >   rename meta/recipes-core/dbus/{dbus-1.2.24 =>  dbus-1.4.0}/dbus-1.init (100%)
> >   rename meta/recipes-core/dbus/{dbus-1.2.24 =>  dbus-1.4.0}/tmpdir.patch (100%)
> >   rename meta/recipes-core/dbus/{dbus-glib-0.86 =>  dbus-glib-0.88}/fix_asneeded.patch (100%)
> >   rename meta/recipes-core/dbus/{dbus-glib-0.86 =>  dbus-glib-0.88}/no-examples.patch (100%)
> >   rename meta/recipes-core/dbus/{dbus-glib_0.86.bb =>  dbus-glib_0.88.bb} (100%)
> >   rename meta/recipes-core/dbus/{dbus_1.2.24.bb =>  dbus_1.4.0.bb} (64%)
> >   rename meta/recipes-devtools/syslinux/{syslinux_3.86.bb =>  syslinux_4.03.bb} (99%)
> >   rename meta/recipes-extended/sysstat/{sysstat_9.1.4.bb =>  sysstat_9.1.5.bb} (100%)
> >   rename meta/recipes-support/gnutls/{libtasn1_2.7.bb =>  libtasn1_2.8.bb} (98%)
> >   delete mode 100644 meta/recipes-support/libnl/libnl/compilefix.patch
> >   delete mode 100644 meta/recipes-support/libnl/libnl/local-includes.patch
> >   rename meta/recipes-support/libnl/{libnl_1.1.bb =>  libnl_2.0.bb} (61%)
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> 

