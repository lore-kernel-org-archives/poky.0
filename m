Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74FEB4C80815
	for <poky@yoctoproject.org>; Tue, 30 Nov 2010 10:52:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Nov 2010 08:52:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,280,1288594800"; d="scan'208";a="682417003"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 30 Nov 2010 08:52:06 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Tue, 30 Nov 2010 08:52:06 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "He, Qing" <qing.he@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 30 Nov 2010 08:48:16 -0800
Thread-Topic: [poky] [PATCH 1/2] bind: add new recipe
Thread-Index: AcuQU614p38vXUv0TfalK3YrdHvE9gAWrTTt
Message-ID: <DC74E0187B44084E9AD28300B75DFE300293A6E4@orsmsx504.amr.corp.intel.com>
References: <cover.1291096296.git.qing.he@intel.com>,
	<da20577b0f265b3f5bc56b1590546bbd1db63921.1291096296.git.qing.he@intel.com>
In-Reply-To: <da20577b0f265b3f5bc56b1590546bbd1db63921.1291096296.git.qing.he@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] bind: add new recipe
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
X-List-Received-Date: Tue, 30 Nov 2010 16:52:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

One issue with this patch. The license for DHCP and BIND reads the same so =
LICENSE should probably be the same, "ISC"

-b
________________________________________
From: poky-bounces@yoctoproject.org [poky-bounces@yoctoproject.org] On Beha=
lf Of Qing He [qing.he@intel.com]
Sent: Monday, November 29, 2010 9:35 PM
To: poky@yoctoproject.org
Subject: [poky] [PATCH 1/2] bind: add new recipe

version 9.7.2-P2
based on bind recipe from openembedded

the exportlib is used by building dhcp

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../bind/bind-9.7.2-P2/conf.patch                  |  301 ++++++++++++++++=
++++
 .../bind/bind-9.7.2-P2/cross-build-fix.patch       |   19 ++
 meta/recipes-connectivity/bind/bind_9.7.2-P2.bb    |   54 ++++
 3 files changed, 374 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-connectivity/bind/bind-9.7.2-P2/conf.patch
 create mode 100644 meta/recipes-connectivity/bind/bind-9.7.2-P2/cross-buil=
d-fix.patch
 create mode 100644 meta/recipes-connectivity/bind/bind_9.7.2-P2.bb

