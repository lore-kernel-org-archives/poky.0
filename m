Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5027C4C80A4F
	for <poky@yoctoproject.org>; Tue, 24 May 2011 13:39:43 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 May 2011 11:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,262,1304319600"; 
   d="scan'208";a="7928038"
Received: from unknown (HELO [10.255.12.84]) ([10.255.12.84])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2011 11:39:42 -0700
Message-ID: <4DDBFB6E.9030309@intel.com>
Date: Tue, 24 May 2011 11:39:42 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH 1/1] [DOCS] documentation: Fixing the build system for docs
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
X-List-Received-Date: Tue, 24 May 2011 18:39:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

[YOCTO #1025]

A few issues have cropped up with documentation. These changes
fix the following issues.

1. Multiple Makefiles. There really is no need for this.
2. Unable to maintain more than one version of the docs
    on the webserver.

This is a quick fix to enable the above. In order to build the
documentation, at the top level, issue a:

make all DOC=<doc directory name> DISTROVERSION=<MM.mm>

make all DOC=kernel-manual DISTROVERSION=1.1

Also, some changes need to occur on the webserver to fully
incorporate these fixes.

http://www.yoctoproject.org/documentation/

The docs are now published to:

http://www.yoctoproject.org/docs/<Release MM.mm>/<doc name>

The main page should be changed to point not only to the
current doc release, but also to the prior releases. This
will enable us to maintain prior release documentation without
stomping over it when we publish new docs.

Also, we'll need to repoint the yocto-quick-start link to
yocto-project-qs. Or rename documentation/yocto-project-qs/* to
support the website naming.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
  documentation/{poky-ref-manual => }/Makefile       |   18 ++++----
  documentation/adt-manual/Makefile                  |   44 --------------------
  documentation/bsp-guide/Makefile                   |   37 ----------------
  documentation/kernel-manual/Makefile               |   38 -----------------
  ...ization.xsl => kernel-manual-customization.xsl} |    0
  documentation/yocto-project-qs/Makefile            |   34 ---------------
  6 files changed, 9 insertions(+), 162 deletions(-)
  rename documentation/{poky-ref-manual => }/Makefile (57%)
  delete mode 100644 documentation/adt-manual/Makefile
  delete mode 100644 documentation/bsp-guide/Makefile
  delete mode 100644 documentation/kernel-manual/Makefile
  rename documentation/kernel-manual/{yocto-project-kernel-manual-customization.xsl => kernel-manual-customization.xsl} 
(100%)
  delete mode 100644 documentation/yocto-project-qs/Makefile

diff --git a/documentation/poky-ref-manual/Makefile b/documentation/Makefile
similarity index 57%
rename from documentation/poky-ref-manual/Makefile
rename to documentation/Makefile
index bb70a05..57f9b8d 100644
--- a/documentation/poky-ref-manual/Makefile
+++ b/documentation/Makefile
@@ -14,25 +14,25 @@ XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
  all: html pdf tarball

  pdf:
-	../tools/poky-docbook-to-pdf poky-ref-manual.xml ../template
-
+	cd $(DOC); ../tools/poky-docbook-to-pdf $(DOC).xml ../template; cd ..
+
  html:
  #       See http://www.sagehill.net/docbookxsl/HtmlOutput.html
-	xsltproc $(XSLTOPTS) -o poky-ref-manual.html poky-ref-manual-customization.xsl poky-ref-manual.xml
+	cd $(DOC); xsltproc $(XSLTOPTS) -o $(DOC).html $(DOC)-customization.xsl $(DOC).xml; cd ..

  tarball: html
-	tar -cvzf poky-ref-manual.tgz poky-ref-manual.html style.css figures/poky-title.png figures/ss-sato.png
+	cd $(DOC); tar -cvzf $(DOC).tgz $(DOC).html $(DOC).pdf style.css figures/*.png; cd ..

  validate:
-	xmllint --postvalid --xinclude --noout poky-ref-manual.xml
+	cd $(DOC); xmllint --postvalid --xinclude --noout $(DOC).xml; cd ..

-MANUALS = poky-ref-manual.html poky-ref-manual.pdf
-FIGURES = figures/*.png
+MANUALS = $(DOC)/$(DOC).html $(DOC)/$(DOC).pdf
+FIGURES = $(DOC)/figures/*.png
  STYLESHEET = *.css

  publish:
-	scp -r $(MANUALS) $(STYLESHEET) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/poky-ref-manual
-	scp -r $(FIGURES) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/poky-ref-manual/figures
+    scp -r $(MANUALS) $(STYLESHEET) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/$(DISTROVERSION)/$(DOC)
+	scp -r $(FIGURES) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/$(DISTROVERSION)/$(DOC)/figures

  clean:
  	rm -f $(OUTPUTS)
diff --git a/documentation/adt-manual/Makefile b/documentation/adt-manual/Makefile
deleted file mode 100644
index fe16a57..0000000
--- a/documentation/adt-manual/Makefile
+++ /dev/null
@@ -1,44 +0,0 @@
-XSLTOPTS = --stringparam html.stylesheet style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  appendix.autolabel A \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-         --xinclude
-
-##
-# These URI should be rewritten by your distribution's xml catalog to
-# match your localy installed XSL stylesheets.
-XSL_BASE_URI  = http://docbook.sourceforge.net/release/xsl/current
-XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
-
-all: html pdf tarball
-
-pdf:
-	../tools/poky-docbook-to-pdf adt-manual.xml ../template
-
-##
-# These URI should be rewritten by your distribution's xml catalog to
-# match your localy installed XSL stylesheets.
-
-html:
-#       See http://www.sagehill.net/docbookxsl/HtmlOutput.html
-
-#	xsltproc $(XSLTOPTS) -o adt-manual.html $(XSL_XHTML_URI) adt-manual.xml
-	xsltproc $(XSLTOPTS) -o adt-manual.html adt-manual-customization.xsl adt-manual.xml
-
-tarball: html
-	tar -cvzf adt-manual.tgz adt-manual.html adt-manual.pdf style.css figures/adt-title.png
-
-validate:
-	xmllint --postvalid --xinclude --noout adt-manual.xml
-
-MANUALS = adt-manual.html adt-manual.pdf
-FIGURES = figures/*.png
-STYLESHEET = *.css
-
-publish:
-	scp -r $(MANUALS) $(STYLESHEET) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/adt-manual
-	scp -r $(FIGURES) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/adt-manual/figures
-
-clean:
-	rm -f $(MANUALS)
diff --git a/documentation/bsp-guide/Makefile b/documentation/bsp-guide/Makefile
deleted file mode 100644
index 36ca48a..0000000
--- a/documentation/bsp-guide/Makefile
+++ /dev/null
@@ -1,37 +0,0 @@
-XSLTOPTS = --stringparam html.stylesheet style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-         --xinclude
-
-##
-# These URI should be rewritten by your distribution's xml catalog to
-# match your localy installed XSL stylesheets.
-XSL_BASE_URI  = http://docbook.sourceforge.net/release/xsl/current
-XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
-
-all: html pdf tarball
-
-pdf:
-	../tools/poky-docbook-to-pdf bsp-guide.xml ../template
-
-html:
-#       See http://www.sagehill.net/docbookxsl/HtmlOutput.html
-	xsltproc $(XSLTOPTS) -o bsp-guide.html bsp-guide-customization.xsl bsp-guide.xml
-
-tarball: html
-	tar -cvzf bsp-guide.tgz style.css bsp-guide.html bsp-guide.pdf figures/bsp-title.png
-
-validate:
-	xmllint --postvalid --xinclude --noout bsp-guide.xml
-
-MANUALS = bsp-guide.html bsp-guide.pdf
-FIGURES = figures/*.png
-STYLESHEET = *.css
-
-publish:
-	scp -r $(MANUALS) $(STYLESHEET) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/bsp-guide
-	scp -r $(FIGURES) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/bsp-guide/figures
-
-clean:
-	rm -f $(OUTPUTS)
diff --git a/documentation/kernel-manual/Makefile b/documentation/kernel-manual/Makefile
deleted file mode 100644
index b691da8..0000000
--- a/documentation/kernel-manual/Makefile
+++ /dev/null
@@ -1,38 +0,0 @@
-XSLTOPTS = --stringparam html.stylesheet style.css \
-           --stringparam  chapter.autolabel 1 \
-           --stringparam  appendix.autolabel A \
-           --stringparam  section.autolabel 1 \
-           --stringparam  section.label.includes.component.label 1 \
-         --xinclude
-
-##
-# These URI should be rewritten by your distribution's xml catalog to
-# match your localy installed XSL stylesheets.
-XSL_BASE_URI  = http://docbook.sourceforge.net/release/xsl/current
-XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
-
-all: html pdf tarball
-
-pdf:
-	../tools/poky-docbook-to-pdf kernel-manual.xml ../template
-
-html:
-#       See http://www.sagehill.net/docbookxsl/HtmlOutput.html
-	xsltproc $(XSLTOPTS) -o kernel-manual.html yocto-project-kernel-manual-customization.xsl kernel-manual.xml
-
-tarball: html
-	tar -cvzf kernel-manual.tgz kernel-manual.html kernel-manual.pdf style.css figures/kernel-title.png 
figures/kernel-architecture-overview.png
-
-validate:
-	xmllint --postvalid --xinclude --noout kernel-manual.xml
-
-MANUALS = kernel-manual.html kernel-manual.pdf
-FIGURES = figures/*.png
-STYLESHEET = *.css
-
-publish:
-	scp -r $(MANUALS) $(STYLESHEET) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/kernel-manual
-	scp -r $(FIGURES) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/kernel-manual/figures
-
-clean:
-	rm -f $(OUTPUTS)
diff --git a/documentation/kernel-manual/yocto-project-kernel-manual-customization.xsl 
b/documentation/kernel-manual/kernel-manual-customization.xsl
similarity index 100%
rename from documentation/kernel-manual/yocto-project-kernel-manual-customization.xsl
rename to documentation/kernel-manual/kernel-manual-customization.xsl
diff --git a/documentation/yocto-project-qs/Makefile b/documentation/yocto-project-qs/Makefile
deleted file mode 100644
index 2c7bdf8..0000000
--- a/documentation/yocto-project-qs/Makefile
+++ /dev/null
@@ -1,34 +0,0 @@
-XSLTOPTS = --stringparam html.stylesheet style.css \
-         --xinclude
-
-XSL_BASE_URI  = http://docbook.sourceforge.net/release/xsl/current
-XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
-
-all: html tarball
-
-##
-# These URI should be rewritten by your distribution's xml catalog to
-# match your localy installed XSL stylesheets.
-
-html:
-#       See http://www.sagehill.net/docbookxsl/HtmlOutput.html
-
-#	xsltproc $(XSLTOPTS) -o yocto-project-qs.html $(XSL_XHTML_URI) yocto-project-qs.xml
-	xsltproc $(XSLTOPTS) -o yocto-project-qs.html yocto-project-qs-customization.xsl yocto-project-qs.xml
-
-tarball: html
-	tar -cvzf yocto-project-qs.tgz yocto-project-qs.html style.css figures/yocto-environment.png 
figures/building-an-image.png figures/using-a-pre-built-image.png figures/yocto-project-transp.png
-
-validate:
-	xmllint --postvalid --xinclude --noout yocto-project-qs.xml
-
-MANUALS = yocto-project-qs.html
-FIGURES = figures/*.png
-STYLESHEET = *.css
-
-publish:
-	scp -r $(MANUALS) $(STYLESHEET) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/yocto-quick-start
-	scp -r $(FIGURES) www.yoctoproject.org:/srv/www/www.yoctoproject.org-docs/yocto-quick-start/figures
-
-clean:
-	rm -f $(MANUALS)
-- 
1.7.1

