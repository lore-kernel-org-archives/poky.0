Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 766414C81257
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 16:41:30 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 14:41:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597164848"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 14:41:14 -0800
Message-Id: <2d59c34ceb4fb3a9c80bfcce999172ae6c16e663.1296167950.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296167950.git.scott.a.garman@intel.com>
References: <cover.1296167950.git.scott.a.garman@intel.com>
Old-Date: Mon, 24 Jan 2011 18:50:09 -0800
Date: Thu, 27 Jan 2011 14:42:08 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/9] sgml-common: new recipe v0.6.3
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
X-List-Received-Date: Thu, 27 Jan 2011 22:41:30 -0000

From: Scott Garman <scott.a.garman@intel.com>

Recipe derived from OpenEmbedded.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../sgml-common/sgml-common-0.6.3/autohell.patch   |   58 ++++++++++++++++++++
 .../sgml-common/sgml-common-native_0.6.3.bb        |   50 +++++++++++++++++
 .../sgml-common/sgml-common_0.6.3.bb               |   53 ++++++++++++++++++
 3 files changed, 161 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
 create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
 create mode 100644 meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb

diff --git a/meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch b/meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
new file mode 100644
index 0000000..1366ada
--- /dev/null
+++ b/meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
@@ -0,0 +1,58 @@
+Patch obtained from OpenEmbedded.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+--- sgml-common-0.6.3/bin/Makefile.am~autohell.patch	2001-01-30 15:42:21.000000000 +0100
++++ sgml-common-0.6.3/bin/Makefile.am	2004-06-17 11:51:11.000000000 +0200
+@@ -1,6 +1,5 @@
+ primitive_scripts = sgmlwhich
+ 
+-bindir = $(prefix)/bin
+ bin_SCRIPTS = install-catalog $(primitive_scripts)
+ 
+ EXTRA_DIST =  install-catalog.in $(primitive_scripts)
+--- /dev/null	2003-09-23 19:59:22.000000000 +0200
++++ sgml-common-0.6.3/bin/sgmlwhich.in	2004-06-17 11:51:11.000000000 +0200
+@@ -0,0 +1,7 @@
++#!/bin/sh
++# Location of the main configuration file for consistency with non-LSB platforms
++# Send any comments to Eric Bischoff <eric@caldera.de>
++# This program is under GPL license. See LICENSE file for details.
++
++echo "@sysconfdir@/sgml/sgml.conf"
++# Simple, isn't it? ;-)
+--- /dev/null	2003-09-23 19:59:22.000000000 +0200
++++ sgml-common-0.6.3/config/sgml.conf.in	2004-06-17 11:51:11.000000000 +0200
+@@ -0,0 +1,2 @@
++SGML_BASE_DIR=@datadir@/sgml
++SGML_CATALOGS_DIR=@sysconfdir@/sgml
+--- sgml-common-0.6.3/configure.in~autohell.patch	2001-05-25 18:40:54.000000000 +0200
++++ sgml-common-0.6.3/configure.in	2004-06-17 11:53:22.000000000 +0200
+@@ -3,11 +3,6 @@
+ 
+ AM_INIT_AUTOMAKE(sgml-common, 0.6.3)
+ 
+-docdir='$(prefix)/doc'
+-AC_SUBST(docdir)
+-
+-dnl Checks for programs.
+-
+ dnl Checks for libraries.
+ 
+ dnl Checks for header files.
+@@ -18,6 +13,5 @@
+ 
+ AC_OUTPUT(Makefile \
+           bin/Makefile bin/install-catalog \
+-          config/Makefile \
+-          doc/Makefile doc/HTML/Makefile doc/man/Makefile doc/refentry/Makefile \
++          config/Makefile config/sgml.conf bin/sgmlwhich \
+           sgml-iso-entities/Makefile xml-iso-entities/Makefile)
+
+--- sgml-common-0.6.3/Makefile.am~no-docs	2001-05-25 18:22:01.000000000 +0200
++++ sgml-common-0.6.3/Makefile.am	2004-06-17 11:49:09.000000000 +0200
+@@ -1,4 +1,4 @@
+-SUBDIRS = bin config doc sgml-iso-entities xml-iso-entities
++SUBDIRS = bin config sgml-iso-entities xml-iso-entities
+ 
+ sgmlcodir = $(prefix)/share/sgml
+ sgmlco_DATA = xml.dcl
diff --git a/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb b/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
new file mode 100644
index 0000000..7e9b923
--- /dev/null
+++ b/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
@@ -0,0 +1,50 @@
+SUMMARY = "Base utilities for working with SGML and XML"
+DESCRIPTION = "The sgml-common package gathers very basic \
+stuff necessary to work with SGML and XML, such as xml.dcl, \
+a SGML declaration of XML; iso-entities, a list of the basic \
+SGML ISO entities; and install-catalog, a script used to \
+add entries to (or remove entries from) centralized catalogs \
+whose entries are pointers to SGML open catalogs, \
+as defined by OASIS."
+HOMEPAGE = "http://sources.redhat.com/docbook-tools/"
+LICENSE = "GPLv2"
+# The COPYING file sgml-common ships with is just a symlink to
+# /usr/share/automake/COPYING, which means we can't verify it
+# using our normal means. :( Hash the README file instead as
+# LIC_FILES_CHKSUM is still required.
+LIC_FILES_CHKSUM = "file://README;md5=197bd940bf13548ac2198e4f77d3da92"
+SECTION = "base"
+
+PR = "r0"
+
+require sgml-common_${PV}.bb
+inherit native
+
+S = "${WORKDIR}/sgml-common-${PV}"
+
+SYSROOT_PREPROCESS_FUNCS += "sgml_common_native_mangle"
+
+do_install_append() {
+	# install-catalog script contains hard-coded references to
+	# {sysconfdir}. Change it to ${D}${sysconfdir}.
+	sed -i -e "s|${sysconfdir}/sgml|${D}${sysconfdir}/sgml|g" ${D}${bindir}/install-catalog
+
+	${D}${bindir}/install-catalog \
+		--add ${D}${sysconfdir}/sgml/sgml-ent.cat \
+		${D}${datadir}/sgml/sgml-iso-entities-8879.1986/catalog
+
+	${D}${bindir}/install-catalog \
+		--add ${D}${sysconfdir}/sgml/sgml-docbook.cat \
+		${D}${sysconfdir}/sgml/sgml-ent.cat
+}
+
+sgml_common_native_mangle () {
+	# Revert back to ${sysconfdir} path in install-catalog
+	sed -i -e "s|${D}${sysconfdir}/sgml|${sysconfdir}/sgml|g" ${SYSROOT_DESTDIR}${STAGING_BINDIR}/install-catalog
+	# Change path from ${D}${datadir}/sgml/sgml-iso-entities-8879.1986/catalog to ${datadir}/sgml/sgml-iso-entities-8879.1986/catalog in sgml-ent.cat
+	sed -i -e "s|${D}${datadir}/sgml/sgml-iso-entities-8879.1986/catalog|${datadir}/sgml/sgml-iso-entities-8879.1986/catalog|g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-ent.cat
+	# Change path from ${D}${sysconfdir}/sgml/sgml-ent.cat|${sysconfdir}/sgml/sgml-ent.cat to ${sysconfdir}/sgml/sgml-ent.cat in sgml-ent.cat
+	sed -i -e "s|${D}${sysconfdir}/sgml/sgml-ent.cat|${sysconfdir}/sgml/sgml-ent.cat|g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-docbook.cat
+	# Remove ${D} path from catalog file created by install-catalog script
+	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/catalog
+}
diff --git a/meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb b/meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
new file mode 100644
index 0000000..78afa39
--- /dev/null
+++ b/meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
@@ -0,0 +1,53 @@
+SUMMARY = "Base utilities for working with SGML and XML"
+DESCRIPTION = "The sgml-common package gathers very basic \
+stuff necessary to work with SGML and XML, such as xml.dcl, \
+a SGML declaration of XML; iso-entities, a list of the basic \
+SGML ISO entities; and install-catalog, a script used to \
+add entries to (or remove entries from) centralized catalogs \
+whose entries are pointers to SGML open catalogs, \
+as defined by OASIS."
+HOMEPAGE = "http://sources.redhat.com/docbook-tools/"
+LICENSE = "GPLv2"
+# The COPYING file sgml-common ships with is just a symlink to
+# /usr/share/automake/COPYING, which means we can't verify it
+# using our normal means. :( Hash the README file instead as
+# LIC_FILES_CHKSUM is still required.
+LIC_FILES_CHKSUM = "file://README;md5=197bd940bf13548ac2198e4f77d3da92"
+SECTION = "base"
+
+PR = "r0"
+
+SRC_URI = "ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/sgml-common-${PV}.tgz \
+           file://autohell.patch"
+
+SRC_URI[md5sum] = "103c9828f24820df86e55e7862e28974"
+SRC_URI[sha256sum] = "7dc418c1d361123ffc5e45d61f1b97257940a8eb35d0bfbbc493381cc5b1f959"
+
+inherit autotools
+
+do_compile_append() {
+	# install-catalog script contains hardcoded references to /etc/sgml
+	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" bin/install-catalog
+}
+
+FILES_sgml-common_append = " ${datadir}/sgml"
+
+pkg_postinst() {
+	install-catalog \
+		--add ${sysconfdir}/sgml/sgml-ent.cat \
+		${datadir}/sgml/sgml-iso-entities-8879.1986/catalog
+
+	install-catalog \
+		--add ${sysconfdir}/sgml/sgml-docbook.cat \
+		${sysconfdir}/sgml/sgml-ent.cat
+}
+
+pkg_postrm() {
+	install-catalog \
+		--remove ${sysconfdir}/sgml/sgml-ent.cat \
+		${datadir}/sgml/sgml-iso-entities-8879.1986/catalog
+
+	install-catalog \
+		--remove ${sysconfdir}/sgml/sgml-docbook.cat \
+		${sysconfdir}/sgml/sgml-ent.cat
+}
-- 
1.7.3.5


