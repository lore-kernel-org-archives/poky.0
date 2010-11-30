Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFE114C8110B
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 23:58:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Nov 2010 21:58:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,278,1288594800"; d="scan'208";a="862588688"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga001.fm.intel.com with ESMTP; 29 Nov 2010 21:58:43 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PNJ9r-0005ni-S8; Tue, 30 Nov 2010 13:53:43 +0800
Message-Id: <101decfe15a5eb74c8a65fc42b885295b233d039.1291096296.git.qing.he@intel.com>
In-Reply-To: <cover.1291096296.git.qing.he@intel.com>
References: <cover.1291096296.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Tue, 30 Nov 2010 13:45:21 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/2] dhcp: fix cross build
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
X-List-Received-Date: Tue, 30 Nov 2010 05:58:47 -0000

the new internal bind9 is not cross compiling friendly, use
the external library

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../dhcp/dhcp-4.2.0/fix-external-bind.patch        |  101 ++++++++++++++++++++
 meta/recipes-connectivity/dhcp/dhcp4.inc           |    6 +-
 meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb       |    6 +-
 3 files changed, 110 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-external-bind.patch

diff --git a/meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-external-bind.patch b/meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-external-bind.patch
new file mode 100644
index 0000000..2206b71
--- /dev/null
+++ b/meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-external-bind.patch
@@ -0,0 +1,101 @@
+11/30/2010
+--with-libbind=PATH is available but not used by Makefile,
+this patch is to allow building with external bind
+
+Signed-off-by: Qing He <qing.he@intel.com>
+
+diff --git a/Makefile.am b/Makefile.am
+index 928d926..cd17af8 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -21,7 +21,7 @@ EXTRA_DIST = RELNOTES LICENSE \
+ 	     util/bindvar.sh \
+ 	     bind/Makefile bind/bind.tar.gz bind/version.tmp 
+ 
+-SUBDIRS = bind includes tests common dst omapip client dhcpctl relay server
++SUBDIRS = includes tests common dst omapip client dhcpctl relay server
+ 
+ nobase_include_HEADERS = dhcpctl/dhcpctl.h
+ 
+diff --git a/client/Makefile.am b/client/Makefile.am
+index 77ed055..5a77f2d 100644
+--- a/client/Makefile.am
++++ b/client/Makefile.am
+@@ -5,7 +5,7 @@ dhclient_SOURCES = clparse.c dhclient.c dhc6.c \
+ 		   scripts/netbsd scripts/nextstep scripts/openbsd \
+ 		   scripts/solaris scripts/openwrt
+ dhclient_LDADD = ../common/libdhcp.a ../omapip/libomapi.a \
+-		 ../bind/lib/libdns.a ../bind/lib/libisc.a
++		 $(libbind)/lib/libdns.a $(libbind)/lib/libisc.a
+ man_MANS = dhclient.8 dhclient-script.8 dhclient.conf.5 dhclient.leases.5
+ EXTRA_DIST = $(man_MANS)
+ 
+diff --git a/configure.ac b/configure.ac
+index ff832aa..60d342c 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -500,6 +500,7 @@ no)
+ 	libbind="$use_libbind"
+ 	;;
+ esac
++AC_SUBST([libbind])
+ 
+ # OpenLDAP support.
+ AC_ARG_WITH(ldap,
+diff --git a/dhcpctl/Makefile.am b/dhcpctl/Makefile.am
+index 61049be..85aefa3 100644
+--- a/dhcpctl/Makefile.am
++++ b/dhcpctl/Makefile.am
+@@ -6,10 +6,10 @@ EXTRA_DIST = $(man_MANS)
+ 
+ omshell_SOURCES = omshell.c
+ omshell_LDADD = libdhcpctl.a ../common/libdhcp.a ../omapip/libomapi.a \
+-	        ../bind/lib/libdns.a ../bind/lib/libisc.a
++	        $(libbind)/lib/libdns.a $(libbind)/lib/libisc.a
+ 
+ libdhcpctl_a_SOURCES = dhcpctl.c callback.c remote.c
+ 
+ cltest_SOURCES = cltest.c
+ cltest_LDADD = libdhcpctl.a ../common/libdhcp.a ../omapip/libomapi.a \
+-	       ../bind/lib/libdns.a ../bind/lib/libisc.a
+\ No newline at end of file
++	       $(libbind)/lib/libdns.a $(libbind)/lib/libisc.a
+diff --git a/omapip/Makefile.am b/omapip/Makefile.am
+index 595950a..17f2233 100644
+--- a/omapip/Makefile.am
++++ b/omapip/Makefile.am
+@@ -10,5 +10,5 @@ man_MANS = omapi.3
+ EXTRA_DIST = $(man_MANS)
+ 
+ svtest_SOURCES = test.c
+-svtest_LDADD = libomapi.a ../bind/lib/libdns.a ../bind/lib/libisc.a
++svtest_LDADD = libomapi.a $(libbind)/lib/libdns.a $(libbind)/lib/libisc.a
+ 
+diff --git a/relay/Makefile.am b/relay/Makefile.am
+index d8757ca..a7885da 100644
+--- a/relay/Makefile.am
++++ b/relay/Makefile.am
+@@ -3,7 +3,7 @@ AM_CPPFLAGS = -DLOCALSTATEDIR='"@localstatedir@"'
+ sbin_PROGRAMS = dhcrelay
+ dhcrelay_SOURCES = dhcrelay.c
+ dhcrelay_LDADD = ../common/libdhcp.a ../omapip/libomapi.a \
+-		 ../bind/lib/libdns.a ../bind/lib/libisc.a
++		 $(libbind)/lib/libdns.a $(libbind)/lib/libisc.a
+ man_MANS = dhcrelay.8
+ EXTRA_DIST = $(man_MANS)
+ 
+diff --git a/server/Makefile.am b/server/Makefile.am
+index cdfaf47..d2c254b 100644
+--- a/server/Makefile.am
++++ b/server/Makefile.am
+@@ -8,8 +8,8 @@ dhcpd_SOURCES = dhcpd.c dhcp.c bootp.c confpars.c db.c class.c failover.c \
+ 
+ dhcpd_CFLAGS = $(LDAP_CFLAGS)
+ dhcpd_LDADD = ../common/libdhcp.a ../omapip/libomapi.a \
+-	      ../dhcpctl/libdhcpctl.a ../bind/lib/libdns.a \
+-	      ../bind/lib/libisc.a
++	      ../dhcpctl/libdhcpctl.a $(libbind)/lib/libdns.a \
++	      $(libbind)/lib/libisc.a
+ 
+ man_MANS = dhcpd.8 dhcpd.conf.5 dhcpd.leases.5
+ EXTRA_DIST = $(man_MANS)
diff --git a/meta/recipes-connectivity/dhcp/dhcp4.inc b/meta/recipes-connectivity/dhcp/dhcp4.inc
index f97de30..e7cff3e 100644
--- a/meta/recipes-connectivity/dhcp/dhcp4.inc
+++ b/meta/recipes-connectivity/dhcp/dhcp4.inc
@@ -10,6 +10,8 @@ HOMEPAGE = "http://www.isc.org/"
 LICENSE = "ISC"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=4;md5=bb6fd41f5895b67088ebea61ad365e74"
 
+DEPENDS = "bind"
+
 SRC_URI = "ftp://ftp.isc.org/isc/dhcp/dhcp-${PV}.tar.gz \
            file://site.h \
 	   file://init-relay file://default-relay \
@@ -22,7 +24,9 @@ TARGET_CFLAGS += "-D_GNU_SOURCE"
 EXTRA_OECONF = "--with-srv-lease-file=${localstatedir}/lib/dhcp/dhcpd.leases \
                 --with-srv6-lease-file=${localstatedir}/lib/dhcp/dhcpd6.leases \
                 --with-cli-lease-file=${localstatedir}/lib/dhcp/dhclient.leases \
-                --with-cli6-lease-file=${localstatedir}/lib/dhcp/dhclient6.leases"
+                --with-cli6-lease-file=${localstatedir}/lib/dhcp/dhclient6.leases \
+                --with-libbind=${STAGING_LIBDIR}/.. \
+               "
 
 do_compile_prepend () {
 	cp -f ${WORKDIR}/site.h ${S}/includes
diff --git a/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb b/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
index 3f770d9..99920be 100644
--- a/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
+++ b/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
@@ -1,7 +1,9 @@
 require dhcp4.inc
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI += "file://fixincludes.patch \
             file://dhcp-3.0.3-dhclient-dbus.patch;striplevel=0 \
-            file://fix-client-path.patch"
+            file://fix-client-path.patch \
+            file://fix-external-bind.patch \
+           "
-- 
1.7.0


