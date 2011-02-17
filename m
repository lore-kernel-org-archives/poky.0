Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94C394C80093
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 17:40:35 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id E33663096A
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 18:40:30 -0500 (EST)
Message-Id: <c70a4c517b599e6d90b28e6e36dd448f6d8b68df.1297985951.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297985951.git.scott.a.garman@intel.com>
References: <cover.1297985951.git.scott.a.garman@intel.com>
Old-Date: Thu, 17 Feb 2011 13:33:27 -0800
Date: Thu, 17 Feb 2011 15:40:28 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: E33663096A.B5273
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/4] docbook-utils-native: set SGML_EXTRA_CATALOGS in jw
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
X-List-Received-Date: Thu, 17 Feb 2011 23:40:35 -0000

From: Scott Garman <scott.a.garman@intel.com>

Point jw to the native sysroot master catalog.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-utils/docbook-utils-native_0.6.14.bb   |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb b/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
index 2263c0a..c0084b3 100644
--- a/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
+++ b/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
@@ -8,7 +8,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "openjade-native sgmlspl-native docbook-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbook-utils-${PV}.tar.gz"
 
@@ -22,6 +22,9 @@ do_configure_prepend() {
 	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" bin/jw.in
 	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" doc/man/Makefile.am
 	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" doc/HTML/Makefile.am
+
+	# Point jw to the native sysroot catalog
+	sed -i -e 's|^SGML_EXTRA_CATALOGS=""|SGML_EXTRA_CATALOGS=":${sysconfdir}/sgml/catalog"|g' bin/jw.in
 }
 
 do_install() {
-- 
1.7.1


