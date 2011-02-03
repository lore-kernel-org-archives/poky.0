Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D13B34C800A8
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:36:12 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p13JaCHl005841
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 11:36:12 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 11:36:12 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 11:36:12 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 13:32:50 -0600
Message-Id: <fab80ffc7ffcf8874ca386cc6a69347ab624947b.1296761455.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296761455.git.mark.hatle@windriver.com>
References: <cover.1296761455.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296761455.git.mark.hatle@windriver.com>
References: <cover.1296761455.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 03 Feb 2011 19:36:12.0195 (UTC)
	FILETIME=[9D24DF30:01CBC3D9]
Subject: [PATCH 1/2] bitbake.conf & package.bbclass: Use default SUMMARY and DESCRIPTION
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
X-List-Received-Date: Thu, 03 Feb 2011 19:36:13 -0000

A new default SUMMARY and DESCRIPTION was defined for any package that
previously did not contain one.  This value is based on the original
SUMMARY_${PN} value.

The new default SUMMARY and DESCRIPTION is used as a basis for all of
the automatic summary and descriptions for the various package splits,
include ${PN}, ${PN}-dbg, ${PN}-dev, ${PN}-doc, and locales.

A recipe may also override any of the automatic summaries by simply
specifying the value.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package.bbclass |    5 ++++-
 meta/conf/bitbake.conf       |   30 ++++++++++++++++++++++--------
 2 files changed, 26 insertions(+), 9 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index bdc5d93..e64e441 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -289,6 +289,8 @@ python package_do_split_locales() {
 	if mainpkg.find('-dev'):
 		mainpkg = mainpkg.replace('-dev', '')
 
+	summary = bb.data.getVar('SUMMARY', d, True) or pn
+	description = bb.data.getVar('DESCRIPTION', d, True) or "" 
 	for l in locales:
 		ln = legitimize_package_name(l)
 		pkg = pn + '-locale-' + ln
@@ -296,7 +298,8 @@ python package_do_split_locales() {
 		bb.data.setVar('FILES_' + pkg, os.path.join(datadir, 'locale', l), d)
 		bb.data.setVar('RDEPENDS_' + pkg, '%s virtual-locale-%s' % (mainpkg, ln), d)
 		bb.data.setVar('RPROVIDES_' + pkg, '%s-locale %s-translation' % (pn, ln), d)
-		bb.data.setVar('DESCRIPTION_' + pkg, '%s translation for %s' % (l, pn), d)
+		bb.data.setVar('SUMMARY_' + pkg, '%s - %s translations' % (summary, l), d)
+		bb.data.setVar('DESCRIPTION_' + pkg, '%s  This package contains language translation files for the %s locale.' % (description, l), d)
 
 	bb.data.setVar('PACKAGES', ' '.join(packages), d)
 
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 3292a49..f08dda6 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -166,14 +166,28 @@ BP = "${BPN}-${PV}"
 
 SECTION = "base"
 PRIORITY = "optional"
-SUMMARY_${PN} ?= "${PN} version ${PV}-${PR}"
-SUMMARY_${PN}-dbg ?= "Debugging files for ${PN}"
-SUMMARY_${PN}-dev ?= "Development files for ${PN}"
-SUMMARY_${PN}-doc ?= "Documentation files for ${PN}"
-DESCRIPTION_${PN} ?= "${SUMMARY_${PN}}"
-DESCRIPTION_${PN}-dbg ?= "${SUMMARY_${PN}-dbg}"
-DESCRIPTION_${PN}-dev ?= "${SUMMARY_${PN}-dev}"
-DESCRIPTION_${PN}-doc ?= "${SUMMARY_${PN}-doc}"
+SUMMARY ?= "${PN} version ${PV}-${PR}"
+DESCRIPTION ?= "${SUMMARY}"
+
+# The following two are commented out because they result in a recursive
+# definition of the variable in some corner cases.  These are left in
+# to illustrate the intended behavior.
+#SUMMARY_${PN} ?= "${SUMMARY}"
+#DESCRIPTION_${PN} ?= "${DESCRIPTION}"
+
+SUMMARY_${PN}-dbg ?= "${SUMMARY} - Debugging files"
+DESCRIPTION_${PN}-dbg ?= "${DESCRIPTION}  \
+This package contains ELF symbols and related sources for debugging purposes."
+
+SUMMARY_${PN}-dev ?= "${SUMMARY} - Development files"
+DESCRIPTION_${PN}-dev ?= "${DESCRIPTION}  \
+This package contains symbolic links, static binaries, header files, and \
+related items necessary for software development."
+
+SUMMARY_${PN}-doc ?= "${SUMMARY} - Documentation files"
+DESCRIPTION_${PN}-doc ?= "${DESCRIPTION}  \
+This package contains documentation."
+
 LICENSE = "INVALID"
 MAINTAINER = "Yocto Project Team <poky@yoctoproject.org>"
 HOMEPAGE = "unknown"
-- 
1.7.3.4


