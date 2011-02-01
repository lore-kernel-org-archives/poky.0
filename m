Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DC1E4C8008C
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 20:43:14 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p112hEeR005677
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:43:14 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:13 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:13 -0800
Message-Id: <588c7bb9cd1fdd6c7b3e86909f950eba2f2e4c11.1296527961.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1296527961.git.jingdong.lu@windriver.com>
References: <cover.1296527961.git.jingdong.lu@windriver.com>
Old-Date: Tue, 1 Feb 2011 10:32:09 +0800
Date: Tue, 01 Feb 2011 10:41:31 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 01 Feb 2011 02:43:13.0660 (UTC)
	FILETIME=[C57CEBC0:01CBC1B9]
Subject: [PATCH 4/4] cups: add cups 1.4.6
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
X-List-Received-Date: Tue, 01 Feb 2011 02:43:14 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

This package has been added from meta-openembedded committed by Koen Kooi.
Changes from the meta-openembedded version:
* Add SUMMARY
* Change dependence name: libusb
* Add PR

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../0001-don-t-try-to-run-generated-binaries.patch |   68 ++++++++++++++++
 .../cups/cups-1.4.6/use_echo_only_in_init.patch    |   11 +++
 meta/recipes-extended/cups/cups14.inc              |   85 ++++++++++++++++++++
 meta/recipes-extended/cups/cups_1.4.6.bb           |   17 ++++
 4 files changed, 181 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/cups/cups-1.4.6/0001-don-t-try-to-run-generated-binaries.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
 create mode 100644 meta/recipes-extended/cups/cups14.inc
 create mode 100644 meta/recipes-extended/cups/cups_1.4.6.bb

