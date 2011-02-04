Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 76B304C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 19:03:22 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1413LY4004827
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 17:03:21 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 17:03:21 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 17:03:21 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 19:00:02 -0600
Message-Id: <f1d144cfa06f95c1b985548fc958bc5b6f81f49f.1296781161.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296781161.git.mark.hatle@windriver.com>
References: <cover.1296781161.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296781161.git.mark.hatle@windriver.com>
References: <cover.1296781161.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 04 Feb 2011 01:03:21.0425 (UTC)
	FILETIME=[5113AC10:01CBC407]
Subject: [PATCH 1/1] pseudo: Uprev pseudo and fix a few minor bugs
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
X-List-Received-Date: Fri, 04 Feb 2011 01:03:22 -0000

Uprev pseudo to the latest version.  This corrects a linking problem on
some newer host systems.

In addition, we add more detail to the local.conf.sample file to explain
the NO32LIBS and why someone would set it to 0.

Also fix a minor bug in pseudo that prevented it from building for the
target.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/local.conf.sample                        |    9 +++++
 .../pseudo/pseudo/static_sqlite.patch              |   18 +++++-----
 meta/recipes-devtools/pseudo/pseudo_git.bb         |   38 +++++++++++++++++---
 4 files changed, 52 insertions(+), 15 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index db72140..f7ee1c0 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -152,7 +152,7 @@ PRELINKSRCREV ??= "909470ee441237563d6236c505cb2d02ddc48704"
 SRCREV_pn-prelink ??= "${PRELINKSRCREV}"
 SRCREV_pn-prelink-native ??= "${PRELINKSRCREV}"
 SRCREV_pn-psplash ??= "424"
-PSEUDOSRCREV ??= "bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8"
+PSEUDOSRCREV ??= "5434325fc887817ebb2bad36313d8277992cef1d"
 SRCREV_pn-pseudo ??= "${PSEUDOSRCREV}"
 SRCREV_pn-pseudo-native ??= "${PSEUDOSRCREV}"
 SRCREV_pn-pseudo-nativesdk ??= "${PSEUDOSRCREV}"
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index f9953d1..8ac31d8 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -170,6 +170,15 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 #IMAGE_LINGUAS ?= "en-gb"
 #LIMIT_BUILT_LOCALES ?= "POSIX en_GB"
 
+# This value is currently used by PSEUDO to determine if the recipe should
+# build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
+#
+# PSEUDO will attempt to determine if a 32-bit wrapper is necessary, but 
+# it doesn't always guess properly.  If you have 32-bit executables on 
+# your 64-bit build system, you likely want to set this to "0", 
+# otherwise you could end up with incorrect file attributes on the 
+# target filesystem.
+#
 # Default to not build 32 bit libs on 64 bit systems, comment this
 # out if that is desired
 NO32LIBS = "1"
diff --git a/meta/recipes-devtools/pseudo/pseudo/static_sqlite.patch b/meta/recipes-devtools/pseudo/pseudo/static_sqlite.patch
index 0a2fa28..6faa7a2 100644
--- a/meta/recipes-devtools/pseudo/pseudo/static_sqlite.patch
+++ b/meta/recipes-devtools/pseudo/pseudo/static_sqlite.patch
@@ -2,14 +2,14 @@ Due to disabling the LD_LIBRARY_PATH handling, we need to use a static
 libsqlite.
 
 diff -ur git.orig/Makefile.in git/Makefile.in
