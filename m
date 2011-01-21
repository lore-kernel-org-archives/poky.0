Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4043A4C811FE
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:27:45 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L9Ri3s004772
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:27:44 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:44 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:44 -0800
Message-Id: <16ce7eea59eb4cd02f2fa16848df521e2387cb75.1295601800.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295601800.git.jingdong.lu@windriver.com>
References: <cover.1295601800.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Fri, 21 Jan 2011 16:51:46 +0800
Date: Fri, 21 Jan 2011 17:26:25 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 21 Jan 2011 09:27:45.0034 (UTC)
	FILETIME=[75CF6EA0:01CBB94D]
Subject: [PATCH 2/4] cups: Add cups
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
X-List-Received-Date: Fri, 21 Jan 2011 09:27:45 -0000

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../cups/cups-1.4.4/configure.patch                |  117 ++++++++++++++++++++
 .../cups/cups-1.4.4/skip_tools.patch               |   51 +++++++++
 .../cups/cups-1.4.4/use_echo_only_in_init.patch    |   11 ++
 meta/recipes-extended/cups/cups14.inc              |   86 ++++++++++++++
 meta/recipes-extended/cups/cups_1.4.4.bb           |   17 +++
 5 files changed, 282 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/cups/cups-1.4.4/configure.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.4/skip_tools.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.4/use_echo_only_in_init.patch
 create mode 100644 meta/recipes-extended/cups/cups14.inc
 create mode 100644 meta/recipes-extended/cups/cups_1.4.4.bb

