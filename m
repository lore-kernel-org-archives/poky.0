Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5CD24C811AE
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 22:30:37 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0Q4UbI0014802
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 20:30:37 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 20:30:36 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 20:30:36 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue, 25 Jan 2011 22:26:42 -0600
Message-Id: <39c693df2561e6abb2075878e47c58efdd233512.1296015743.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296015743.git.mark.hatle@windriver.com>
References: <cover.1296015743.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296015743.git.mark.hatle@windriver.com>
References: <cover.1296015743.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 26 Jan 2011 04:30:36.0847 (UTC)
	FILETIME=[C772BBF0:01CBBD11]
Subject: [PATCH 1/1] BerkleyDB: Uprev db from 4.2 to 5.1.19
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
X-List-Received-Date: Wed, 26 Jan 2011 04:30:37 -0000

The latest version of Berkley DB (5.1.19) is required by RPM.  This version
is backwards compatible with the 4.2 version that was enabled previously.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-support/db/db/arm-thumb-mutex.patch   |   36 -------
 .../db/db/arm-thumb-mutex_db5.patch                |   36 +++++++
 meta/recipes-support/db/db/configure_fixes.patch   |   18 ----
 meta/recipes-support/db/db_4.2.52.bb               |  102 --------------------
 .../db/{db_4.3.29.bb => db_5.1.19.bb}              |   39 +++++---
 5 files changed, 63 insertions(+), 168 deletions(-)
 delete mode 100644 meta/recipes-support/db/db/arm-thumb-mutex.patch
 create mode 100644 meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
 delete mode 100644 meta/recipes-support/db/db/configure_fixes.patch
 delete mode 100644 meta/recipes-support/db/db_4.2.52.bb
 rename meta/recipes-support/db/{db_4.3.29.bb => db_5.1.19.bb} (68%)