---- git.orig/Makefile.in	2010-07-20 17:13:56.000000000 -0700
-+++ git/Makefile.in	2010-07-20 17:12:14.000000000 -0700
-@@ -45,7 +45,7 @@
- GLOB_PATTERN=guts/*.c
- GUTS=$(filter-out "$(GLOB_PATTERN)",$(wildcard $(GLOB_PATTERN)))
+--- git.orig/Makefile.in
++++ git/Makefile.in
+@@ -55,7 +55,7 @@
  
--DBLDFLAGS=-lsqlite3
-+DBLDFLAGS=$(SQLITE)/lib/libsqlite3.a
- USE_64=wrapfuncs64.in
+ # needed for anything that links with pseduo_client.o, pretty much
+ CLIENT_LDFLAGS=-ldl -lpthread
+-DB_LDFLAGS=-lsqlite3 -lpthread
++DB_LDFLAGS=$(SQLITE)/lib/libsqlite3.a -lpthread
  
- SHOBJS=pseudo_table.o pseudo_util.o
+ PSEUDO=$(BIN)/pseudo
+ PSEUDODB=$(BIN)/pseudodb
diff --git a/meta/recipes-devtools/pseudo/pseudo_git.bb b/meta/recipes-devtools/pseudo/pseudo_git.bb
index 4e94df7..244fabe 100644
--- a/meta/recipes-devtools/pseudo/pseudo_git.bb
+++ b/meta/recipes-devtools/pseudo/pseudo_git.bb
@@ -6,7 +6,7 @@ LICENSE = "LGPL2.1"
 DEPENDS = "sqlite3"
 
 PV = "0.0+git${SRCPV}"
-PR = "r17"
+PR = "r18"
 
 SRC_URI = "git://github.com/wrpseudo/pseudo.git;protocol=git \
            file://static_sqlite.patch \
@@ -25,7 +25,26 @@ do_configure () {
 
 NO32LIBS ??= "0"
 
+# Compile for the local machine arch...
 do_compile () {
+	${S}/configure --prefix=${prefix} --with-sqlite=${STAGING_DIR_TARGET}${exec_prefix} --bits=${SITEINFO_BITS}
+	oe_runmake 'LIB=lib/pseudo/lib$(MARK64)'
+}
+
+# Two below are the same
+# If necessary compile for the alternative machine arch.  This is only 
+# necessary in a native build.
+do_compile_prepend_virtclass-native () {
+	if [ "${SITEINFO_BITS}" == "64" -a -e "/usr/include/gnu/stubs-32.h" -a "${PN}" == "pseudo-native" -a "${NO32LIBS}" != "1" ]; then
+		# We need the 32-bit libpseudo on a 64-bit machine...
+		./configure --prefix=${prefix} --with-sqlite=${STAGING_DIR_TARGET}${exec_prefix} --bits=32
+		oe_runmake 'CFLAGS=-m32' 'LIB=lib/pseudo/lib' libpseudo
+		# prevent it from removing the lib, but remove everything else
+		make 'LIB=foo' distclean 
+	fi
+}
+
+do_compile_prepend_virtclass-nativesdk () {
 	if [ "${SITEINFO_BITS}" == "64" -a -e "/usr/include/gnu/stubs-32.h" -a "${PN}" == "pseudo-native" -a "${NO32LIBS}" != "1" ]; then
 		# We need the 32-bit libpseudo on a 64-bit machine...
 		./configure --prefix=${prefix} --with-sqlite=${STAGING_DIR_TARGET}${exec_prefix} --bits=32
@@ -33,18 +52,27 @@ do_compile () {
 		# prevent it from removing the lib, but remove everything else
 		make 'LIB=foo' distclean 
 	fi
-	${S}/configure --prefix=${prefix} --with-sqlite=${STAGING_DIR_TARGET}${exec_prefix} --bits=${SITEINFO_BITS}
-	oe_runmake 'LIB=lib/pseudo/lib$(MARK64)'
 }
 
 do_install () {
 	oe_runmake 'DESTDIR=${D}' 'LIB=lib/pseudo/lib$(MARK64)' install
+}
+
+# Two below are the same
+# If necessary install for the alternative machine arch.  This is only 
+# necessary in a native build.
+do_install_append_virtclass-native () {
 	if [ "${SITEINFO_BITS}" == "64" -a -e "/usr/include/gnu/stubs-32.h" -a "${PN}" == "pseudo-native" -a "${NO32LIBS}" != "1" ]; then
 		mkdir -p ${D}${prefix}/lib/pseudo/lib
 		cp lib/pseudo/lib/libpseudo.so ${D}${prefix}/lib/pseudo/lib/.
 	fi
 }
 
-BBCLASSEXTEND = "native nativesdk"
-
+do_install_append_virtclass-nativesdk () {
+	if [ "${SITEINFO_BITS}" == "64" -a -e "/usr/include/gnu/stubs-32.h" -a "${PN}" == "pseudo-native" -a "${NO32LIBS}" != "1" ]; then
+		mkdir -p ${D}${prefix}/lib/pseudo/lib
+		cp lib/pseudo/lib/libpseudo.so ${D}${prefix}/lib/pseudo/lib/.
+	fi
+}
 
+BBCLASSEXTEND = "native nativesdk"
-- 
1.7.3.4


