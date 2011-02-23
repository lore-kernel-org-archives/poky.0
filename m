Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24A474C80049
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 00:23:11 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EDFFE30511
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 01:23:05 -0500 (EST)
Message-Id: <f7368c11d3f1f120d8a7397affa6ea26d2bcc59d.1298441824.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298441824.git.scott.a.garman@intel.com>
References: <cover.1298441824.git.scott.a.garman@intel.com>
Old-Date: Tue, 22 Feb 2011 18:36:57 -0800
Date: Tue, 22 Feb 2011 22:23:03 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EDFFE30511.98339
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/4] docbook-sgml-dtd-native.inc: run install-catalog from SSTATEPOSTINSTFUNCS
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
X-List-Received-Date: Wed, 23 Feb 2011 06:23:11 -0000

From: Scott Garman <scott.a.garman@intel.com>

Otherwise the sgml-docbook.cat catalog would not be updated when a build
from sstate cache is run.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   26 +++++++------------
 1 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
index 162051f..83cedbc 100644
--- a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
+++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
@@ -20,9 +20,9 @@ SRC_URI = "http://www.docbook.org/sgml/${DTD_VERSION}/docbook-${DTD_VERSION}.zip
 # The .zip file extracts to the current dir
 S = "${WORKDIR}"
 
-INC_PR = "r0"
+INC_PR = "r1"
 
-SYSROOT_PREPROCESS_FUNCS += "docbook_sgml_dtd_native_mangle"
+SSTATEPOSTINSTFUNCS += "docbook_sgml_dtd_sstate_postinst"
 
 inherit native
 
@@ -33,21 +33,15 @@ do_install () {
 	install docbook.cat ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}/catalog
 	cp -PpRr *.dtd *.mod *.dcl ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}
 
-	install-catalog \
-		--add ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat \
-		${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}/catalog
-
-	install-catalog \
-		--add ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat \
-		${sysconfdir}/sgml/sgml-docbook.cat
-
-	# Copy the generated catalog to the image directory for staging.
 	install -d ${D}${sysconfdir}/sgml
-	cp ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat ${D}${sysconfdir}/sgml/
+	echo "CATALOG ${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}/catalog" > \
+		${D}${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat
 }
 
-docbook_sgml_dtd_native_mangle () {
-	# Remove the image directory path ${D} from the .cat files.
-	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-docbook.cat || true
-	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat
+docbook_sgml_dtd_sstate_postinst () {
+	# Ensure that the catalog file sgml-docbook.cat is properly
+	# updated when the package is installed from sstate cache.
+	install-catalog \
+		--add ${sysconfdir}/sgml/sgml-docbook.cat \
+		${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat
 }
-- 
1.7.1