diff --git a/meta/recipes-extended/cups/cups-1.4.6/0001-don-t-try-to-run-generated-binaries.patch b/meta/recipes-extended/cups/cups-1.4.6/0001-don-t-try-to-run-generated-binaries.patch
new file mode 100644
index 0000000..7b544ca
--- /dev/null
+++ b/meta/recipes-extended/cups/cups-1.4.6/0001-don-t-try-to-run-generated-binaries.patch
@@ -0,0 +1,68 @@
+From 90069586167b930befce7303aea57078f04b4ed8 Mon Sep 17 00:00:00 2001
+From: Koen Kooi <koen@dominion.thruhere.net>
+Date: Sun, 30 Jan 2011 16:37:27 +0100
+Subject: [PATCH] don't try to run generated binaries
+
+Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
+---
+ ppdc/Makefile |   30 +++++++++++++++---------------
+ 1 files changed, 15 insertions(+), 15 deletions(-)
+
+diff --git a/ppdc/Makefile b/ppdc/Makefile
+index 0288d47..fc87f1b 100644
+--- a/ppdc/Makefile
++++ b/ppdc/Makefile
+@@ -243,8 +243,8 @@ genstrings:		genstrings.o libcupsppdc.a ../cups/libcups.a \
+ 	$(CXX) $(ARCHFLAGS) $(LDFLAGS) -o genstrings genstrings.o \
+ 		libcupsppdc.a ../cups/libcups.a $(LIBGSSAPI) $(SSLLIBS) \
+ 		$(DNSSDLIBS) $(COMMONLIBS) $(LIBZ)
+-	echo Generating localization strings...
+-	./genstrings >sample.c
++#	echo Generating localization strings...
++#	./genstrings >sample.c
+ 
+ 
+ #
+@@ -261,9 +261,9 @@ ppdc-static:		ppdc.o libcupsppdc.a  ../cups/libcups.a foo.drv foo-fr.po
+ 	$(CXX) $(ARCHFLAGS) $(LDFLAGS) -o ppdc-static ppdc.o libcupsppdc.a \
+ 		../cups/libcups.a $(LIBGSSAPI) $(SSLLIBS) $(DNSSDLIBS) \
+ 		$(COMMONLIBS) $(LIBZ)
+-	echo Testing PPD compiler...
+-	./ppdc-static -l en,fr -I ../data foo.drv
+-	./ppdc-static -l en,fr -z -I ../data foo.drv
++#	echo Testing PPD compiler...
++#	./ppdc-static -l en,fr -I ../data foo.drv
++#	./ppdc-static -l en,fr -z -I ../data foo.drv
+ 
+ 
+ #
+@@ -290,16 +290,16 @@ ppdi-static:		ppdc-static ppdi.o libcupsppdc.a  ../cups/libcups.a
+ 		../cups/libcups.a $(LIBGSSAPI) $(SSLLIBS) $(DNSSDLIBS) \
+ 		$(COMMONLIBS) $(LIBZ)
+ 	echo Testing PPD importer...
+-	$(RM) -r ppd ppd2 sample-import.drv
+-	./ppdc-static -I ../data sample.drv
+-	./ppdi-static -I ../data -o sample-import.drv ppd/*
+-	./ppdc-static -I ../data -d ppd2 sample-import.drv
+-	if diff -r ppd ppd2 >/dev/null; then \
+-		echo PPD import OK; \
+-	else \
+-		echo PPD import FAILED; \
+-		exit 1; \
+-	fi
++#	$(RM) -r ppd ppd2 sample-import.drv
++#	./ppdc-static -I ../data sample.drv
++#	./ppdi-static -I ../data -o sample-import.drv ppd/*
++#	./ppdc-static -I ../data -d ppd2 sample-import.drv
++#	if diff -r ppd ppd2 >/dev/null; then \
++#		echo PPD import OK; \
++#	else \
++#		echo PPD import FAILED; \
++#		exit 1; \
++#	fi
+ 
+ 
+ #
+-- 
+1.6.6.1
+
diff --git a/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch b/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
new file mode 100644
index 0000000..21ff0e5
--- /dev/null
+++ b/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
@@ -0,0 +1,11 @@
+--- a/init/cups.sh.in.orig	2008-10-04 16:50:46.000000000 -0300
++++ b/init/cups.sh.in	2008-10-04 16:51:39.000000000 -0300
+@@ -68,7 +68,7 @@
+ 		ECHO_ERROR=:
+ 		;;
+ 
+-	Linux*)
++	DISABLELinux*)
+ 		IS_ON=/bin/true
+ 		if test -f /etc/init.d/functions; then
+ 			. /etc/init.d/functions
diff --git a/meta/recipes-extended/cups/cups14.inc b/meta/recipes-extended/cups/cups14.inc
new file mode 100644
index 0000000..e64f239
--- /dev/null
+++ b/meta/recipes-extended/cups/cups14.inc
@@ -0,0 +1,85 @@
+SUMMARY = "An Internet printing system for Unix"
+DESCRIPTION = "An Internet printing system for Unix."
+SECTION = "console/utils"
+LICENSE = "GPLv2 LGPLv2"
+DEPENDS = "gnutls libpng jpeg dbus dbus-glib zlib"
+PROVIDES = "cups14"
+
+SRC_URI = "ftp://ftp.easysw.com/pub/cups/${PV}/cups-${PV}-source.tar.bz2"
+
+LEAD_SONAME = "libcupsdriver.so"
+
+inherit autotools binconfig
+
+EXTRA_OECONF = " \
+               --enable-gnutls \
+               --enable-dbus \
+               --enable-browsing \
+               --disable-openssl \
+               --disable-tiff \
+               --without-php \
+               --without-perl \
+               --without-python \
+               --without-java \
+               "
+
+
+do_configure() {
+	gnu-configize
+	libtoolize --force
+	DSOFLAGS="${LDFLAGS}" oe_runconf
+}
+
+do_compile () {
+	sed -i s:STRIP:NOSTRIP: Makedefs
+	sed -i s:serial:: backend/Makefile
+
+	echo "all:"    >  man/Makefile
+	echo "libs:" >> man/Makefile
+	echo "install:" >> man/Makefile
+	echo "install-data:" >> man/Makefile
+	echo "install-exec:" >> man/Makefile
+	echo "install-headers:" >> man/Makefile
+	echo "install-libs:" >> man/Makefile
+
+	oe_runmake "SSLLIBS=-lgnutls -L${STAGING_LIBDIR}" \
+		   "LIBPNG=-lpng -lm -L${STAGING_LIBDIR}" \
+		   "LIBJPEG=-ljpeg -L${STAGING_LIBDIR}" \
+		   "LIBZ=-lz -L${STAGING_LIBDIR}" \
+		   "-I."
+}
+
+fakeroot do_install () {
+	oe_runmake "DSTROOT=${D}" install
+
+   # This directory gets installed with perms 511, which makes packaging fail
+   chmod 0711 "${D}/${localstatedir}/run/cups/certs"
+}
+
+python do_package_append() {
+	# Change permissions back the way they were, they probably had a reason...
+	workdir = bb.data.getVar('WORKDIR', d, 1)
+	os.system('chmod 0511 %s/install/cups/var/run/cups/certs' % workdir)
+}
+
+PACKAGES =+ "${PN}-lib ${PN}-libimage"
+
+FILES_${PN}-lib = "${libdir}/libcups.so.*"
+
+FILES_${PN}-libimage = "${libdir}/libcupsimage.so.*"
+
+FILES_${PN}-dbg += "${libdir}/cups/backend/.debug \
+                    ${libdir}/cups/cgi-bin/.debug \
+                    ${libdir}/cups/filter/.debug \
+                    ${libdir}/cups/monitor/.debug \
+                    ${libdir}/cups/notifier/.debug \
+                    ${libdir}/cups/daemon/.debug \
+                   "
+
+#package the html for the webgui inside the main packages (~1MB uncompressed)
+
+FILES_${PN} += "${datadir}/doc/cups/images \
+                ${datadir}/doc/cups/*html \
+                ${datadir}/doc/cups/*.css \
+                ${datadir}/icons/ \
+               "
diff --git a/meta/recipes-extended/cups/cups_1.4.6.bb b/meta/recipes-extended/cups/cups_1.4.6.bb
new file mode 100644
index 0000000..86b5340
--- /dev/null
+++ b/meta/recipes-extended/cups/cups_1.4.6.bb
@@ -0,0 +1,17 @@
+require cups14.inc
+
+PR = "r0"
+DEPENDS += "libusb"
+
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=956e7600195e6139f12de8c2a5bbefa9"
+SRC_URI += " \
+	file://use_echo_only_in_init.patch \
+    file://0001-don-t-try-to-run-generated-binaries.patch \
+	"
+
+SRC_URI[md5sum] = "de8fb5a29c36554925c0c6a6e2c0dae1"
+SRC_URI[sha256sum] = "f08711702a77b52c7150f96fe1f45482f6151cb95ef601268c528607fe6ad514"
+
+EXTRA_OECONF += " --disable-gssapi --enable-debug --disable-relro --enable-libusb"
+
+CONFFILES_${PN} += "${sysconfdir}/cups/cupsd.conf"
-- 
1.7.0.4


