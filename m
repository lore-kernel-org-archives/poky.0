Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFA114C80049
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 00:23:20 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 08E1930511
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 01:23:12 -0500 (EST)
Message-Id: <87ab209accbbd7517d667d3ec6f0425c5c95f066.1298441824.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298441824.git.scott.a.garman@intel.com>
References: <cover.1298441824.git.scott.a.garman@intel.com>
Old-Date: Tue, 22 Feb 2011 21:55:40 -0800
Date: Tue, 22 Feb 2011 22:23:10 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 08E1930511.6DDC3
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/4] openjade-native: run install-catalog from SSTATEPOSTINSTFUNCS
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
X-List-Received-Date: Wed, 23 Feb 2011 06:23:20 -0000

From: Scott Garman <scott.a.garman@intel.com>

Otherwise the sgml-docbook.cat catalog would not be updated when a build
from sstate cache is run.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../openjade/openjade-native_1.3.2.bb              |   17 ++++++++++++-----
 1 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
index 3615ec3..e8a7c45 100644
--- a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
+++ b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
@@ -29,6 +29,8 @@ CONFIGUREOPTS := "${@d.getVar('CONFIGUREOPTS', True).replace('--datadir=${datadi
 
 CFLAGS =+ "-I${S}/include"
 
+SSTATEPOSTINSTFUNCS += "openjade_sstate_postinst"
+
 do_install() {
 	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/openjade.html
 	# for details.
@@ -44,13 +46,18 @@ do_install() {
 	install -m 644 dsssl/catalog ${D}${datadir}/sgml/openjade-${PV}
 	install -m 644 dsssl/*.{dtd,dsl,sgm} ${D}${datadir}/sgml/openjade-${PV}
 
-	# The catalog must live in the sysroot and it must be there for
-	# install-catalog to do its thing.
 	install -d ${datadir}/sgml/openjade-${PV}
 	install -m 644 dsssl/catalog ${datadir}/sgml/openjade-${PV}/catalog
-	install-catalog --add ${sysconfdir}/sgml/openjade-${PV}.cat \
-		${datadir}/sgml/openjade-${PV}/catalog
 
-	install-catalog --add ${sysconfdir}/sgml/sgml-docbook.cat \
+	install -d ${D}${sysconfdir}/sgml
+	echo "CATALOG ${datadir}/sgml/openjade-${PV}/catalog" > \
+		${D}${sysconfdir}/sgml/openjade-${PV}.cat
+}
+
+openjade_sstate_postinst() {
+	# Ensure that the catalog file sgml-docbook.cat is properly
+	# updated when the package is installed from sstate cache.
+	install-catalog \
+		--add ${sysconfdir}/sgml/sgml-docbook.cat \
 		${sysconfdir}/sgml/openjade-${PV}.cat
 }
-- 
1.7.1


