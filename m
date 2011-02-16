Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 246A54C80A1D
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 22:33:23 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id BC7DC308F8
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:33:12 -0500 (EST)
Message-Id: <ed6459f630018c6128197fcdc9b970755823086b.1297830466.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297830466.git.scott.a.garman@intel.com>
References: <cover.1297830466.git.scott.a.garman@intel.com>
Old-Date: Wed, 9 Feb 2011 19:44:21 -0800
Date: Tue, 15 Feb 2011 20:33:09 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: BC7DC308F8.43A0B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/5] docbook-utils-native: new recipe v0.6.14
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
X-List-Received-Date: Wed, 16 Feb 2011 04:33:23 -0000

From: Scott Garman <scott.a.garman@intel.com>

Recipe derived from OpenEmbedded. Starting with a -native only
version for now.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-utils/docbook-utils-native_0.6.14.bb   |   48 ++++++++++++++++++++
 1 files changed, 48 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb

diff --git a/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb b/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
new file mode 100644
index 0000000..2263c0a
--- /dev/null
+++ b/meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
@@ -0,0 +1,48 @@
+SUMMARY = "Utilities for formatting and manipulating DocBook documents"
+DESCRIPTION = "A collection of all the free software tools you need to \
+work on and format DocBook documents."
+HOMEPAGE = "http://sources.redhat.com/docbook-tools/"
+SECTION = "console/utils"
+PRIORITY = "required"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+DEPENDS = "openjade-native sgmlspl-native docbook-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native"
+
+PR = "r0"
+
+SRC_URI = "ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbook-utils-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "6b41b18c365c01f225bc417cf632d81c"
+SRC_URI[sha256sum] = "48faab8ee8a7605c9342fb7b906e0815e3cee84a489182af38e8f7c0df2e92e9"
+
+inherit autotools native
+
+do_configure_prepend() {
+	# Fix hard-coded references to /etc/sgml
+	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" bin/jw.in
+	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" doc/man/Makefile.am
+	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" doc/HTML/Makefile.am
+}
+
+do_install() {
+	install -d ${D}${bindir}
+	# Install the binaries and a bunch of other commonly used names for them.
+	for doctype in html ps dvi man pdf rtf tex texi txt
+	do
+		install -m 0755 ${S}/bin/docbook2$doctype ${D}${bindir}/
+		ln -sf docbook2x-$doctype ${D}${bindir}/db2$doctype
+		ln -sf docbook2$doctype ${D}${bindir}/db2$doctype
+		ln -sf docbook2$doctype ${D}${bindir}/docbook-to-$doctype
+	done
+
+	install -m 0755 ${S}/bin/jw ${D}${bindir}/
+	for i in backends/dvi backends/html backends/man \
+		backends/pdf backends/ps backends/rtf backends/tex \
+		backends/texi backends/txt frontends/docbook \
+		helpers/docbook2man-spec.pl helpers/docbook2texi-spec.pl \
+		docbook-utils.dsl
+	do
+		install -d ${D}${datadir}/sgml/docbook/utils-${PV}/`dirname $i`
+		install ${S}/$i ${D}${datadir}/sgml/docbook/utils-${PV}/$i
+	done
+}
-- 
1.7.1