diff --git a/meta/recipes-extended/cups/cups-1.4.4/configure.patch b/meta/recipes-extended/cups/cups-1.4.4/configure.patch
new file mode 100644
index 0000000..877e8d3
--- /dev/null
+++ b/meta/recipes-extended/cups/cups-1.4.4/configure.patch
@@ -0,0 +1,117 @@
+--- cups-1.4.3/configure.orig	2010-04-08 11:14:19.092296014 +0200
++++ cups-1.4.3/configure	2010-04-08 11:19:02.661417938 +0200
+@@ -10940,114 +10940,6 @@
+     		OPTIM="-fPIC $OPTIM"
+ 	fi
+ 
+-	# The -fstack-protector option is available with some versions of
+-	# GCC and adds "stack canaries" which detect when the return address
+-	# has been overwritten, preventing many types of exploit attacks.
+-	{ echo "$as_me:$LINENO: checking if GCC supports -fstack-protector" >&5
+-echo $ECHO_N "checking if GCC supports -fstack-protector... $ECHO_C" >&6; }
+-	OLDCFLAGS="$CFLAGS"
+-	CFLAGS="$CFLAGS -fstack-protector"
+-	cat >conftest.$ac_ext <<_ACEOF
+-/* confdefs.h.  */
+-_ACEOF
+-cat confdefs.h >>conftest.$ac_ext
+-cat >>conftest.$ac_ext <<_ACEOF
+-/* end confdefs.h.  */
+-
+-int
+-main ()
+-{
+-
+-  ;
+-  return 0;
+-}
+-_ACEOF
+-rm -f conftest.$ac_objext conftest$ac_exeext
+-if { (ac_try="$ac_link"
+-case "(($ac_try" in
+-  *\"* | *\`* | *\\*) ac_try_echo=\$ac_try;;
+-  *) ac_try_echo=$ac_try;;
+-esac
+-eval "echo \"\$as_me:$LINENO: $ac_try_echo\"") >&5
+-  (eval "$ac_link") 2>conftest.er1
+-  ac_status=$?
+-  grep -v '^ *+' conftest.er1 >conftest.err
+-  rm -f conftest.er1
+-  cat conftest.err >&5
+-  echo "$as_me:$LINENO: \$? = $ac_status" >&5
+-  (exit $ac_status); } && {
+-	 test -z "$ac_c_werror_flag" ||
+-	 test ! -s conftest.err
+-       } && test -s conftest$ac_exeext &&
+-       $as_test_x conftest$ac_exeext; then
+-  OPTIM="$OPTIM -fstack-protector"
+-		{ echo "$as_me:$LINENO: result: yes" >&5
+-echo "${ECHO_T}yes" >&6; }
+-else
+-  echo "$as_me: failed program was:" >&5
+-sed 's/^/| /' conftest.$ac_ext >&5
+-
+-	{ echo "$as_me:$LINENO: result: no" >&5
+-echo "${ECHO_T}no" >&6; }
+-fi
+-
+-rm -f core conftest.err conftest.$ac_objext conftest_ipa8_conftest.oo \
+-      conftest$ac_exeext conftest.$ac_ext
+-	CFLAGS="$OLDCFLAGS"
+-
+-	# The -pie option is available with some versions of GCC and adds
+-	# randomization of addresses, which avoids another class of exploits
+-	# that depend on a fixed address for common functions.
+-	{ echo "$as_me:$LINENO: checking if GCC supports -pie" >&5
+-echo $ECHO_N "checking if GCC supports -pie... $ECHO_C" >&6; }
+-	OLDCFLAGS="$CFLAGS"
+-	CFLAGS="$CFLAGS -pie -fPIE"
+-	cat >conftest.$ac_ext <<_ACEOF
+-/* confdefs.h.  */
+-_ACEOF
+-cat confdefs.h >>conftest.$ac_ext
+-cat >>conftest.$ac_ext <<_ACEOF
+-/* end confdefs.h.  */
+-
+-int
+-main ()
+-{
+-
+-  ;
+-  return 0;
+-}
+-_ACEOF
+-rm -f conftest.$ac_objext
+-if { (ac_try="$ac_compile"
+-case "(($ac_try" in
+-  *\"* | *\`* | *\\*) ac_try_echo=\$ac_try;;
+-  *) ac_try_echo=$ac_try;;
+-esac
+-eval "echo \"\$as_me:$LINENO: $ac_try_echo\"") >&5
+-  (eval "$ac_compile") 2>conftest.er1
+-  ac_status=$?
+-  grep -v '^ *+' conftest.er1 >conftest.err
+-  rm -f conftest.er1
+-  cat conftest.err >&5
+-  echo "$as_me:$LINENO: \$? = $ac_status" >&5
+-  (exit $ac_status); } && {
+-	 test -z "$ac_c_werror_flag" ||
+-	 test ! -s conftest.err
+-       } && test -s conftest.$ac_objext; then
+-  PIEFLAGS="-pie -fPIE"
+-		{ echo "$as_me:$LINENO: result: yes" >&5
+-echo "${ECHO_T}yes" >&6; }
+-else
+-  echo "$as_me: failed program was:" >&5
+-sed 's/^/| /' conftest.$ac_ext >&5
+-
+-	{ echo "$as_me:$LINENO: result: no" >&5
+-echo "${ECHO_T}no" >&6; }
+-fi
+-
+-rm -f core conftest.err conftest.$ac_objext conftest.$ac_ext
+-	CFLAGS="$OLDCFLAGS"
+-
+ 	if test "x$with_optim" = x; then
+ 		# Add useful warning options for tracking down problems...
+ 		OPTIM="-Wall -Wno-format-y2k $OPTIM"
diff --git a/meta/recipes-extended/cups/cups-1.4.4/skip_tools.patch b/meta/recipes-extended/cups/cups-1.4.4/skip_tools.patch
new file mode 100644
index 0000000..2721101
--- /dev/null
+++ b/meta/recipes-extended/cups/cups-1.4.4/skip_tools.patch
@@ -0,0 +1,51 @@
+--- cups-1.4.3/ppdc/Makefile.orig	2010-04-07 12:38:56.650327699 +0200
++++ cups-1.4.3/ppdc/Makefile	2010-04-07 12:40:05.842418876 +0200
+@@ -243,8 +243,8 @@
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
+@@ -261,9 +261,9 @@
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
+@@ -291,15 +291,15 @@
+ 		$(COMMONLIBS) $(LIBZ)
+ 	echo Testing PPD importer...
+ 	$(RM) -r ppd ppd2 sample-import.drv
+-	./ppdc-static -I ../data sample.drv
+-	./ppdi-static -I ../data -o sample-import.drv ppd/*
+-	./ppdc-static -I ../data -d ppd2 sample-import.drv
+-	if diff -qr ppd ppd2; then \
+-		echo PPD import OK; \
+-	else \
+-		echo PPD import FAILED; \
+-		exit 1; \
+-	fi
++#	./ppdc-static -I ../data sample.drv
++#	./ppdi-static -I ../data -o sample-import.drv ppd/*
++#	./ppdc-static -I ../data -d ppd2 sample-import.drv
++#	if diff -qr ppd ppd2; then \
++#		echo PPD import OK; \
++#	else \
++#		echo PPD import FAILED; \
++#		exit 1; \
++#	fi
+ 
+ 
+ #
diff --git a/meta/recipes-extended/cups/cups-1.4.4/use_echo_only_in_init.patch b/meta/recipes-extended/cups/cups-1.4.4/use_echo_only_in_init.patch
new file mode 100644
index 0000000..21ff0e5
--- /dev/null
+++ b/meta/recipes-extended/cups/cups-1.4.4/use_echo_only_in_init.patch
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
index 0000000..748d89e
--- /dev/null
+++ b/meta/recipes-extended/cups/cups14.inc
@@ -0,0 +1,86 @@
+SUMMARY = "An Internet printing system for Unix."
+DESCRIPTION = "An Internet printing system for Unix."
+SECTION = "console/utils"
+LICENSE = "GPL LGPL"
+DEPENDS = "gnutls libpng jpeg dbus dbus-glib zlib"
+PROVIDES = "cups14"
+
+SRC_URI = "ftp://ftp.easysw.com/pub/cups/${PV}/cups-${PV}-source.tar.bz2"
+
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=956e7600195e6139f12de8c2a5bbefa9"
+
+LEAD_SONAME = "libcupsdriver.so"
+
+inherit autotools binconfig
+
+EXTRA_OECONF = " \
+                --enable-gnutls \
+		--enable-dbus \
+		--enable-browsing \
+                --disable-openssl \
+		--disable-tiff \
+		--without-php \
+		--without-perl \
+		--without-python \
+		--without-java \
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
+		    ${libdir}/cups/filter/.debug \
+		    ${libdir}/cups/monitor/.debug \
+		    ${libdir}/cups/notifier/.debug \
+		    ${libdir}/cups/daemon/.debug \
+		    "
+#package the html for the webgui inside the main packages (~1MB uncompressed)
+
+FILES_${PN} += "${datadir}/doc/cups/images \
+		${datadir}/doc/cups/*html \
+		${datadir}/doc/cups/*.css \
+                ${datadir}/icons/ \
+	       "
diff --git a/meta/recipes-extended/cups/cups_1.4.4.bb b/meta/recipes-extended/cups/cups_1.4.4.bb
new file mode 100644
index 0000000..ac9f21e
--- /dev/null
+++ b/meta/recipes-extended/cups/cups_1.4.4.bb
@@ -0,0 +1,17 @@
+require cups14.inc
+
+SRC_URI += " \
+	file://use_echo_only_in_init.patch \
+	file://skip_tools.patch \
+	file://configure.patch \
+	"
+
+SRC_URI[md5sum] = "8776403ad60fea9e85eab9c04d88560d"
+SRC_URI[sha256sum] = "d25ffa35add3abeeec0eba60be2cffc89425b649c64ef3a73dfc724683a59aa3"
+
+PR = "r0"
+
+DEFAULT_PREFERENCE = "-1"
+#DEPENDS += "virtual/libusb0"
+EXTRA_OECONF += " --disable-gssapi --disable-largefile --enable-debug --disable-relro --enable-libusb"
+CONFFILES_${PN} += "${sysconfdir}/cups/cupsd.conf"
-- 
1.7.0.4