diff --git a/meta/recipes-support/db/db/arm-thumb-mutex.patch b/meta/recipes-support/db/db/arm-thumb-mutex.patch
deleted file mode 100644
index acd446f..0000000
--- a/meta/recipes-support/db/db/arm-thumb-mutex.patch
+++ /dev/null
@@ -1,36 +0,0 @@
---- db-4.3.29-dist/../dbinc/mutex.h	2005-11-15 07:33:27.761042518 -0800
-+++ db-4.3.29-dist/../dbinc/mutex.h	2005-11-15 07:55:24.823920060 -0800
-@@ -470,6 +470,25 @@
- #ifdef LOAD_ACTUAL_MUTEX_CODE
- #define	MUTEX_SET_TEST	1		/* gcc/arm: 0 is clear, 1 is set. */
- 
-+#if defined __thumb__
-+#define	MUTEX_SET(tsl) ({						\
-+	int __r, __p;							\
-+	asm volatile(							\
-+		".align	2\n\t"						\
-+		"bx	pc\n\t"						\
-+		"nop\n\t"						\
-+		".arm\n\t"						\
-+		"swpb	%0, %2, [%3]\n\t"				\
-+		"eor	%0, %0, #1\n\t"					\
-+		"orr	%1, pc, #1\n\t"					\
-+		"bx	%1\n\t"						\
-+		".force_thumb"						\
-+	    : "=&r" (__r), "=r" (__p)					\
-+	    : "r" (1), "r" (tsl)					\
-+	    );								\
-+	__r & 1;							\
-+})
-+#else
- #define	MUTEX_SET(tsl) ({						\
- 	int __r;							\
- 	asm volatile(							\
-@@ -480,6 +499,7 @@
- 	    );								\
- 	__r & 1;							\
- })
-+#endif
- 
- #define	MUTEX_UNSET(tsl)	(*(volatile tsl_t *)(tsl) = 0)
- #define	MUTEX_INIT(tsl)		MUTEX_UNSET(tsl)
diff --git a/meta/recipes-support/db/db/arm-thumb-mutex_db5.patch b/meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
new file mode 100644
index 0000000..37d0d93
--- /dev/null
+++ b/meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
@@ -0,0 +1,36 @@
+--- db-5.1.19/../src/dbinc/mutex_int.h.orig	2011-01-05 19:21:42.181805366 -0600
++++ db-5.1.19/../src/dbinc/mutex_int.h	2011-01-05 19:24:53.141853117 -0600
+@@ -474,6 +474,25 @@
+ 
+ #ifdef LOAD_ACTUAL_MUTEX_CODE
+ /* gcc/arm: 0 is clear, 1 is set. */
++#if defined __thumb__
++#define	MUTEX_SET(tsl) ({						\
++	int __r, __p;							\
++	__asm__ volatile(						\
++		".align 2\n\t"                                          \
++		"bx     pc\n\t"                                         \
++		"nop\n\t"                                               \
++		".arm\n\t"                                              \
++		"swpb   %0, %2, [%3]\n\t"                               \
++		"eor    %0, %0, #1\n\t"                                 \
++		"orr    %1, pc, #1\n\t"                                 \
++		"bx     %1\n\t"                                         \
++		".force_thumb"                                          \
++	    : "=&r" (__r), "=r" (__p)                                   \
++	    : "r" (1), "r" (tsl)                                        \
++	    );                                                          \
++	__r & 1;							\
++})
++#else
+ #define	MUTEX_SET(tsl) ({						\
+ 	int __r;							\
+ 	__asm__ volatile(						\
+@@ -484,6 +503,7 @@
+ 	    );								\
+ 	__r & 1;							\
+ })
++#endif
+ 
+ #define	MUTEX_UNSET(tsl)	(*(volatile tsl_t *)(tsl) = 0)
+ #define	MUTEX_INIT(tsl)         (MUTEX_UNSET(tsl), 0)
diff --git a/meta/recipes-support/db/db/configure_fixes.patch b/meta/recipes-support/db/db/configure_fixes.patch
deleted file mode 100644
index 80aa0e7..0000000
--- a/meta/recipes-support/db/db/configure_fixes.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-If LD is a binary name + parameters db will fail to work out its GNU ld
-and disable shared libraries. We don't want this.
-
-RP - 22/11/2007
-
-Index: dist/configure
-===================================================================
---- dist.orig/configure	2007-11-23 00:47:27.000000000 +0000
-+++ dist/configure	2007-11-23 00:53:22.000000000 +0000
-@@ -5658,7 +5661,7 @@ if test "${lt_cv_prog_gnu_ld+set}" = set
-   echo $ECHO_N "(cached) $ECHO_C" >&6
- else
-   # I'd rather use --version here, but apparently some GNU ld's only accept -v.
--case `"$LD" -v 2>&1 </dev/null` in
-+case `$LD -v 2>&1 </dev/null` in
- *GNU* | *'with BFD'*)
-   lt_cv_prog_gnu_ld=yes
-   ;;
diff --git a/meta/recipes-support/db/db_4.2.52.bb b/meta/recipes-support/db/db_4.2.52.bb
deleted file mode 100644
index 1181bb0..0000000
--- a/meta/recipes-support/db/db_4.2.52.bb
+++ /dev/null
@@ -1,102 +0,0 @@
-# Version 4 of the Berkeley DB from Sleepycat
-#
-# At present this package only installs the DB code
-# itself (shared libraries, .a in the dev package),
-# documentation and headers.
-#
-# The headers have the same names as those as v3
-# of the DB, only one version can be used *for dev*
-# at once - DB3 and DB4 can both be installed on the
-# same system at the same time if really necessary.
-SECTION = "libs"
-DESCRIPTION = "Berkeley DB v4."
-HOMEPAGE = "http://www.oracle.com/technology/products/berkeley-db/db/index.html"
-LICENSE = "BSD Sleepycat"
-VIRTUAL_NAME = "virtual/db"
-VIRTUAL_NAME_virtclass-native = "virtual/db-native"
-
-LIC_FILES_CHKSUM = "file://../LICENSE;md5=6b31228067ad1236eceaaaf187ad6d1e"
-
-CONFLICTS = "db3"
-CONFLICTS_virtclass-native = "db3-native"
-PR = "r8"
-
-SRC_URI = "http://download.oracle.com/berkeley-db/db-${PV}.tar.gz \
-           file://configure_fixes.patch;patch=1 "
-
-SRC_URI[md5sum] = "8b5cff6eb83972afdd8e0b821703c33c"
-SRC_URI[sha256sum] = "f4bddd8d1b4cde0daf5e13e3493ed62a25b736b0bf258e1d929e47bc6a82a28c"
-#SRC_URI_MD5 = "http://downloads.sleepycat.com/db-${PV}.tar.gz.md5"
-#TODO SRC_URI += "file://arm-thumb-mutex.patch;patch=1"
-
-inherit autotools
-
-# Put virtual/db in any appropriate provider of a
-# relational database, use it as a dependency in
-# place of a specific db and use:
-#
-# PREFERRED_PROVIDER_virtual/db
-#
-# to select the correct db in the build (distro) .conf
-PROVIDES += "${VIRTUAL_NAME}"
-
-# bitbake isn't quite clever enough to deal with sleepycat,
-# the distribution sits in the expected directory, but all
-# the builds must occur from a sub-directory.  The following
-# persuades bitbake to go to the right place
-S = "${WORKDIR}/db-${PV}/dist"
-B = "${WORKDIR}/db-${PV}/build_unix"
-
-# The executables go in a separate package - typically there
-# is no need to install these unless doing real database
-# management on the system.
-PACKAGES += " ${PN}-bin"
-
-# Package contents
-FILES_${PN} = "${libdir}/libdb-4*so*"
-FILES_${PN}-bin = "${bindir}/*"
-# The dev package has the .so link (as in db3) and the .a's -
-# it is therefore incompatible (cannot be installed at the
-# same time) as the db3 package
-FILES_${PN}-dev = "${includedir} ${libdir}/*"
-
-#configuration - set in local.conf to override
-DB4_CONFIG ?= " --disable-cryptography --disable-queue --disable-replication --disable-verify --enable-hash"
-EXTRA_OECONF = "${DB4_CONFIG}"
-
-# Override the MUTEX setting here, the POSIX library is
-# the default - "POSIX/pthreads/library".
-# Don't ignore the nice SWP instruction on the ARM:
-# These enable the ARM assembler mutex code, this won't
-# work with thumb compilation...
-ARM_MUTEX = "--with-mutex=ARM/gcc-assembly"
-MUTEX = ""
-MUTEX_arm = "${ARM_MUTEX}"
-MUTEX_armeb = "${ARM_MUTEX}"
-EXTRA_OECONF += "${MUTEX}"
-
-ARM_INSTRUCTION_SET = "arm"
-
-# Cancel the site stuff - it's set for db3 and destroys the
-# configure.
-CONFIG_SITE = ""
-do_configure() {
-	rm -f ${S}/config.sub
-	cp ${STAGING_DATADIR_NATIVE}/gnu-config/config.sub ${S}/config.sub 
-	oe_runconf
-}
-
-do_install_append() {
-	# The docs end up in /usr/docs - not right.
-	if test -d "${D}/${prefix}/docs"
-	then
-		mkdir -p "${D}/${datadir}"
-		test ! -d "${D}/${docdir}" || rm -rf "${D}/${docdir}"
-		mv "${D}/${prefix}/docs" "${D}/${docdir}"
-	fi
-}
-
-# The db package contains symlinks that trip up insane
-INSANE_SKIP_db = "1"
-
-BBCLASSEXTEND = "native nativesdk"
diff --git a/meta/recipes-support/db/db_4.3.29.bb b/meta/recipes-support/db/db_5.1.19.bb
similarity index 68%
rename from meta/recipes-support/db/db_4.3.29.bb
rename to meta/recipes-support/db/db_5.1.19.bb
index 04a6680..919e532 100644
--- a/meta/recipes-support/db/db_4.3.29.bb
+++ b/meta/recipes-support/db/db_5.1.19.bb
@@ -1,7 +1,4 @@
-# Has issues with eds
-DEFAULT_PREFERENCE = "-1"
-
-# Version 4 of the Berkeley DB from Sleepycat
+# Version 5 of the Berkeley DB from Sleepycat
 #
 # At present this package only installs the DB code
 # itself (shared libraries, .a in the dev package),
