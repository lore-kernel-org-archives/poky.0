Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBF914C80050
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 03:14:46 -0600 (CST)
Received: by wye20 with SMTP id 20so4759363wye.35
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 01:14:45 -0800 (PST)
Received: by 10.216.168.82 with SMTP id j60mr9550933wel.47.1296378884254;
	Sun, 30 Jan 2011 01:14:44 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id m50sm10069438wek.32.2011.01.30.01.14.43
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 30 Jan 2011 01:14:43 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
Date: Sun, 30 Jan 2011 10:14:42 +0100
Message-Id: <5665B920-09DE-4E25-A246-4B2FA57B704A@dominion.thruhere.net>
References: <cover.1296372804.git.jingdong.lu@windriver.com>
	<a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
To: poky <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH 4/5] cups: add cups 1.4.6
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
X-List-Received-Date: Sun, 30 Jan 2011 09:14:47 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

FWIW, there's also a cleaned-up cups in meta-oe

Op 30 jan 2011, om 08:36 heeft Jingdong Lu het volgende geschreven:

> From: Jingdong Lu <jingdong.lu@windriver.com>
>=20
> This package has been added from Open Embedded.
> Changes from the Open Embedded version:
> * Update to version 1.4.6
> * Add SUMMARY, LIC_FILES_CHKSUM, checksum of source
> * Remove skip_tools.patch
> * Remove fakeroot and rename libusb0 to libusb for dependence.
>=20
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
> .../cups/cups-1.4.6/configure.patch                |  117 =
++++++++++++++++++++
> .../cups/cups-1.4.6/use_echo_only_in_init.patch    |   11 ++
> meta/recipes-extended/cups/cups.inc                |   88 =
+++++++++++++++
> meta/recipes-extended/cups/cups_1.4.6.bb           |   17 +++
> 4 files changed, 233 insertions(+), 0 deletions(-)
> create mode 100644 =
meta/recipes-extended/cups/cups-1.4.6/configure.patch
> create mode 100644 =
meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
> create mode 100644 meta/recipes-extended/cups/cups.inc
> create mode 100644 meta/recipes-extended/cups/cups_1.4.6.bb
>=20
> diff --git a/meta/recipes-extended/cups/cups-1.4.6/configure.patch =
b/meta/recipes-extended/cups/cups-1.4.6/configure.patch
> new file mode 100644
> index 0000000..877e8d3
> --- /dev/null
> +++ b/meta/recipes-extended/cups/cups-1.4.6/configure.patch
> @@ -0,0 +1,117 @@
> +--- cups-1.4.3/configure.orig	2010-04-08 11:14:19.092296014 =
+0200
> ++++ cups-1.4.3/configure	2010-04-08 11:19:02.661417938 +0200
> +@@ -10940,114 +10940,6 @@
> +     		OPTIM=3D"-fPIC $OPTIM"
> + 	fi
> +=20
> +-	# The -fstack-protector option is available with some versions =
of
> +-	# GCC and adds "stack canaries" which detect when the return =
address
> +-	# has been overwritten, preventing many types of exploit =
attacks.
> +-	{ echo "$as_me:$LINENO: checking if GCC supports =
-fstack-protector" >&5
> +-echo $ECHO_N "checking if GCC supports -fstack-protector... $ECHO_C" =
>&6; }
> +-	OLDCFLAGS=3D"$CFLAGS"
> +-	CFLAGS=3D"$CFLAGS -fstack-protector"
> +-	cat >conftest.$ac_ext <<_ACEOF
> +-/* confdefs.h.  */
> +-_ACEOF
> +-cat confdefs.h >>conftest.$ac_ext
> +-cat >>conftest.$ac_ext <<_ACEOF
> +-/* end confdefs.h.  */
> +-
> +-int
> +-main ()
> +-{
> +-
> +-  ;
> +-  return 0;
> +-}
> +-_ACEOF
> +-rm -f conftest.$ac_objext conftest$ac_exeext
> +-if { (ac_try=3D"$ac_link"
> +-case "(($ac_try" in
> +-  *\"* | *\`* | *\\*) ac_try_echo=3D\$ac_try;;
> +-  *) ac_try_echo=3D$ac_try;;
> +-esac
> +-eval "echo \"\$as_me:$LINENO: $ac_try_echo\"") >&5
> +-  (eval "$ac_link") 2>conftest.er1
> +-  ac_status=3D$?
> +-  grep -v '^ *+' conftest.er1 >conftest.err
> +-  rm -f conftest.er1
> +-  cat conftest.err >&5
> +-  echo "$as_me:$LINENO: \$? =3D $ac_status" >&5
> +-  (exit $ac_status); } && {
> +-	 test -z "$ac_c_werror_flag" ||
> +-	 test ! -s conftest.err
> +-       } && test -s conftest$ac_exeext &&
> +-       $as_test_x conftest$ac_exeext; then
> +-  OPTIM=3D"$OPTIM -fstack-protector"
> +-		{ echo "$as_me:$LINENO: result: yes" >&5
> +-echo "${ECHO_T}yes" >&6; }
> +-else
> +-  echo "$as_me: failed program was:" >&5
> +-sed 's/^/| /' conftest.$ac_ext >&5
> +-
> +-	{ echo "$as_me:$LINENO: result: no" >&5
> +-echo "${ECHO_T}no" >&6; }
> +-fi
> +-
> +-rm -f core conftest.err conftest.$ac_objext =
conftest_ipa8_conftest.oo \
> +-      conftest$ac_exeext conftest.$ac_ext
> +-	CFLAGS=3D"$OLDCFLAGS"
> +-
> +-	# The -pie option is available with some versions of GCC and =
adds
> +-	# randomization of addresses, which avoids another class of =
exploits
> +-	# that depend on a fixed address for common functions.
> +-	{ echo "$as_me:$LINENO: checking if GCC supports -pie" >&5
> +-echo $ECHO_N "checking if GCC supports -pie... $ECHO_C" >&6; }
> +-	OLDCFLAGS=3D"$CFLAGS"
> +-	CFLAGS=3D"$CFLAGS -pie -fPIE"
> +-	cat >conftest.$ac_ext <<_ACEOF
> +-/* confdefs.h.  */
> +-_ACEOF
> +-cat confdefs.h >>conftest.$ac_ext
> +-cat >>conftest.$ac_ext <<_ACEOF
> +-/* end confdefs.h.  */
> +-
> +-int
> +-main ()
> +-{
> +-
> +-  ;
> +-  return 0;
> +-}
> +-_ACEOF
> +-rm -f conftest.$ac_objext
> +-if { (ac_try=3D"$ac_compile"
> +-case "(($ac_try" in
> +-  *\"* | *\`* | *\\*) ac_try_echo=3D\$ac_try;;
> +-  *) ac_try_echo=3D$ac_try;;
> +-esac
> +-eval "echo \"\$as_me:$LINENO: $ac_try_echo\"") >&5
> +-  (eval "$ac_compile") 2>conftest.er1
> +-  ac_status=3D$?
> +-  grep -v '^ *+' conftest.er1 >conftest.err
> +-  rm -f conftest.er1
> +-  cat conftest.err >&5
> +-  echo "$as_me:$LINENO: \$? =3D $ac_status" >&5
> +-  (exit $ac_status); } && {
> +-	 test -z "$ac_c_werror_flag" ||
> +-	 test ! -s conftest.err
> +-       } && test -s conftest.$ac_objext; then
> +-  PIEFLAGS=3D"-pie -fPIE"
> +-		{ echo "$as_me:$LINENO: result: yes" >&5
> +-echo "${ECHO_T}yes" >&6; }
> +-else
> +-  echo "$as_me: failed program was:" >&5
> +-sed 's/^/| /' conftest.$ac_ext >&5
> +-
> +-	{ echo "$as_me:$LINENO: result: no" >&5
> +-echo "${ECHO_T}no" >&6; }
> +-fi
> +-
> +-rm -f core conftest.err conftest.$ac_objext conftest.$ac_ext
> +-	CFLAGS=3D"$OLDCFLAGS"
> +-
> + 	if test "x$with_optim" =3D x; then
> + 		# Add useful warning options for tracking down =
problems...
> + 		OPTIM=3D"-Wall -Wno-format-y2k $OPTIM"
> diff --git =
a/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch =
b/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
> new file mode 100644
> index 0000000..21ff0e5
> --- /dev/null
> +++ =
b/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
> @@ -0,0 +1,11 @@
> +--- a/init/cups.sh.in.orig	2008-10-04 16:50:46.000000000 -0300
> ++++ b/init/cups.sh.in	2008-10-04 16:51:39.000000000 -0300
> +@@ -68,7 +68,7 @@
> + 		ECHO_ERROR=3D:
> + 		;;
> +=20
> +-	Linux*)
> ++	DISABLELinux*)
> + 		IS_ON=3D/bin/true
> + 		if test -f /etc/init.d/functions; then
> + 			. /etc/init.d/functions
> diff --git a/meta/recipes-extended/cups/cups.inc =
b/meta/recipes-extended/cups/cups.inc
> new file mode 100644
> index 0000000..c4fec42
> --- /dev/null
> +++ b/meta/recipes-extended/cups/cups.inc
> @@ -0,0 +1,88 @@
> +SUMMARY =3D "An Internet printing system for Unix"
> +DESCRIPTION =3D "CUPS is a standards-based, open source printing =
system \
> +developed by Apple Inc. for Mac OS=AE X and other UNIX=AE-like =
operating systems.\
> +CUPS uses the Internet Printing Protocol ("IPP") and provides System =
V and Berkeley \
> +command-line interfaces, a web interface, and a C API to manage =
printers and \
> +print jobs."
> +SECTION =3D "console/utils"
> +LICENSE =3D "GPL LGPL"
> +DEPENDS =3D "gnutls libpng jpeg dbus dbus-glib zlib"
> +PROVIDES =3D "cups"
> +
> +SRC_URI =3D =
"ftp://ftp.easysw.com/pub/cups/${PV}/cups-${PV}-source.tar.bz2"
> +
> +LEAD_SONAME =3D "libcupsdriver.so"
> +
> +inherit autotools binconfig
> +
> +EXTRA_OECONF =3D " \
> +                --enable-gnutls \
> +		--enable-dbus \
> +		--enable-browsing \
> +                --disable-openssl \
> +		--disable-tiff \
> +		--without-php \
> +		--without-perl \
> +		--without-python \
> +		--without-java \
> +               "
> +
> +
> +do_configure() {
> +	gnu-configize
> +	libtoolize --force
> +	DSOFLAGS=3D"${LDFLAGS}" oe_runconf
> +}
> +
> +do_compile () {
> +	sed -i s:STRIP:NOSTRIP: Makedefs
> +	sed -i s:serial:: backend/Makefile
> +
> +	echo "all:"    >  man/Makefile
> +	echo "libs:" >> man/Makefile
> +	echo "install:" >> man/Makefile
> +	echo "install-data:" >> man/Makefile
> +	echo "install-exec:" >> man/Makefile
> +	echo "install-headers:" >> man/Makefile
> +	echo "install-libs:" >> man/Makefile
> +
> +	oe_runmake "SSLLIBS=3D-lgnutls -L${STAGING_LIBDIR}" \
> +		   "LIBPNG=3D-lpng -lm -L${STAGING_LIBDIR}" \
> +		   "LIBJPEG=3D-ljpeg -L${STAGING_LIBDIR}" \
> +		   "LIBZ=3D-lz -L${STAGING_LIBDIR}" \
> +		   "-I."
> +}
> +
> +do_install () {
> +	oe_runmake "DSTROOT=3D${D}" install
> +
> +	# This directory gets installed with perms 511, which makes =
packaging fail
> +	chmod 0711 "${D}/${localstatedir}/run/cups/certs"
> +}
> +
> +python do_package_append() {
> +	# Change permissions back the way they were, they probably had a =
reason...
> +	workdir =3D bb.data.getVar('WORKDIR', d, 1)
> +	os.system('chmod 0511 %s/install/cups/var/run/cups/certs' % =
workdir)
> +}
> +
> +PACKAGES =3D+ "${PN}-lib ${PN}-libimage"
> +
> +FILES_${PN}-lib =3D "${libdir}/libcups.so.*"
> +
> +FILES_${PN}-libimage =3D "${libdir}/libcupsimage.so.*"
> +
> +FILES_${PN}-dbg +=3D "${libdir}/cups/backend/.debug \
> +                    ${libdir}/cups/cgi-bin/.debug \
> +		    ${libdir}/cups/filter/.debug \
> +		    ${libdir}/cups/monitor/.debug \
> +		    ${libdir}/cups/notifier/.debug \
> +		    ${libdir}/cups/daemon/.debug \
> +		    "
> +#package the html for the webgui inside the main packages (~1MB =
uncompressed)
> +
> +FILES_${PN} +=3D "${datadir}/doc/cups/images \
> +		${datadir}/doc/cups/*html \
> +		${datadir}/doc/cups/*.css \
> +                ${datadir}/icons/ \
> +	       "
> diff --git a/meta/recipes-extended/cups/cups_1.4.6.bb =
b/meta/recipes-extended/cups/cups_1.4.6.bb
> new file mode 100644
> index 0000000..8c83160
> --- /dev/null
> +++ b/meta/recipes-extended/cups/cups_1.4.6.bb
> @@ -0,0 +1,17 @@
> +require cups.inc
> +
> +SRC_URI +=3D " \
> +	file://use_echo_only_in_init.patch \
> +	file://configure.patch \
> +	"
> +PR =3D "r0"
> +
> +LIC_FILES_CHKSUM =3D =
"file://LICENSE.txt;md5=3D956e7600195e6139f12de8c2a5bbefa9"
> +
> +SRC_URI[md5sum] =3D "de8fb5a29c36554925c0c6a6e2c0dae1"
> +SRC_URI[sha256sum] =3D =
"f08711702a77b52c7150f96fe1f45482f6151cb95ef601268c528607fe6ad514"
> +
> +DEFAULT_PREFERENCE =3D "-1"
> +DEPENDS +=3D "libusb"
> +EXTRA_OECONF +=3D " --disable-gssapi --disable-largefile =
--enable-debug --disable-relro --enable-libusb"
> +CONFFILES_${PN} +=3D "${sysconfdir}/cups/cupsd.conf"
> --=20
> 1.7.0.4
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