diff --git a/meta/recipes-connectivity/bind/bind-9.7.2-P2/conf.patch b/meta=
/recipes-connectivity/bind/bind-9.7.2-P2/conf.patch
new file mode 100644
index 0000000..202c531
--- /dev/null
+++ b/meta/recipes-connectivity/bind/bind-9.7.2-P2/conf.patch
@@ -0,0 +1,301 @@
+diff -urN bind-9.3.1.orig/conf/db.0 bind-9.3.1/conf/db.0
+--- bind-9.3.1.orig/conf/db.0  1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/conf/db.0       2005-07-10 22:14:00.000000000 +0200
+@@ -0,0 +1,12 @@
++;
++; BIND reverse data file for broadcast zone
++;
++$TTL  604800
++@     IN      SOA     localhost. root.localhost. (
++                            1         ; Serial
++                       604800         ; Refresh
++                        86400         ; Retry
++                      2419200         ; Expire
++                       604800 )       ; Negative Cache TTL
++;
++@     IN      NS      localhost.
+diff -urN bind-9.3.1.orig/conf/db.127 bind-9.3.1/conf/db.127
+--- bind-9.3.1.orig/conf/db.127        1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/conf/db.127     2005-07-10 22:14:00.000000000 +0200
+@@ -0,0 +1,13 @@
++;
++; BIND reverse data file for local loopback interface
++;
++$TTL  604800
++@     IN      SOA     localhost. root.localhost. (
++                            1         ; Serial
++                       604800         ; Refresh
++                        86400         ; Retry
++                      2419200         ; Expire
++                       604800 )       ; Negative Cache TTL
++;
++@     IN      NS      localhost.
++1.0.0 IN      PTR     localhost.
+diff -urN bind-9.3.1.orig/conf/db.empty bind-9.3.1/conf/db.empty
+--- bind-9.3.1.orig/conf/db.empty      1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/conf/db.empty   2005-07-10 22:14:00.000000000 +0200
+@@ -0,0 +1,14 @@
++; BIND reverse data file for empty rfc1918 zone
++;
++; DO NOT EDIT THIS FILE - it is used for multiple zones.
++; Instead, copy it, edit named.conf, and use that copy.
++;
++$TTL  86400
++@     IN      SOA     localhost. root.localhost. (
++                            1         ; Serial
++                       604800         ; Refresh
++                        86400         ; Retry
++                      2419200         ; Expire
++                        86400 )       ; Negative Cache TTL
++;
++@     IN      NS      localhost.
+diff -urN bind-9.3.1.orig/conf/db.local bind-9.3.1/conf/db.local
+--- bind-9.3.1.orig/conf/db.local      1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/conf/db.local   2005-07-10 22:14:00.000000000 +0200
+@@ -0,0 +1,13 @@
++;
++; BIND data file for local loopback interface
++;
++$TTL  604800
++@     IN      SOA     localhost. root.localhost. (
++                            1         ; Serial
++                       604800         ; Refresh
++                        86400         ; Retry
++                      2419200         ; Expire
++                       604800 )       ; Negative Cache TTL
++;
++@     IN      NS      localhost.
++@     IN      A       127.0.0.1
+diff -urN bind-9.3.1.orig/conf/db.root bind-9.3.1/conf/db.root
+--- bind-9.3.1.orig/conf/db.root       1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/conf/db.root    2005-07-10 22:14:00.000000000 +0200
+@@ -0,0 +1,45 @@
++
++; <<>> DiG 9.2.3 <<>> ns . @a.root-servers.net.
++;; global options:  printcmd
++;; Got answer:
++;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 18944
++;; flags: qr aa rd; QUERY: 1, ANSWER: 13, AUTHORITY: 0, ADDITIONAL: 13
++
++;; QUESTION SECTION:
++;.                            IN      NS
++
++;; ANSWER SECTION:
++.                     518400  IN      NS      A.ROOT-SERVERS.NET.
++.                     518400  IN      NS      B.ROOT-SERVERS.NET.
++.                     518400  IN      NS      C.ROOT-SERVERS.NET.
++.                     518400  IN      NS      D.ROOT-SERVERS.NET.
++.                     518400  IN      NS      E.ROOT-SERVERS.NET.
++.                     518400  IN      NS      F.ROOT-SERVERS.NET.
++.                     518400  IN      NS      G.ROOT-SERVERS.NET.
++.                     518400  IN      NS      H.ROOT-SERVERS.NET.
++.                     518400  IN      NS      I.ROOT-SERVERS.NET.
++.                     518400  IN      NS      J.ROOT-SERVERS.NET.
++.                     518400  IN      NS      K.ROOT-SERVERS.NET.
++.                     518400  IN      NS      L.ROOT-SERVERS.NET.
++.                     518400  IN      NS      M.ROOT-SERVERS.NET.
++
++;; ADDITIONAL SECTION:
++A.ROOT-SERVERS.NET.   3600000 IN      A       198.41.0.4
++B.ROOT-SERVERS.NET.   3600000 IN      A       192.228.79.201
++C.ROOT-SERVERS.NET.   3600000 IN      A       192.33.4.12
++D.ROOT-SERVERS.NET.   3600000 IN      A       128.8.10.90
++E.ROOT-SERVERS.NET.   3600000 IN      A       192.203.230.10
++F.ROOT-SERVERS.NET.   3600000 IN      A       192.5.5.241
++G.ROOT-SERVERS.NET.   3600000 IN      A       192.112.36.4
++H.ROOT-SERVERS.NET.   3600000 IN      A       128.63.2.53
++I.ROOT-SERVERS.NET.   3600000 IN      A       192.36.148.17
++J.ROOT-SERVERS.NET.   3600000 IN      A       192.58.128.30
++K.ROOT-SERVERS.NET.   3600000 IN      A       193.0.14.129
++L.ROOT-SERVERS.NET.   3600000 IN      A       198.32.64.12
++M.ROOT-SERVERS.NET.   3600000 IN      A       202.12.27.33
++
++;; Query time: 81 msec
++;; SERVER: 198.41.0.4#53(a.root-servers.net.)
++;; WHEN: Sun Feb  1 11:27:14 2004
++;; MSG SIZE  rcvd: 436
++
+diff -urN bind-9.3.1.orig/conf/named.conf bind-9.3.1/conf/named.conf
+--- bind-9.3.1.orig/conf/named.conf    1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/conf/named.conf 2005-07-10 22:33:46.000000000 +0200
+@@ -0,0 +1,49 @@
++// This is the primary configuration file for the BIND DNS server named.
++//
++// If you are just adding zones, please do that in /etc/bind/named.conf.l=
ocal
++
++include "/etc/bind/named.conf.options";
++
++// prime the server with knowledge of the root servers
++zone "." {
++      type hint;
++      file "/etc/bind/db.root";
++};
++
++// be authoritative for the localhost forward and reverse zones, and for
++// broadcast zones as per RFC 1912
++
++zone "localhost" {
++      type master;
++      file "/etc/bind/db.local";
++};
++
++zone "127.in-addr.arpa" {
++      type master;
++      file "/etc/bind/db.127";
++};
++
++zone "0.in-addr.arpa" {
++      type master;
++      file "/etc/bind/db.0";
++};
++
++zone "255.in-addr.arpa" {
++      type master;
++      file "/etc/bind/db.255";
++};
++
++// zone "com" { type delegation-only; };
++// zone "net" { type delegation-only; };
++
++// From the release notes:
++//  Because many of our users are uncomfortable receiving undelegated ans=
wers
++//  from root or top level domains, other than a few for whom that behavi=
our
++//  has been trusted and expected for quite some length of time, we have =
now
++//  introduced the "root-delegations-only" feature which applies delegati=
on-only
++//  logic to all top level domains, and to the root domain.  An exception=
 list