@@ -9,19 +6,24 @@ DEFAULT_PREFERENCE = "-1"
 #
 # The headers have the same names as those as v3
 # of the DB, only one version can be used *for dev*
-# at once - DB3 and DB4 can both be installed on the
+# at once - DB3 and DB5 can both be installed on the
 # same system at the same time if really necessary.
 SECTION = "libs"
-DESCRIPTION = "Berkeley DB v4."
+DESCRIPTION = "Berkeley DB v5."
 HOMEPAGE = "http://www.oracle.com/technology/products/berkeley-db/db/index.html"
 LICENSE = "BSD Sleepycat"
 VIRTUAL_NAME ?= "virtual/db"
 CONFLICTS = "db3"
-PR = "r8"
+PR = "r1"
 
 SRC_URI = "http://download.oracle.com/berkeley-db/db-${PV}.tar.gz"
 #SRC_URI_MD5 = "http://downloads.sleepycat.com/db-${PV}.tar.gz.md5"
-SRC_URI += "file://arm-thumb-mutex.patch;patch=1"
+SRC_URI += "file://arm-thumb-mutex_db5.patch;patch=1"
+
+SRC_URI[md5sum] = "76fcbfeebfcd09ba0b4d96bfdf8d884d"
+SRC_URI[sha256sum] = "0194d4ca9266ba1a1c0bfbc233b18bfd05f63163453c81ebcdfdc7112d5ac850"
+
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=86f9294f39f38ef9e89690bcd2320e7a"
 
 inherit autotools
 
