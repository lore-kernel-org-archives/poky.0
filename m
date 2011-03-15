Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A78D4C8009D
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:30 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Mar 2011 16:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="403176222"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 16:42:29 -0700
Message-Id: <f735f12377dac6fa6eb05fd1c004f7d5a70c43b8.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Mar 2011 14:43:26 -0600
Date: Tue, 15 Mar 2011 17:43:21 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 04/13] documentation/adt-manual/Makefile: Initial Makefile
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:30 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These edits take the Makefile from the version I copied over from
the Kernel manual to create the initial version for the ADT Manual.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/Makefile |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/adt-manual/Makefile b/documentation/adt-manual/Makefile
index dcfcb92..ec19bce 100644
--- a/documentation/adt-manual/Makefile
+++ b/documentation/adt-manual/Makefile
@@ -14,7 +14,7 @@ XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
 all: html pdf tarball
 
 pdf:
-	../tools/poky-docbook-to-pdf kernel-manual.xml ../template
+	../tools/poky-docbook-to-pdf adt-manual.xml ../template
 
 ##
 # These URI should be rewritten by your distribution's xml catalog to
@@ -23,16 +23,16 @@ pdf:
 html:
 #       See http://www.sagehill.net/docbookxsl/HtmlOutput.html 
 
-#	xsltproc $(XSLTOPTS) -o yocto-project-qs.html $(XSL_XHTML_URI) yocto-project-qs.xml
-	xsltproc $(XSLTOPTS) -o kernel-manual.html yocto-project-kernel-manual-customization.xsl kernel-manual.xml
+#	xsltproc $(XSLTOPTS) -o adt-manual.html $(XSL_XHTML_URI) adt-manual.xml
+	xsltproc $(XSLTOPTS) -o adt-manual.html adt-manual-customization.xsl adt-manual.xml
 
 tarball: html
-	tar -cvzf kernel-manual.tgz kernel-manual.html style.css figures/kernel-title.png figures/kernel-big-picture.png figures/kernel-architecture-overview.png
+	tar -cvzf adt-manual.tgz adt-manual.html style.css figures/adt-title.png figures/yocto-project-transp.png
 
 validate:
-	xmllint --postvalid --xinclude --noout kernel-manual.xml
+	xmllint --postvalid --xinclude --noout adt-manual.xml
 
-OUTPUTS = kernel-manual.tgz kernel-manual.html kernel-manual.pdf
+OUTPUTS = adt-manual.tgz adt-manual.html adt-manual.pdf
 SOURCES = *.png *.xml *.css
 
 publish:
-- 
1.7.1


