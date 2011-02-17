Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id E382B4C8007E
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 17:40:30 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 49D733096A
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 18:40:24 -0500 (EST)
Message-Id: <25c148f8e6b7e9562221437b577b0e1b3670d781.1297985951.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297985951.git.scott.a.garman@intel.com>
References: <cover.1297985951.git.scott.a.garman@intel.com>
Old-Date: Thu, 17 Feb 2011 13:29:02 -0800
Date: Thu, 17 Feb 2011 15:40:21 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 49D733096A.10800
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/4] docbook-dsssl-stylesheets-native: add missing files to install
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
X-List-Received-Date: Thu, 17 Feb 2011 23:40:31 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-dsssl-stylesheets-native_1.79.bb       |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
index 92de638..53e9865 100644
--- a/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
+++ b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://README;beginline=41;endline=74;md5=875385159b2ee76ecf
 
 DEPENDS = "sgml-common-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/docbook/docbook-dsssl-${PV}.tar.bz2"
 
@@ -28,7 +28,7 @@ do_install () {
 
 	install -d ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
 	install -m 0644 catalog ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
-	cp -PpRr common ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
+	cp -v -R * ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
 
 	install-catalog --add ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat \
 		${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/catalog
-- 
1.7.1