@@ -47,7 +49,7 @@ B = "${WORKDIR}/db-${PV}/build_unix"
 PACKAGES += " ${PN}-bin"
 
 # Package contents
-FILES_${PN} = "${libdir}/libdb-4*so*"
+FILES_${PN} = "${libdir}/libdb-5*so*"
 FILES_${PN}-bin = "${bindir}/*"
 # The dev package has the .so link (as in db3) and the .a's -
 # it is therefore incompatible (cannot be installed at the
@@ -56,9 +58,9 @@ FILES_${PN}-dev = "${includedir} ${libdir}/*"
 
 #configuration - set in local.conf to override
 # All the --disable-* options replace --enable-smallbuild, which breaks a bunch of stuff (eg. postfix)
-DB4_CONFIG ?= "--enable-o_direct --disable-cryptography --disable-queue --disable-replication --disable-statistics --disable-verify --enable-compat185"
+DB5_CONFIG ?= "--enable-o_direct --disable-cryptography --disable-queue --disable-replication --disable-statistics --disable-verify --disable-compat185 --disable-sql"
 
-EXTRA_OECONF = "${DB4_CONFIG}"
+EXTRA_OECONF = "${DB5_CONFIG}"
 
 # Override the MUTEX setting here, the POSIX library is
 # the default - "POSIX/pthreads/library".
@@ -79,11 +81,24 @@ do_configure() {
 }
 
 do_install_append() {
+	mkdir -p ${D}/${includedir}/db51
+	#mv ${D}/${includedir}/db_185.h ${D}/${includedir}/db51/.
+	mv ${D}/${includedir}/db.h ${D}/${includedir}/db51/.
+	mv ${D}/${includedir}/db_cxx.h ${D}/${includedir}/db51/.
+	#mv ${D}/${includedir}/dbsql.h ${D}/${includedir}/db51/.
+	#ln -s db51/db_185.h ${D}/${includedir}/db_185.h
+	ln -s db51/db.h ${D}/${includedir}/db.h
+	ln -s db51/db_cxx.h ${D}/${includedir}/db_cxx.h
+	#ln -s db51/dbsql.h ${D}/${includedir}/dbsql.h
+
 	# The docs end up in /usr/docs - not right.
 	if test -d "${D}/${prefix}/docs"
 	then
 		mkdir -p "${D}/${datadir}"
-		test ! -d "${D}/${docdir}" || rmdir "${D}/${docdir}"
+		test ! -d "${D}/${docdir}" || rm -rf "${D}/${docdir}"
 		mv "${D}/${prefix}/docs" "${D}/${docdir}"
 	fi
 }
+
+BBCLASSEXTEND = "native nativesdk"
+
-- 
1.7.3.4