++//  should be specified, including "MUSEUM" and "DE", and any other top l=
evel
++//  domains from whom undelegated responses are expected and trusted.
++// root-delegation-only exclude { "DE"; "MUSEUM"; };
++
++include "/etc/bind/named.conf.local";
+diff -urN bind-9.3.1.orig/conf/named.conf.local bind-9.3.1/conf/named.conf=
.local
+--- bind-9.3.1.orig/conf/named.conf.local      1970-01-01 01:00:00.0000000=
00 +0100
++++ bind-9.3.1/conf/named.conf.local   2005-07-10 22:14:06.000000000 +0200
+@@ -0,0 +1,8 @@
++//
++// Do any local configuration here
++//
++
++// Consider adding the 1918 zones here, if they are not used in your
++// organization
++//include "/etc/bind/zones.rfc1918";
++
+diff -urN bind-9.3.1.orig/conf/named.conf.options bind-9.3.1/conf/named.co=
nf.options
+--- bind-9.3.1.orig/conf/named.conf.options    1970-01-01 01:00:00.0000000=
00 +0100
++++ bind-9.3.1/conf/named.conf.options 2005-07-10 22:14:06.000000000 +0200
+@@ -0,0 +1,24 @@
++options {
++      directory "/var/cache/bind";
++
++      // If there is a firewall between you and nameservers you want
++      // to talk to, you might need to uncomment the query-source
++      // directive below.  Previous versions of BIND always asked
++      // questions using port 53, but BIND 8.1 and later use an unprivile=
ged
++      // port by default.
++
++      // query-source address * port 53;
++
++      // If your ISP provided one or more IP addresses for stable
++      // nameservers, you probably want to use them as forwarders.
++      // Uncomment the following block, and insert the addresses replacin=
g
++      // the all-0's placeholder.
++
++      // forwarders {
++      //      0.0.0.0;
++      // };
++
++      auth-nxdomain no;    # conform to RFC1035
++
++};
++
+diff -urN bind-9.3.1.orig/conf/zones.rfc1918 bind-9.3.1/conf/zones.rfc1918
+--- bind-9.3.1.orig/conf/zones.rfc1918 1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/conf/zones.rfc1918      2005-07-10 22:14:10.000000000 +0200
+@@ -0,0 +1,20 @@
++zone "10.in-addr.arpa"      { type master; file "/etc/bind/db.empty"; };
++
++zone "16.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "17.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "18.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "19.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "20.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "21.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "22.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "23.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "24.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "25.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "26.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "27.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "28.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "29.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "30.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++zone "31.172.in-addr.arpa"  { type master; file "/etc/bind/db.empty"; };
++
++zone "168.192.in-addr.arpa" { type master; file "/etc/bind/db.empty"; };
+diff -urN bind-9.3.1.orig/init.d bind-9.3.1/init.d
+--- bind-9.3.1.orig/init.d     1970-01-01 01:00:00.000000000 +0100
++++ bind-9.3.1/init.d  2005-07-10 23:09:58.000000000 +0200
+@@ -0,0 +1,63 @@
++#!/bin/sh
++
++PATH=3D/sbin:/bin:/usr/sbin:/usr/bin
++
++# for a chrooted server: "-u bind -t /var/lib/named"
++# Don't modify this line, change or create /etc/default/bind9.
++OPTIONS=3D""
++
++test -f /etc/default/bind9 && . /etc/default/bind9
++
++test -x /usr/sbin/rndc || exit 0
++
++case "$1" in
++    start)
++      echo -n "Starting domain name service: named"
++
++      modprobe capability >/dev/null 2>&1 || true
++
++      # dirs under /var/run can go away on reboots.
++      mkdir -p /var/run/bind/run
++      mkdir -p /var/cache/bind
++      chmod 775 /var/run/bind/run
++      chown root:bind /var/run/bind/run >/dev/null 2>&1 || true
++
++      if [ ! -x /usr/sbin/named ]; then
++          echo "named binary missing - not starting"
++          exit 1
++      fi
++      if start-stop-daemon --start --quiet --exec /usr/sbin/named \
++              --pidfile /var/run/bind/run/named.pid -- $OPTIONS; then
++          if [ -x /sbin/resolvconf ] ; then
++              echo "nameserver 127.0.0.1" | /sbin/resolvconf -a lo
++          fi
++      fi
++      echo "."
++    ;;
++
++    stop)
++      echo -n "Stopping domain name service: named"
++      if [ -x /sbin/resolvconf ]; then
++          /sbin/resolvconf -d lo
++      fi
++      /usr/sbin/rndc stop
++      echo "."
++    ;;
++
++    reload)
++      /usr/sbin/rndc reload
++    ;;
++
++    restart|force-reload)
++      $0 stop
++      sleep 2
++      $0 start
++    ;;
++
++    *)
++      echo "Usage: /etc/init.d/bind {start|stop|reload|restart|force-relo=
ad}" >&2
++      exit 1
++    ;;
++esac
++
++exit 0
diff --git a/meta/recipes-connectivity/bind/bind-9.7.2-P2/cross-build-fix.p=
atch b/meta/recipes-connectivity/bind/bind-9.7.2-P2/cross-build-fix.patch
new file mode 100644
index 0000000..dc89c52
--- /dev/null
+++ b/meta/recipes-connectivity/bind/bind-9.7.2-P2/cross-build-fix.patch
@@ -0,0 +1,19 @@
+11/30/2010
+gen.c should be build by BUILD_CC
+
+Signed-off-by: Qing He <qing.he@intel.com>
+
+diff --git a/lib/export/dns/Makefile.in b/lib/export/dns/Makefile.in
+index aeadf57..d3fae74 100644
+--- a/lib/export/dns/Makefile.in
++++ b/lib/export/dns/Makefile.in
+@@ -166,7 +166,8 @@ code.h:    gen
+       ./gen -s ${srcdir} > code.h
+
+ gen: ${srcdir}/gen.c
+-      ${CC} ${ALL_CFLAGS} ${LDFLAGS} -o $@ ${srcdir}/gen.c ${LIBS}
++      ${BUILD_CC} ${BUILD_CFLAGS} -I${top_srcdir}/lib/isc/include \
++      ${BUILD_CPPFLAGS} ${BUILD_LDFLAGS} -o $@ ${srcdir}/gen.c ${BUILD_LI=
BS}
+
+ #We don't need rbtdb64 for this library
+ #rbtdb64.@O@: rbtdb.c
diff --git a/meta/recipes-connectivity/bind/bind_9.7.2-P2.bb b/meta/recipes=
-connectivity/bind/bind_9.7.2-P2.bb
new file mode 100644
index 0000000..0cc8caf
--- /dev/null
+++ b/meta/recipes-connectivity/bind/bind_9.7.2-P2.bb
@@ -0,0 +1,54 @@
+DESCRIPTION =3D "ISC Internet Domain Name Server"
+HOMEPAGE =3D "http://www.isc.org/sw/bind/"
+SECTION =3D "console/network"
+
+LICENSE =3D "BSD"
+LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=3Dfe11ac92dcbd84134d91b6e2c2ecc=
ab5"
+
+DEPENDS =3D "openssl"
+PR =3D "r0"
+
+SRC_URI =3D "ftp://ftp.isc.org/isc/bind9/${PV}/${PN}-${PV}.tar.gz \
+          file://conf.patch \
+           file://cross-build-fix.patch \
+          "
+
+# --enable-exportlib is necessary for building dhcp
+EXTRA_OECONF =3D " --enable-ipv6=3Dno --with-randomdev=3D/dev/random --dis=
able-threads \
+                 --disable-devpoll --disable-epoll \
+                 --sysconfdir=3D${sysconfdir}/bind \
+                 --with-openssl=3D${STAGING_LIBDIR}/.. --with-libxml2=3D${=
STAGING_LIBDIR}/.. \
+                 --enable-exportlib --with-export-includedir=3D${includedi=
r} --with-export-libdir=3D${libdir} \
+               "
+inherit autotools update-rc.d
+
+INITSCRIPT_NAME =3D "bind"
+INITSCRIPT_PARAMS =3D "defaults"
+
+PARALLEL_MAKE =3D ""
+
+PACKAGES_prepend =3D "${PN}-utils "
+FILES_${PN}-utils =3D "${bindir}/host ${bindir}/dig ${bindir}/nslookup"
+FILES_${PN}-dev +=3D "${bindir}/isc-config.h"
+
+do_install_append() {
+       rm "${D}/usr/bin/nslookup"
+       install -d "${D}/etc/bind"
+       install -d "${D}/etc/init.d"
+       install -m 644 ${S}/conf/* "${D}/etc/bind"
+       install -m 755 "${S}/init.d" "${D}/etc/init.d/bind"
+}
+
+CONFFILES_${PN} =3D " \
+       ${sysconfdir}/bind/named.conf \
+       ${sysconfdir}/bind/named.conf.local \
+       ${sysconfdir}/bind/named.conf.options \
+       ${sysconfdir}/bind/db.0 \
+       ${sysconfdir}/bind/db.127 \
+       ${sysconfdir}/bind/db.empty \
+       ${sysconfdir}/bind/db.local \
+       ${sysconfdir}/bind/db.root \
+       "
+
+SRC_URI[md5sum] =3D "e74de6ec9c2cd27576794c873bd85f4a"
+SRC_URI[sha256sum] =3D "e6d5938184066fc793c28ff975e09e9721116aede2a2d6d93b=
1be5e8654a5c8a"
--
1.7.0

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

