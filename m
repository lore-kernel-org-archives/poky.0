Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D4154C811AF
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 19:45:40 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="597538629"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
Message-Id: <3ee10120536ecbd51054206ab7e4934131b552a0.1296265268.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296265268.git.scott.a.garman@intel.com>
References: <cover.1296265268.git.scott.a.garman@intel.com>
Old-Date: Tue, 25 Jan 2011 15:29:31 -0800
Date: Fri, 28 Jan 2011 17:46:32 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 3/9] docbook-dsssl-stylesheets: new recipe v1.79
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
X-List-Received-Date: Sat, 29 Jan 2011 01:45:40 -0000

From: Scott Garman <scott.a.garman@intel.com>

Recipe migrated from OpenEmbedded.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-dsssl-stylesheets-native_1.79.bb       |   52 ++++++++++++++++++++
 1 files changed, 52 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb

diff --git a/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
new file mode 100644
index 0000000..92de638
--- /dev/null
+++ b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
@@ -0,0 +1,52 @@
+SUMMARY = "DSSSL stylesheets used to transform SGML and XML DocBook files"
+DESCRIPTION = "DSSSL stylesheets used to transform SGML and XML DocBook files"
+HOMEPAGE= "http://docbook.sourceforge.net"
+# Simple persmissive
+LICENSE = "DSSSL"
+LIC_FILES_CHKSUM = "file://README;beginline=41;endline=74;md5=875385159b2ee76ecf56136ae7f542d6"
+
+DEPENDS = "sgml-common-native"
+
+PR = "r0"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/docbook/docbook-dsssl-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "bc192d23266b9a664ca0aba4a7794c7c"
+SRC_URI[sha256sum] = "2f329e120bee9ef42fbdd74ddd60e05e49786c5a7953a0ff4c680ae6bdf0e2bc"
+
+S = "${WORKDIR}/docbook-dsssl-${PV}"
+
+inherit native
+
+SYSROOT_PREPROCESS_FUNCS += "docbook_dssl_stylesheets_native_mangle"
+
+do_install () {
+	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/docbook-dsssl.html
+	# for details.
+	install -d ${D}${bindir}
+	install -m 0755 bin/collateindex.pl ${D}${bindir}
+
+	install -d ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
+	install -m 0644 catalog ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
+	cp -PpRr common ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
+
+	install-catalog --add ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat \
+		${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/catalog
+
+	install-catalog --add ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat \
+		${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/common/catalog
+
+	install-catalog --add ${sysconfdir}/sgml/sgml-docbook.cat \
+		${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
+
+	# Move these to the image directory so they get staged properly.
+	install -d ${D}${sysconfdir}/sgml
+	cp ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat ${D}${sysconfdir}/sgml/
+	cp ${sysconfdir}/sgml/sgml-docbook.cat ${D}${sysconfdir}/sgml/
+	cp ${sysconfdir}/sgml/catalog ${D}${sysconfdir}/sgml/
+}
+
+docbook_dssl_stylesheets_native_mangle () {
+	# Remove the image directory path ${D} from the .cat file.
+	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
+}
-- 
1.7.3.5


