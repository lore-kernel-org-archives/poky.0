Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6521B4C80049
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 00:23:14 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 7827D30513
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 01:23:09 -0500 (EST)
Message-Id: <5a425b7f517ba97bb50dab75378be33e79706c77.1298441824.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298441824.git.scott.a.garman@intel.com>
References: <cover.1298441824.git.scott.a.garman@intel.com>
Old-Date: Tue, 22 Feb 2011 18:43:43 -0800
Date: Tue, 22 Feb 2011 22:23:06 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 7827D30513.845B5
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/4] docbook-dsssl-stylesheets-native: run install-catalog from SSTATEPOSTINSTFUNCS
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
X-List-Received-Date: Wed, 23 Feb 2011 06:23:14 -0000

From: Scott Garman <scott.a.garman@intel.com>

Otherwise the sgml-docbook.cat catalog would not be updated when a build
from sstate cache is run.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-dsssl-stylesheets-native_1.79.bb       |   30 ++++++++------------
 1 files changed, 12 insertions(+), 18 deletions(-)

diff --git a/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
index 53e9865..fc4d266 100644
--- a/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
+++ b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://README;beginline=41;endline=74;md5=875385159b2ee76ecf
 
 DEPENDS = "sgml-common-native"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/docbook/docbook-dsssl-${PV}.tar.bz2"
 
@@ -18,7 +18,7 @@ S = "${WORKDIR}/docbook-dsssl-${PV}"
 
 inherit native
 
-SYSROOT_PREPROCESS_FUNCS += "docbook_dssl_stylesheets_native_mangle"
+SSTATEPOSTINSTFUNCS += "docbook_dsssl_stylesheets_sstate_postinst"
 
 do_install () {
 	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/docbook-dsssl.html
@@ -30,23 +30,17 @@ do_install () {
 	install -m 0644 catalog ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
 	cp -v -R * ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
 
-	install-catalog --add ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat \
-		${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/catalog
-
-	install-catalog --add ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat \
-		${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/common/catalog
-
-	install-catalog --add ${sysconfdir}/sgml/sgml-docbook.cat \
-		${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
-
-	# Move these to the image directory so they get staged properly.
 	install -d ${D}${sysconfdir}/sgml
-	cp ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat ${D}${sysconfdir}/sgml/
-	cp ${sysconfdir}/sgml/sgml-docbook.cat ${D}${sysconfdir}/sgml/
-	cp ${sysconfdir}/sgml/catalog ${D}${sysconfdir}/sgml/
+	echo "CATALOG ${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/catalog" > \
+		 ${D}${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
+	echo "CATALOG ${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/common/catalog" >> \
+		${D}${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
 }
 
-docbook_dssl_stylesheets_native_mangle () {
-	# Remove the image directory path ${D} from the .cat file.
-	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
+docbook_dsssl_stylesheets_sstate_postinst () {
+	# Ensure that the catalog file sgml-docbook.cat is properly
+	# updated when the package is installed from sstate cache.
+	install-catalog \
+		--add ${sysconfdir}/sgml/sgml-docbook.cat \
+		${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
 }
-- 
1.7.1


