Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F9BB4C800A5
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 21:58:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2011 19:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,417,1291622400"; d="scan'208";a="599005738"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2011 19:58:21 -0800
Message-Id: <f015bf4ae6579c8a96c7946e4a829813d3bf3aaa.1296704077.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296704077.git.scott.a.garman@intel.com>
References: <cover.1296704077.git.scott.a.garman@intel.com>
Old-Date: Wed, 2 Feb 2011 16:10:33 -0800
Date: Wed, 02 Feb 2011 19:59:07 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/1] docbook-utils: fix build errors
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
X-List-Received-Date: Thu, 03 Feb 2011 03:58:22 -0000

From: Scott Garman <scott.a.garman@intel.com>

Fix build errors found in my first iteration of the recipe.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-utils/docbook-utils_0.6.14.bb          |   30 ++++++++++++++++++++
 1 files changed, 30 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb b/meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
index 4b053b1..feeb231 100644
--- a/meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
+++ b/meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
@@ -17,4 +17,34 @@ SRC_URI[sha256sum] = "48faab8ee8a7605c9342fb7b906e0815e3cee84a489182af38e8f7c0df
 
 inherit autotools
 
+do_configure_prepend_virtclass-native() {
+	# Fix hard-coded references to /etc/sgml
+	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" bin/jw.in
+	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" doc/man/Makefile.am
+	sed -i -e "s|/etc/sgml|${sysconfdir}/sgml|g" doc/HTML/Makefile.am
+}
+
+do_install_virtclass-native() {
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
+
 BBCLASSEXTEND = "native"
-- 
1.7.3.5


