Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7492E4C81260
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 23:50:33 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0S5oXwn020452
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 21:50:33 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:32 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:32 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu, 27 Jan 2011 23:46:27 -0600
Message-Id: <a54489c90cc6f206073b5f04f234db63d5fece51.1296193457.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296193457.git.mark.hatle@windriver.com>
References: <cover.1296193457.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296193457.git.mark.hatle@windriver.com>
References: <cover.1296193457.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 28 Jan 2011 05:50:32.0341 (UTC)
	FILETIME=[469C8C50:01CBBEAF]
Subject: [PATCH 1/3] rpm: Uprev to RPM 5.4.0
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
X-List-Received-Date: Fri, 28 Jan 2011 05:50:33 -0000

Update RPM to the latest release, RPM 5.4.0.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package.bbclass                       |    2 +-
 meta/classes/package_rpm.bbclass                   |    5 +-
 meta/classes/rootfs_rpm.bbclass                    |   17 +-
 meta/conf/distro/include/as-needed.inc             |    3 +-
 meta/recipes-devtools/rpm/rpm/rpm-autogen.patch    |   54 +++
 meta/recipes-devtools/rpm/rpm/rpm-libsql-fix.patch |   18 +
 meta/recipes-devtools/rpm/rpm/rpm2cpio             |   51 +++
 meta/recipes-devtools/rpm/rpm_5.1.10.bb            |  168 --------
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |  432 ++++++++++++++++++++
 9 files changed, 571 insertions(+), 179 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-autogen.patch
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-libsql-fix.patch
 create mode 100755 meta/recipes-devtools/rpm/rpm/rpm2cpio
 delete mode 100644 meta/recipes-devtools/rpm/rpm_5.1.10.bb
 create mode 100644 meta/recipes-devtools/rpm/rpm_5.4.0.bb

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 1b950bb..7e1f3f0 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -559,7 +559,7 @@ if [ x"$D" = "x" ]; then
 fi
 }
 
-RPMDEPS = "${STAGING_LIBDIR_NATIVE}/rpm/rpmdeps"
+RPMDEPS = "${STAGING_LIBDIR_NATIVE}/rpm/bin/rpmdeps"
 
 # Collect perfile run-time dependency metadata
 # Output:
diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index fbe0626..7c2cdb0 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -46,8 +46,7 @@ package_update_index_rpm () {
 				-D "_dbpath $pkgdir/solvedb" --justdb \
 				--noaid --nodeps --noorder --noscripts --notriggers --noparentdirs --nolinktos --stats \
 				--ignoresize --nosignature --nodigest \
-				-D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" \
-				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
+				-D "__dbi_txn create nofsync" \
 				$pkgdir/solvedb/manifest
 			echo $pkgdir/solvedb >> ${DEPLOY_DIR_RPM}/solvedb.conf
 		fi
@@ -530,6 +529,8 @@ python do_package_rpm () {
 	cmd = cmd + " --define '_use_internal_dependency_generator 0'"
 	cmd = cmd + " --define '__find_requires " + outdepends + "'"
 	cmd = cmd + " --define '__find_provides " + outprovides + "'"
+	cmd = cmd + " --define '_unpackaged_files_terminate_build 0'"
+	cmd = cmd + " --define 'debug_package %{nil}'"
 	cmd = cmd + " -bb " + outspecfile
 
 	# Build the spec file!
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 8646eec..6be7886 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -79,7 +79,7 @@ fakeroot rootfs_rpm_do_rootfs () {
 	# Generate an install solution by doing a --justdb install, then recreate it with
 	# an actual package install!
 	${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
-		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
+		-D "__dbi_txn create nofsync" \
 		-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
 		${IMAGE_ROOTFS}/install/install.manifest
 
@@ -94,7 +94,7 @@ fakeroot rootfs_rpm_do_rootfs () {
 			fi
 			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_rootfs_attemptonly.${PID}"
 			${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
-				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
+				-D "__dbi_txn create nofsync private" \
 				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
 			$pkg_name >> "${WORKDIR}/temp/log.do_rootfs_attemptonly.${PID}" || true
 		done
@@ -112,6 +112,7 @@ fakeroot rootfs_rpm_do_rootfs () {
 	 while [ $loop -eq 1 ]; do
 		# Dump the full set of recommends...
 		${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
+			-D "__dbi_txn create nofsync private" \
 			-qa --qf "[%{RECOMMENDS}\n]" | sort -u > ${IMAGE_ROOTFS}/install/recommend
 		# Did we add more to the list?
 		grep -v -x -F -f ${IMAGE_ROOTFS}/install/recommend.list ${IMAGE_ROOTFS}/install/recommend > ${IMAGE_ROOTFS}/install/recommend.new || true
@@ -129,7 +130,7 @@ fakeroot rootfs_rpm_do_rootfs () {
 			fi
 			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_rootfs_recommend.${PID}"
 			${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
-				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
+				-D "__dbi_txn create nofsync private" \
 				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
 				$pkg_name >> "${WORKDIR}/temp/log.do_rootfs_recommend.${PID}" 2>&1 || true
 		done
@@ -142,12 +143,13 @@ fakeroot rootfs_rpm_do_rootfs () {
 	# Now that we have a solution, pull out a list of what to install...
 	echo "Manifest: ${IMAGE_ROOTFS}/install/install.manifest"
 	${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -qa --yaml \
+		-D "__dbi_txn create nofsync private" \
 		| grep -i 'Packageorigin' | cut -d : -f 2 > ${IMAGE_ROOTFS}/install/install_solution.manifest
 
 	# Attempt install
 	${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}" \
 		--noscripts --notriggers --noparentdirs --nolinktos \
-		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
+		-D "__dbi_txn create nofsync private" \
 		-Uhv ${IMAGE_ROOTFS}/install/install_solution.manifest
 
 	export D=${IMAGE_ROOTFS}
@@ -159,6 +161,7 @@ fakeroot rootfs_rpm_do_rootfs () {
 
 	mkdir -p ${IMAGE_ROOTFS}/etc/rpm-postinsts/
 	${RPM} --root ${IMAGE_ROOTFS} -D '_dbpath ${rpmlibdir}' -qa \
+		-D "__dbi_txn create nofsync private" \
 		--qf 'Name: %{NAME}\n%|POSTIN?{postinstall scriptlet%|POSTINPROG?{ (using %{POSTINPROG})}|:\n%{POSTIN}\n}:{%|POSTINPROG?{postinstall program: %{POSTINPROG}\n}|}|' \
 		> ${IMAGE_ROOTFS}/etc/rpm-postinsts/combined
 	awk -f ${AWKPOSTINSTSCRIPT} < ${IMAGE_ROOTFS}/etc/rpm-postinsts/combined
@@ -246,7 +249,7 @@ resolve_package() {
 	pkg="$1"
 	pkg_name=""
 	for solve in `cat ${DEPLOY_DIR_RPM}/solvedb.conf`; do
-		pkg_name=$(${RPM} -D "_dbpath $solve" -D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" -q --yaml $pkg | grep -i 'Packageorigin' | cut -d : -f 2)
+		pkg_name=$(${RPM} -D "_dbpath $solve" -D "__dbi_txn create nofsync" -q --yaml $pkg | grep -i 'Packageorigin' | cut -d : -f 2)
 		if [ -n "$pkg_name" ]; then
 			break;
 		fi
@@ -260,7 +263,7 @@ install_all_locales() {
 	# Generate list of installed packages...
 	INSTALLED_PACKAGES=$( \
 		${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}" \
-		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
+		-D "__dbi_txn create nofsync private" \
 		-qa --qf "[%{NAME}\n]" | egrep -v -- "(-locale-|-dev$|-doc$|^kernel|^glibc|^ttf|^task|^perl|^python)" \
 	)
 
@@ -271,8 +274,8 @@ install_all_locales() {
 			pkg_name=$(resolve_package $pkg-locale-$lang)
 			if [ -n "$pkg_name" ]; then
 				${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}" \
+					-D "__dbi_txn create nofsync private" \
 					--noscripts --notriggers --noparentdirs --nolinktos \
-					-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
 					-Uhv $pkg_name || true
 			fi
 		done
diff --git a/meta/conf/distro/include/as-needed.inc b/meta/conf/distro/include/as-needed.inc
index e962619..9d2056e 100644
--- a/meta/conf/distro/include/as-needed.inc
+++ b/meta/conf/distro/include/as-needed.inc
@@ -11,5 +11,6 @@ ASNEEDED_pn-pciutils = ""
 ASNEEDED_pn-puzzles = ""
 ASNEEDED_pn-dialer = ""
 ASNEEDED_pn-pulseaudio = ""
+ASNEEDED_pn-rpm = ""
 
-TARGET_LDFLAGS += "${ASNEEDED}"
\ No newline at end of file
+TARGET_LDFLAGS += "${ASNEEDED}"
diff --git a/meta/recipes-devtools/rpm/rpm/rpm-autogen.patch b/meta/recipes-devtools/rpm/rpm/rpm-autogen.patch
new file mode 100644
index 0000000..323bb71
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm-autogen.patch
@@ -0,0 +1,54 @@
+Remove the sanity checking from the rpm autogen.sh.  This is required because
+we may have slightly different, but yet compatible versions.  If we do end
+up breaking things, we'll deal with it at that time.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+diff -ur rpm-5.4.0.orig/autogen.sh rpm-5.4.0/autogen.sh
+--- rpm-5.4.0.orig/autogen.sh	2010-11-02 11:55:53.000000000 -0500
++++ rpm-5.4.0/autogen.sh	2011-01-06 00:15:05.158946295 -0600
+@@ -34,12 +34,6 @@
+     eval $_libtoolize $_libtoolize_args
+ }
+ 
+-#   requirements sanity check
+-[ "`automake   --version | head -1`" != "$AMV" ] && echo "$USAGE" # && exit 1
+-[ "`autoconf   --version | head -1`" != "$ACV" ] && echo "$USAGE" # && exit 1
+-[ "`libtoolize --version | head -1`" != "$LTV" ] && echo "$USAGE" # && exit 1
+-[ "`gettextize --version | head -1 | sed -e 's;^.*/\\(gettextize\\);\\1;'`" != "$GTT" ] && echo "$USAGE" # && exit 1
+-
+ for dir in bash beecrypt file neon pcre popt rc syck xar xz; do
+ 
+   if [ -d $dir ]; then
+diff -ur rpm-5.4.0.orig/neon/autogen.sh rpm-5.4.0/neon/autogen.sh
+--- rpm-5.4.0.orig/neon/autogen.sh	2010-10-30 19:11:33.000000000 -0500
++++ rpm-5.4.0/neon/autogen.sh	2011-01-06 00:15:17.863962139 -0600
+@@ -34,12 +34,6 @@
+     eval $_libtoolize $_libtoolize_args
+ }
+ 
+-#   requirements sanity check
+-[ "`automake   --version | head -1`" != "$AMV" ] && echo "$USAGE" # && exit 1
+-[ "`autoconf   --version | head -1`" != "$ACV" ] && echo "$USAGE" # && exit 1
+-[ "`libtoolize --version | head -1`" != "$LTV" ] && echo "$USAGE" # && exit 1
+-[ "`gettextize --version | head -1 | sed -e 's;^.*/\\(gettextize\\);\\1;'`" != "$GTT" ] && echo "$USAGE" # && exit 1
+-
+ echo "---> generate files via GNU libtool (libtoolize)"
+ libtoolize --quiet --copy --force --install
+ echo "---> generate files via GNU autoconf (aclocal, autoheader)"
+diff -ur rpm-5.4.0.orig/syck/autogen.sh rpm-5.4.0/syck/autogen.sh
+--- rpm-5.4.0.orig/syck/autogen.sh	2010-11-02 11:55:56.000000000 -0500
++++ rpm-5.4.0/syck/autogen.sh	2011-01-06 00:15:27.103949601 -0600
+@@ -34,12 +34,6 @@
+     eval $_libtoolize $_libtoolize_args
+ }
+ 
+-#   requirements sanity check
+-[ "`automake   --version | head -1`" != "$AMV" ] && echo "$USAGE" # && exit 1
+-[ "`autoconf   --version | head -1`" != "$ACV" ] && echo "$USAGE" # && exit 1
+-[ "`libtoolize --version | head -1`" != "$LTV" ] && echo "$USAGE" # && exit 1
+-[ "`gettextize --version | head -1 | sed -e 's;^.*/\\(gettextize\\);\\1;'`" != "$GTT" ] && echo "$USAGE" # && exit 1
+-
+ echo "---> generate files via GNU libtool (libtoolize)"
+ libtoolize --quiet --copy --force --install
+ echo "---> generate files via GNU autoconf (aclocal, autoheader)"
diff --git a/meta/recipes-devtools/rpm/rpm/rpm-libsql-fix.patch b/meta/recipes-devtools/rpm/rpm/rpm-libsql-fix.patch
new file mode 100644
index 0000000..829399c
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm-libsql-fix.patch
@@ -0,0 +1,18 @@
+During installation, the libtool relink attempts to link to -lrpm...
+The problem is that it hasn't been installed yet!  So small change causes
+the libtool to instead use the build version.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+--- rpm-5.4.0/lib/Makefile.am.orig
++++ rpm-5.4.0/lib/Makefile.am
+@@ -90,6 +90,9 @@
+ libsql_la_SOURCES	= libsql.c
+ libsql_la_LIBADD	= librpm.la $(RPMDB_LDADD_COMMON)
+ 
++# pkglib libraries needs to have usrlib libraries already installed!
++install-pkglibLTLIBRARIES: install-usrlibLTLIBRARIES
++
+ install-data-hook:
+ if !ENABLE_BUILD_LAFILES
+ 	-for l in $(usrlib_LTLIBRARIES); do \
diff --git a/meta/recipes-devtools/rpm/rpm/rpm2cpio b/meta/recipes-devtools/rpm/rpm/rpm2cpio
new file mode 100755
index 0000000..00c4ec5
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm2cpio
@@ -0,0 +1,51 @@
+#!/bin/sh
+
+pkg=$1
+if [ "$pkg" = "" -o ! -e "$pkg" ]; then
+    echo "no package supplied" 1>&2
+   exit 1
+fi
+
+leadsize=96
+o=`expr $leadsize + 8`
+set `od -j $o -N 8 -t u1 $pkg`
+il=`expr 256 \* \( 256 \* \( 256 \* $2 + $3 \) + $4 \) + $5`
+dl=`expr 256 \* \( 256 \* \( 256 \* $6 + $7 \) + $8 \) + $9`
+# echo "sig il: $il dl: $dl"
+
+sigsize=`expr 8 + 16 \* $il + $dl`
+o=`expr $o + $sigsize + \( 8 - \( $sigsize \% 8 \) \) \% 8 + 8`
+set `od -j $o -N 8 -t u1 $pkg`
+il=`expr 256 \* \( 256 \* \( 256 \* $2 + $3 \) + $4 \) + $5`
+dl=`expr 256 \* \( 256 \* \( 256 \* $6 + $7 \) + $8 \) + $9`
+# echo "hdr il: $il dl: $dl"
+
+hdrsize=`expr 8 + 16 \* $il + $dl`
+o=`expr $o + $hdrsize`
+EXTRACTOR="dd if=$pkg ibs=$o skip=1"
+
+COMPRESSION=`($EXTRACTOR |file -) 2>/dev/null`
+if echo $COMPRESSION |grep -q gzip; then
+	DECOMPRESSOR=gunzip
+elif echo $COMPRESSION |grep -q bzip2; then
+	DECOMPRESSOR=bunzip2
+elif echo $COMPRESSION |grep -q xz; then
+	DECOMPRESSOR=unxz
+elif echo $COMPRESSION |grep -q cpio; then
+	DECOMPRESSOR=cat
+else
+	# Most versions of file don't support LZMA, therefore we assume
+	# anything not detected is LZMA
+	DECOMPRESSOR=`which unlzma 2>/dev/null`
+	case "$DECOMPRESSOR" in
+	    /* ) ;;
+	    *  ) DECOMPRESSOR=`which lzmash 2>/dev/null`
+	         case "$DECOMPRESSOR" in
+	             /* ) DECOMPRESSOR="lzmash -d -c" ;;
+	             *  ) DECOMPRESSOR=cat ;;
+	         esac
+	         ;;
+	esac
+fi
+
+$EXTRACTOR 2>/dev/null | $DECOMPRESSOR
diff --git a/meta/recipes-devtools/rpm/rpm_5.1.10.bb b/meta/recipes-devtools/rpm/rpm_5.1.10.bb
deleted file mode 100644
index b9ba8db..0000000
--- a/meta/recipes-devtools/rpm/rpm_5.1.10.bb
+++ /dev/null
@@ -1,168 +0,0 @@
-DESCRIPTION = "The RPM Package Manager - relaunched"
-DESCRIPTION_rpm-build = "The RPM Package Manager rpmbuild and related commands."
-HOMEPAGE = "http://rpm5.org/"
-LICENSE = "LGPL 2.1"
-LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
-
-DEPENDS = "zlib perl popt beecrypt python libpcre elfutils"
-PR = "r8"
-
-SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.1/POKY/${BPN}-${PV}.tar.gz \
-           file://hdraddorappend.patch \
-           file://export-rpmbag-h.patch \
-	   file://rpm-nrescan.patch \
-	   file://rpm-autoconf.patch \
-	   file://remove-compiled-tests.patch;apply=no \
-	   file://perfile_rpmdeps.sh \
-	   file://rpm-no-loop.patch \
-	  "
-
-SRC_URI[md5sum] = "a5deb83b451f11c04461c630937b1189"
-SRC_URI[sha256sum] = "701726a6ae8283fcabc308dae523ad9599388296a562db1b3d7d7c871641af7e"
-inherit autotools gettext
-
-acpaths = "-I ${S}/db/dist/aclocal -I ${S}/db/dist/aclocal_java"
-
-# Specify the default rpm macros in terms of adjustable variables
-rpm_macros = "%{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:~/.oerpmmacros"
-
-EXTRA_OECONF = "--with-python=${PYTHON_BASEVERSION} \
-		--with-python-inc-dir=${STAGING_INCDIR}/python${PYTHON_BASEVERSION} \
-		--with-python-lib-dir=${libdir}/python${PYTHON_BASEVERSION} \
-		--with-db=internal \
-		--with-db-tools-integrated \
-		--with-libelf \
-		--with-file=internal \
-		--without-apidocs \
-		--without-selinux \
-		--without-lua \
-		--without-dmalloc \
-		--without-efence \
-		--without-neon \
-		--with-pcre=internal \
-		--with-path-macros=${rpm_macros} \
-		--with-bugreport=http://bugzilla.pokylinux.org"
-
-CFLAGS_append = " -DRPM_VENDOR_WINDRIVER"
-
-PACKAGES =+ "rpm-build python-rpm python-rpm-dbg"
-
-SOLIBS = "5.0.so"
-
-FILES_rpm-build = "${bindir}/*-rpmbuild \
-		${bindir}/*-gendiff \
-		${bindir}/*-rpmspecdump \
-		${libdir}/rpm/helpers/* \
-		${libdir}/rpm/*brp* \
-		${libdir}/rpm/*check-files \
-		${libdir}/rpm/*cross-build \
-		${libdir}/rpm/*debugedit \
-		${libdir}/rpm/*dep* \
-		${libdir}/rpm/*prov* \
-		${libdir}/rpm/*req* \
-		${libdir}/rpm/*find* \
-		${libdir}/rpm/qf/* \
-		"
-
-FILES_python-rpm = "${libdir}/python*/rpm/_*"
-FILES_python-rpm-dbg = "${libdir}/python*/rpm/.debug/_*"
-
-# The mutex needs to be POSIX/pthreads/library or we can't
-# share a database between host and target environments
-# (there is a minor performance penalty, but not one great enough
-#  to justify the pain of a more optimized approach!)
-EXTRA_OECONF += "--with-mutex=POSIX/pthreads/library"
-
-do_configure() {
-	# Manually run through the steps of the autogen.sh
-	( cd pcre
-	  libtoolize --quiet --copy --force --install
-	  aclocal
-	  autoheader
-	  automake -Wall -Wno-override -a -c
-	  autoconf
-	)
-
-	( cd xz
-	  autopoint -f
-	  rm -f \
-	        codeset.m4 \
-	        glibc2.m4 \
-	        glibc21.m4 \
-	        intdiv0.m4 \
-	        intl.m4 \
-	        intldir.m4 \
-	        intmax.m4 \
-	        inttypes-pri.m4 \
-	        inttypes_h.m4 \
-	        lcmessage.m4 \
-	        lock.m4 \
-	        longdouble.m4 \
-	        longlong.m4 \
-	        printf-posix.m4 \
-	        size_max.m4 \
-	        stdint_h.m4 \
-	        uintmax_t.m4 \
-	        ulonglong.m4 \
-	        visibility.m4 \
-	        wchar_t.m4 \
-	        wint_t.m4 \
-	        xsize.m4
-	  libtoolize -c -f || glibtoolize -c -f
-	  aclocal -I m4
-	  autoconf
-	  autoheader
-	  automake -acf --foreign
-	)
-
-	( cd file
-	  libtoolize --quiet --copy --force --install
-	  aclocal
-	  autoheader
-	  automake -Wall -Wno-override -a -c
-	  autoconf
-	)
-
-	(cd syck
-	  libtoolize --quiet --copy --force --install
-	  aclocal
-	  autoheader
-	  automake -Wall -Wno-override -a -c
-	  autoconf
-	)
-
-	(cd xar
-	  libtoolize --quiet --copy --force --install
-	  aclocal
-	  autoheader
-	  automake -Wall -Wno-override -a -c
-	  autoconf
-	)
-
-	rm -rf autom4te.cache || true
-	libtoolize --quiet --copy --force --install
-	autopoint --force
-	rm -f aclocal.m4
-	aclocal -I m4
-	autoheader -I m4
-	automake -Wall -Wno-override -a -c
-	autoconf -I m4
-	# end of autogen.sh steps
-
-	export ac_cv_va_copy=C99
-	oe_runconf
-}
-
-do_install_append() {
-	sed -i -e 's,%__check_files,#%%__check_files,' ${D}/${libdir}/rpm/macros
-	sed -i -e 's,%__scriptlet_requires,#%%__scriptlet_requires,' ${D}/${libdir}/rpm/macros
-	sed -i -e 's,%__perl_provides,#%%__perl_provides,' ${D}/${libdir}/rpm/macros
-	sed -i -e 's,%__perl_requires,#%%__perl_requires,' ${D}/${libdir}/rpm/macros
-
-	# Enable Debian style arbitrary tags...
-	sed -i -e 's,%_arbitrary_tags[^_].*,%_arbitrary_tags %{_arbitrary_tags_debian},' ${D}/${libdir}/rpm/macros
-
-	install -m 0755 ${WORKDIR}/perfile_rpmdeps.sh ${D}/${libdir}/rpm/perfile_rpmdeps.sh
-}
-
-BBCLASSEXTEND = "native"
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
new file mode 100644
index 0000000..541fb60
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -0,0 +1,432 @@
+SUMMARY = "The RPM package management system"
+DESCRIPTION = "The RPM Package Manager (RPM) is a powerful command line driven \
+package management system capable of installing, uninstalling, \
+verifying, querying, and updating software packages. Each software \
+package consists of an archive of files along with information about \
+the package like its version, a description, etc."
+
+SUMMARY_${PN}-libs = "Libraries for manipulating RPM packages."
+DESCRIPTION_${PN}-libs = "This package contains the RPM shared libraries."
+
+SUMMARY_${PN}-dev = "Development files for manipulating RPM packages."
+DESCRIPTION_${PN}-dev = "This package contains the RPM C library and header files. These \
+development files will simplify the process of writing programs that \
+manipulate RPM packages and databases. These files are intended to \
+simplify the process of creating graphical package managers or any \
+other tools that need an intimate knowledge of RPM packages in order \
+to function."
+
+SUMMARY_${PN}-common = "Common RPM paths, scripts, documentation and configuration."
+DESCRIPTION_${PN}-common = "The rpm-common package contains paths, scripts, documentation \
+and configuration common between RPM Package Manager."
+
+SUMMARY_${PN}-build = "Scripts and executable programs used to build packages."
+DESCRIPTION_${PN}-build = "The rpm-build packagec ontains the scripts and executable programs \
+that are used to build packages using the RPM Package Manager."
+
+SUMMARY_python-rpm = "Python bindings for apps which will manupulate RPM packages."
+DESCRIPTION_python-rpm = "The rpm-python package contains a module that permits applications \
+written in the Python programming language to use the interface \
+supplied by the RPM Package Manager libraries."
+
+SUMMARY_perl-module-rpm = "Perl bindings for apps which will manipulate RPM packages."
+DESCRIPTION_perl-modules-rpm = "The perl-modules-rpm package contains a module that permits applications \
+written in the Perl programming language to use the interface \
+supplied by the RPM Package Manager libraries."
+
+SUMMARY_perl-module-rpm-dev = "Development components for perl bindings"
+DESCRIPTION_perl-modules-rpm-dev = "Development items such as man pages for use with the Perl \
+language bindings."
+
+HOMEPAGE = "http://rpm5.org/"
+LICENSE = "LGPL 2.1"
+LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
+
+DEPENDS = "bzip2 zlib python perl db openssl elfutils expat libpcre attr acl popt"
+PR = "r9"
+
+# rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
+# in order to extract the distribution SRPM into a format we can extract...
+SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm \
+	   file://rpm2cpio;md5=1850f9872a4803f5165bfd5816274275 \
+	   file://perfile_rpmdeps.sh \
+	   file://rpm-autogen.patch \
+	   file://rpm-libsql-fix.patch \
+	  "
+
+#           file://hdraddorappend.patch \
+#           file://export-rpmbag-h.patch \
+#	   file://rpm-nrescan.patch \
+#	   file://rpm-autoconf.patch \
+#	   file://remove-compiled-tests.patch;apply=no \
+#	   file://rpm-no-loop.patch \
+#	  "
+
+SRC_URI[md5sum] = "19c1a7f68d7765eeb7615c9c4e54e380"
+SRC_URI[sha256sum] = "887e76218308b570c33c8c2fb10b5298b3afd5d602860d281befc85357b3b923"
+
+SRPM_UNPACK = "rpm-5.4.0.tar.gz"
+
+inherit autotools gettext
+
+acpaths = "-I ${S}/db/dist/aclocal -I ${S}/db/dist/aclocal_java"
+
+# Specify the default rpm macros in terms of adjustable variables
+rpm_macros = "%{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:~/.oerpmmacros"
+
+# Configure values taken from rpm.spec
+WITH_BZIP2 = "--with-bzip2"
+
+WITH_XZ = "--without-xz"
+
+WITH_Z = "--with-zlib $WITH_BZIP2 $WITH_XZ"
+
+WITH_PYTHON = "	--with-python=${PYTHON_BASEVERSION} \
+		--with-python-inc-dir=${STAGING_INCDIR}/python${PYTHON_BASEVERSION} \
+		--with-python-lib-dir=${libdir}/python${PYTHON_BASEVERSION} \
+		--without-pythonembed \
+	      "
+
+WITH_PYTHON_native = " --without-python"
+
+# Perl modules are not built, but they could be enabled fairly easily
+# the perl module creation and installation would need to be patched.
+# (currently has host perl contamination issues)
+#WITH_PERL = "	--with-perl --without-perlembed"
+WITH_PERL = "	--without-perl"
+
+WITH_PERL_native = " --without-perl"
+
+WITH_DB = "--with-db --with-dbsql --without-db-tools-integrated --without-sqlite"
+
+WITH_CRYPTO = "--with-beecrypt=internal --with-openssl --without-nss --without-gcrypt"
+
+WITH_KEYUTILS = "--without-keyutils"
+WITH_LIBELF = "--with-libelf"
+WITH_SELINUX = "--without-selinux --without-sepol --without-semanage"
+#WITH_NEON = "--with-neon=internal --without-libproxy --with-expat --without-gssapi"
+WITH_NEON = "--without-neon --without-libproxy --without-expat --without-gssapi"
+
+EXTRA_OECONF = "--verbose \
+		--sysconfdir=/etc \
+		${WITH_DB} \
+		${WITH_Z} \
+		--with-file \
+		--with-path-magic=/usr/share/misc/magic \
+		--without-lua \
+		--without-tcl \
+		--with-syck=internal \
+		--without-readline \
+		--without-augeas \
+		${WITH_CRYPTO} \
+		--without-libtasn1 \
+		--without-pakchois \
+		--without-gnutls \
+		${WITH_NEON} \
+		--with-pcre \
+		--enable-utf8 \
+		--without-uuid \
+		--with-attr \
+		--with-acl \
+		--without-xar \
+		--with-popt=external \
+		${WITH_KEYUTILS} \
+		--with-pthreads \
+		${WITH_LIBELF} \
+		--without-cudf \
+		--without-ficl \
+		--without-aterm \
+		--without-nix \
+		--without-bash \
+		--without-rc \
+		--without-js \
+		--without-gpsee \
+		${WITH_PYTHON} \
+		${WITH_PERL} \
+		--without-ruby \
+		--without-squirrel \
+		--with-build-extlibdep \
+		--with-build-maxextlibdep \
+		--without-valgrind \
+		--disable-openmp \
+		--enable-build-pic \
+		--enable-build-versionscript \
+		--enable-build-warnings \
+		--enable-build-debug \
+		--enable-maintainer-mode \
+		--with-path-macros=${rpm_macros} \
+		--with-bugreport=http://bugzilla.pokylinux.org"
+
+CFLAGS_append = " -DRPM_VENDOR_WINDRIVER"
+
+PACKAGES = "${PN}-dbg ${PN} ${PN}-doc ${PN}-libs ${PN}-dev ${PN}-common ${PN}-build python-rpm-dbg python-rpm perl-module-rpm perl-module-rpm-dev ${PN}-locale"
+
+SOLIBS = "5.4.so"
+
+# Based on %files section in the rpm.spec
+
+FILES_${PN} = "${bindir}/rpm \
+		${bindir}/rpmconstant \
+		${libdir}/rpm/rpm.* \
+		${libdir}/rpm/tgpg \
+		${libdir}/rpm/macros \
+		${libdir}/rpm/rpmpopt \
+		${libdir}/rpm/rpmdb_loadcvt \
+		${libdir}/rpm/rpm2cpio \
+		${libdir}/rpm/vcheck \
+		${libdir}/rpm/helpers \
+		${libdir}/rpm/qf \
+		${libdir}/rpm/cpuinfo.yaml \
+		${libdir}/rpm/bin/mtree \
+		${libdir}/rpm/bin/rpmkey \
+		${libdir}/rpm/bin/rpmrepo \
+		${libdir}/rpm/bin/rpmspecdump \
+		${libdir}/rpm/bin/wget \
+		"
+
+#		${libdir}/rpm/magic \
+#		${libdir}/rpm/magic.mgc \
+#		${libdir}/rpm/magic.mime \
+#		${libdir}/rpm/magic.mime.mgc \
+#		${libdir}/rpm/bin/db_* \
+#		${libdir}/rpm/bin/grep \
+
+FILES_${PN}-dbg = "${bindir}/.debug \
+		${libdir}/.debug \
+		${libdir}/rpm/.debug \
+		${libdir}/rpm/bin/.debug \
+		"
+
+FILES_${PN}-common = "${bindir}/rpm2cpio \
+		${bindir}/gendiff \
+		/etc/rpm \
+		/var/lib/rpm \
+		/var/spool/repackage \
+		"
+
+FILES_${PN}-libs = "${libdir}/librpm-*.so \
+		${libdir}/librpmconstant-*.so \
+		${libdir}/librpmdb-*.so \
+		${libdir}/librpmio-*.so \
+		${libdir}/librpmmisc-*.so \
+		${libdir}/librpmbuild-*.so \
+		"
+
+###%{_rpmhome}/lib/libxar.so.*
+###%{_rpmhome}/lib/libjs.so.*
+###%{_rpmhome}/lib/librpmjsm.so.*
+###%{_rpmhome}/lib/rpmjsm.so
+
+
+FILES_${PN}-build = "${prefix}/src/rpm \
+		${bindir}/rpmbuild \
+		${libdir}/rpm/brp-* \
+		${libdir}/rpm/check-files \
+		${libdir}/rpm/cross-build \
+		${libdir}/rpm/find-debuginfo.sh \
+		${libdir}/rpm/find-lang.sh \
+		${libdir}/rpm/find-prov.pl \
+		${libdir}/rpm/find-provides.perl \
+		${libdir}/rpm/find-req.pl \
+		${libdir}/rpm/find-requires.perl \
+		${libdir}/rpm/getpo.sh \
+		${libdir}/rpm/http.req \
+		${libdir}/rpm/javadeps.sh \
+		${libdir}/rpm/mono-find-provides \
+		${libdir}/rpm/mono-find-requires \
+		${libdir}/rpm/executabledeps.sh \
+		${libdir}/rpm/libtooldeps.sh \
+		${libdir}/rpm/osgideps.pl \
+		${libdir}/rpm/perldeps.pl \
+		${libdir}/rpm/perl.prov \
+		${libdir}/rpm/perl.req \
+		${libdir}/rpm/php.prov \
+		${libdir}/rpm/php.req \
+		${libdir}/rpm/pkgconfigdeps.sh \
+		${libdir}/rpm/pythondeps.sh \
+		${libdir}/rpm/bin/debugedit \
+		${libdir}/rpm/bin/rpmcache \
+		${libdir}/rpm/bin/rpmcmp \
+		${libdir}/rpm/bin/rpmdeps \
+		${libdir}/rpm/bin/rpmdigest \
+		${libdir}/rpm/bin/abi-compliance-checker.pl \
+		${libdir}/rpm/bin/api-sanity-autotest.pl \
+		${libdir}/rpm/bin/chroot \
+		${libdir}/rpm/bin/cp \
+		${libdir}/rpm/bin/dbsql \
+		${libdir}/rpm/bin/find \
+		${libdir}/rpm/bin/install-sh \
+		${libdir}/rpm/bin/lua \
+		${libdir}/rpm/bin/luac \
+		${libdir}/rpm/bin/mkinstalldirs \
+		${libdir}/rpm/bin/rpmlua \
+		${libdir}/rpm/bin/rpmluac \
+		${libdir}/rpm/bin/sqlite3 \
+		${libdir}/rpm/lib/liblua.a \
+		${libdir}/rpm/lib/liblua.la \
+		${libdir}/rpm/macros.d/cmake \
+		${libdir}/rpm/macros.d/java \
+		${libdir}/rpm/macros.d/libtool \
+		${libdir}/rpm/macros.d/mandriva \
+		${libdir}/rpm/macros.d/mono \
+		${libdir}/rpm/macros.d/perl \
+		${libdir}/rpm/macros.d/php \
+		${libdir}/rpm/macros.d/pkgconfig \
+		${libdir}/rpm/macros.d/python \
+		${libdir}/rpm/macros.d/ruby \
+		${libdir}/rpm/macros.d/selinux \
+		${libdir}/rpm/macros.d/tcl \
+		${libdir}/rpm/macros.rpmbuild \
+		${libdir}/rpm/u_pkg.sh \
+		${libdir}/rpm/vpkg-provides.sh \
+		${libdir}/rpm/vpkg-provides2.sh \
+		${libdir}/rpm/perfile_rpmdeps.sh \
+		"
+
+#%rpmattr       %{_rpmhome}/gem_helper.rb
+#%rpmattr       %{_rpmhome}/symclash.*
+
+FILES_python-rpm-dbg = "${libdir}/python*/rpm/.debug/_*"
+FILES_python-rpm = "${libdir}/python*/rpm"
+
+FILES_perl-module-rpm = "${libdir}/perl/*/* \
+		"
+
+FILES_perl-module-rpm-dev = "${prefix}/share/man/man3/RPM* \
+		"
+
+FILE_${PN}-dev = "${includedir}/rpm \
+		${libdir}/librpm.a \
+		${libdir}/librpm.la \
+		${libdir}/librpm.so \
+		${libdir}/librpmconstant.a \
+		${libdir}/librpmconstant.la \
+		${libdir}/librpmconstant.so \
+		${libdir}/librpmdb.a \
+		${libdir}/librpmdb.la \
+		${libdir}/librpmdb.so \
+		${libdir}/librpmio.a \
+		${libdir}/librpmio.la \
+		${libdir}/librpmio.so \
+		${libdir}/librpmmisc.a \
+		${libdir}/librpmmisc.la \
+		${libdir}/librpmmisc.so \
+		${libdir}/librpmbuild.a \
+		${libdir}/librpmbuild.la \
+		${libdir}/librpmbuild.so \
+		${libdir}/pkgconfig/rpm.pc \
+		"
+
+###%{_rpmhome}/lib/libxar.a
+###%{_rpmhome}/lib/libxar.la
+###%{_rpmhome}/lib/libxar.so
+###%{_rpmhome}/lib/libjs.a
+###%{_rpmhome}/lib/libjs.la
+###%{_rpmhome}/lib/libjs.so
+###%{_rpmhome}/lib/librpmjsm.a
+###%{_rpmhome}/lib/librpmjsm.la
+###%{_rpmhome}/lib/librpmjsm.so
+
+# If base_do_unpack is refactored this may have to be adjusted
+python base_do_unpack_append() {
+	import subprocess
+
+	for url in src_uri.split():
+		try:
+			local = bb.data.expand(bb.fetch.localpath(url, localdata), localdata)
+		except bb.MalformedUrl, e:
+			raise FuncFailed('Unable to generate local path for malformed uri: %s' % e)
+		if local is None:
+			continue
+		local = os.path.realpath(local)
+
+		if local.endswith('.src.rpm') or local.endswith('.srpm'):
+			cmdname = os.path.join(bb.data.getVar('WORKDIR', localdata, 1),'rpm2cpio')
+			efile = os.path.join(bb.data.getVar('WORKDIR', localdata, 1),os.path.basename(local))
+			cmd = "%s %s | cpio -i" % (cmdname, efile)
+			cmd = "PATH=\"%s\" %s" % (bb.data.getVar('PATH', localdata, 1), cmd)
+			old_cwd = os.getcwd()
+			newdir = ("%s/%s" % (old_cwd, 'srpm-unpack'))
+			bb.mkdirhier(newdir)
+			os.chdir(newdir)
+			ret = subprocess.call(cmd, preexec_fn=subprocess_setup, shell=True)
+			os.chdir(old_cwd)
+			if ret != 0:
+				raise bb.build.FuncFailed('Unpack command failed: %s (%s)' % (cmd, ret))
+
+	srpm_uri = bb.data.getVar('SRPM_UNPACK', localdata, True)
+	if not srpm_uri:
+		return
+
+	# Note, not really URI's!  Just a list of files
+	for url in srpm_uri.split():
+		local = os.path.join(bb.data.getVar('WORKDIR', localdata, 1), "srpm-unpack/" + url)
+		ret = oe_unpack_file(local, localdata, 'file://' + url)
+		if not ret:
+			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
+}
+
+do_configure() {
+	# Disable tests!
+	echo "all:" > tests/Makefile.am
+
+	./autogen.sh
+
+	oe_runconf
+}
+
+do_install_append() {
+	sed -i -e 's,%__check_files,#%%__check_files,' ${D}/${libdir}/rpm/macros
+	sed -i -e 's,%__scriptlet_requires,#%%__scriptlet_requires,' ${D}/${libdir}/rpm/macros
+	sed -i -e 's,%__perl_provides,#%%__perl_provides,' ${D}/${libdir}/rpm/macros
+	sed -i -e 's,%__perl_requires,#%%__perl_requires,' ${D}/${libdir}/rpm/macros
+
+	# Enable Debian style arbitrary tags...
+	sed -i -e 's,%_arbitrary_tags[^_].*,%_arbitrary_tags %{_arbitrary_tags_debian},' ${D}/${libdir}/rpm/macros
+
+	install -m 0755 ${WORKDIR}/perfile_rpmdeps.sh ${D}/${libdir}/rpm/perfile_rpmdeps.sh
+
+	# Remove unpackaged files (based on list in rpm.spec)
+	rm -f ${D}/${libdir}/rpm/{Specfile.pm,cpanflute,cpanflute2,rpmdiff,rpmdiff.cgi,sql.prov,sql.req,tcl.req,trpm}
+
+	rm -f ${D}/${mandir}/man8/rpmcache.8*
+	rm -f ${D}/${mandir}/man8/rpmgraph.8*
+	rm -f ${D}/${mandir}/*/man8/rpmcache.8*
+	rm -f ${D}/${mandir}/*/man8/rpmgraph.8*
+	rm -rf ${D}/${mandir}/{fr,ko}
+
+	rm -f ${D}/${includedir}/popt.h
+	rm -f ${D}/${libdir}/libpopt.*
+	rm -f ${D}/${libdir}/pkgconfig/popt.pc
+	rm -f ${D}/${datadir}/locale/*/LC_MESSAGES/popt.mo
+	rm -f ${D}/${mandir}/man3/popt.3
+
+	rm -f ${D}/${mandir}/man1/xar.1*
+	rm -f ${D}/${bindir}/xar
+	rm -rf ${D}/${includedir}/xar
+	rm -f ${D}/${libdir}/libxar*
+
+	rm -f ${D}/${bindir}/lz*
+	rm -f ${D}/${bindir}/unlzma
+	rm -f ${D}/${bindir}/unxz
+	rm -f ${D}/${bindir}/xz*
+	rm -rf ${D}/${includedir}/lzma*
+	rm -f ${D}/${mandir}/man1/lz*.1
+	rm -f ${D}/${libdir}/pkgconfig/liblzma*
+
+	rm -f ${D}/${libdir}/python%{with_python_version}/site-packages/*.{a,la}
+	rm -f ${D}/${libdir}/python%{with_python_version}/site-packages/rpm/*.{a,la}
+
+	#find ${D}/${libdir}/perl5 -type f -a \( -name perllocal.pod -o -name .packlist \
+	#	-o \( -name '*.bs' -a -empty \) \) -exec rm -f {} ';'
+	#find ${D}/${libdir}/perl5 -type d -depth -exec rmdir {} 2>/dev/null ';'
+
+	# We don't want the default macro set
+	rm -rf ${D}/${libdir}/rpm/{i[3456]86*,athlon*,pentium*,x86_64*,alpha*,sparc*,ia64*,ppc*,s390*,armv[34][lb]*,armv[345]*,mips*,noarch*}
+
+	rm -f ${D}/${libdir}/rpm/dbconvert.sh
+
+	rm -f ${D}/${libdir}/rpm/libsqldb.*
+}
+
+BBCLASSEXTEND = "native"
-- 
1.7.3.4


