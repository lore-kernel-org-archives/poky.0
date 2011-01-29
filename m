Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40CC34C81146
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 19:45:40 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="597538628"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
Message-Id: <d1d85cd79df2702a7e15ee5198422cf85d82d08b.1296265268.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296265268.git.scott.a.garman@intel.com>
References: <cover.1296265268.git.scott.a.garman@intel.com>
Old-Date: Tue, 25 Jan 2011 15:05:45 -0800
Date: Fri, 28 Jan 2011 17:46:32 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 2/9] docbook-sgml-dtd: new recipes - v3.1, v4.1, v4.5
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

These are recipes for DTDs commonly used when generating
documentation for free software. Recipes dervied from the
versions in OpenEmbedded.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-sgml-dtd-3.1-native.bb                 |   23 +++++++++
 .../docbook-sgml-dtd-4.1-native.bb                 |   23 +++++++++
 .../docbook-sgml-dtd-4.5-native.bb                 |   17 ++++++
 .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   53 ++++++++++++++++++++
 .../docbook-sgml-dtd/files/LICENSE-OASIS           |   16 ++++++
 5 files changed, 132 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/files/LICENSE-OASIS

diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
new file mode 100644
index 0000000..a7df4f9
--- /dev/null
+++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
@@ -0,0 +1,23 @@
+require docbook-sgml-dtd-native.inc
+
+LICENSE = "OASIS"
+LIC_FILES_CHKSUM = "file://LICENSE-OASIS;md5=c608985dd5f7f215e669e7639a0b1d2e"
+
+DTD_VERSION = "3.1"
+
+PR = "${INC_PR}.0"
+
+# Note: the upstream sources are not distributed with a license file.
+# LICENSE-OASIS is included as a "patch" to workaround this. When
+# upgrading this recipe, please verify whether this is still needed.
+SRC_URI = "http://www.docbook.org/sgml/3.1/docbk31.zip \
+           file://LICENSE-OASIS"
+
+SRC_URI[md5sum] = "432749c0c806dbae81c8bcb70da3b5d3"
+SRC_URI[sha256sum] = "20261d2771b9a052abfa3d8fab1aa62be05791a010281c566f9073bf0e644538"
+
+do_compile() {
+	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd-3.html
+	# for details.
+	sed -i -e '/ISO 8879/d' -e 's|DTDDECL "-//OASIS//DTD DocBook V3.1//EN"|SGMLDECL|g' docbook.cat
+}
diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
new file mode 100644
index 0000000..88c9396
--- /dev/null
+++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
@@ -0,0 +1,23 @@
+require docbook-sgml-dtd-native.inc
+
+LICENSE = "OASIS"
+LIC_FILES_CHKSUM = "file://LICENSE-OASIS;md5=c608985dd5f7f215e669e7639a0b1d2e"
+
+DTD_VERSION = "4.1"
+
+PR = "${INC_PR}.0"
+
+# Note: the upstream sources are not distributed with a license file.
+# LICENSE-OASIS is included as a "patch" to workaround this. When
+# upgrading this recipe, please verify whether this is still needed.
+SRC_URI = "http://docbook.org/sgml/4.1/docbk41.zip \
+           file://LICENSE-OASIS"
+
+SRC_URI[md5sum] = "489f6ff2a2173eb1e14216c10533ede2"
+SRC_URI[sha256sum] = "deaafcf0a3677692e7ad4412c0e41c1db3e9da6cdcdb3dd32b2cc1f9c97d6311"
+
+do_compile() {
+	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd.html
+	# for details.
+	sed -i -e '/ISO 8879/d' -e '/gml/d' docbook.cat
+}
diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
new file mode 100644
index 0000000..6c464f4
--- /dev/null
+++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
@@ -0,0 +1,17 @@
+require docbook-sgml-dtd-native.inc
+
+LICENSE = "OASIS"
+LIC_FILES_CHKSUM = "file://LICENSE-OASIS;md5=c608985dd5f7f215e669e7639a0b1d2e"
+
+DTD_VERSION = "4.5"
+
+PR = "${INC_PR}.0"
+
+SRC_URI[md5sum] = "07c581f4bbcba6d3aac85360a19f95f7"
+SRC_URI[sha256sum] = "8043e514e80c6c19cb146b5d37937d1305bf3abf9b0097c36df7f70f611cdf43"
+
+do_compile() {
+	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd.html
+	# for details.
+	sed -i -e '/ISO 8879/d' -e'/gml/d' docbook.cat
+}
diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
new file mode 100644
index 0000000..162051f
--- /dev/null
+++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
@@ -0,0 +1,53 @@
+# The DTDs of the various versions have to be installed in parallel and
+# should not replace each other. The installation step is common for
+# all versions and just differs in ${DTD_VERSION} which is set in each
+# version recipe.
+#
+# The DTDs do have some quirks (see LFS documentation).
+SUMMARY = "Document type definitions for verification of SGML data files"
+DESCRIPTION = "Document type definitions for verification of SGML data \
+files against the DocBook rule set"
+HOMEPAGE = "http://www.docbook.org/sgml/"
+
+DEPENDS = "sgml-common-native"
+
+# Note: the upstream sources are not distributed with a license file.
+# LICENSE-OASIS is included as a "patch" to workaround this. When
+# upgrading this recipe, please verify whether this is still needed.
+SRC_URI = "http://www.docbook.org/sgml/${DTD_VERSION}/docbook-${DTD_VERSION}.zip \
+           file://LICENSE-OASIS"
+
+# The .zip file extracts to the current dir
+S = "${WORKDIR}"
+
+INC_PR = "r0"
+
+SYSROOT_PREPROCESS_FUNCS += "docbook_sgml_dtd_native_mangle"
+
+inherit native
+
+do_install () {
+	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd.html
+	# for details.
+	install -d -m 755 ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}
+	install docbook.cat ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}/catalog
+	cp -PpRr *.dtd *.mod *.dcl ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}
+
+	install-catalog \
+		--add ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat \
+		${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}/catalog
+
+	install-catalog \
+		--add ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat \
+		${sysconfdir}/sgml/sgml-docbook.cat
+
+	# Copy the generated catalog to the image directory for staging.
+	install -d ${D}${sysconfdir}/sgml
+	cp ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat ${D}${sysconfdir}/sgml/
+}
+
+docbook_sgml_dtd_native_mangle () {
+	# Remove the image directory path ${D} from the .cat files.
+	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-docbook.cat || true
+	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat
+}
diff --git a/meta/recipes-devtools/docbook-sgml-dtd/files/LICENSE-OASIS b/meta/recipes-devtools/docbook-sgml-dtd/files/LICENSE-OASIS
new file mode 100644
index 0000000..6da7f5b
--- /dev/null
+++ b/meta/recipes-devtools/docbook-sgml-dtd/files/LICENSE-OASIS
@@ -0,0 +1,16 @@
+Permission to use, copy, modify and distribute the DocBook XML DTD
+and its accompanying documentation for any purpose and without fee
+is hereby granted in perpetuity, provided that the above copyright
+notice and this paragraph appear in all copies.  The copyright
+holders make no representation about the suitability of the DTD for
+any purpose.  It is provided "as is" without expressed or implied
+warranty.
+
+If you modify the DocBook DTD in any way, except for declaring and
+referencing additional sets of general entities and declaring
+additional notations, label your DTD as a variant of DocBook.  See
+the maintenance documentation for more information.
+
+Please direct all questions, bug reports, or suggestions for 
+changes to the docbook@lists.oasis-open.org mailing list. For more
+information, see http://www.oasis-open.org/docbook/.
-- 
1.7.3.5


