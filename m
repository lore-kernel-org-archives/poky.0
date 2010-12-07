Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82FA64C811E4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 15:14:29 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id EA9911C08C58
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
X-Auth-Info: AtrY9kE1I+MFs8Ovyqew1tgS6yGqvCtD/tc+Us40+/Q=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 6F03F1C0012F
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 46093333521A
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 320A3D1CA84; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: poky@yoctoproject.org
Date: Tue,  7 Dec 2010 22:14:00 +0100
Message-Id: <1291756443-28767-3-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.3.2
In-Reply-To: <1291756443-28767-1-git-send-email-wd@denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
Subject: [PATCH 2/5] gstreamer: fix build issue with make-3.82
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
X-List-Received-Date: Tue, 07 Dec 2010 21:14:30 -0000

Fix gstreamer-0.10.29 build errors with make-3.82:

make[4]: Entering directory `.../gstreamer-0.10.29-r0/gstreamer-0.10.29/docs/gst'
Makefile:923: *** missing separator (did you mean TAB instead of 8 spaces?).  Stop.

Signed-off-by: Wolfgang Denk <wd@denx.de>
---
 .../gstreamer-0.10.29/gstreamer-make-382.patch     |  178 ++++++++++++++++++++
 .../gstreamer/gstreamer_0.10.30.bb                 |    5 +-
 2 files changed, 181 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstreamer-make-382.patch

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstreamer-make-382.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstreamer-make-382.patch
new file mode 100644
index 0000000..452eef8
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstreamer-make-382.patch
@@ -0,0 +1,178 @@
+--- gstreamer-0.10.29/docs/libs/Makefile.in.ORIG	2010-12-04 05:55:07.453342358 +0100
++++ gstreamer-0.10.29/docs/libs/Makefile.in	2010-12-04 14:23:21.382158587 +0100
+@@ -698,10 +698,10 @@
+ 
+ upload: $(FORMATS)
+ 	@if test "x$(PACKAGE_VERSION_NANO)" = x0; then \
+-            export DOCVERSION=$(VERSION); \
+-        else export DOCVERSION=head; \
+-        fi; \
+-        export DIR=$(DOC_BASE)/gstreamer/$$DOCVERSION/$(DOC); \
++	    export DOCVERSION=$(VERSION); \
++	else export DOCVERSION=head; \
++	fi; \
++	export DIR=$(DOC_BASE)/gstreamer/$$DOCVERSION/$(DOC); \
+ 	ssh $(DOC_SERVER) mkdir -p $$DIR; \
+ 	if echo $(FORMATS) | grep html > /dev/null; then \
+ 	  echo "Preparing docs for upload (rebasing cross-references) ..." ; \
+@@ -853,7 +853,7 @@
+ # make distcheck work
+ distclean-local:
+ 	rm -f $(REPORT_FILES) \
+-                $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
++	        $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
+ 	rm -rf tmpl/*.sgml.bak
+ 	rm -f $(DOC_MODULE).hierarchy
+ 	rm -f *.stamp || true
+@@ -861,7 +861,7 @@
+ 	    rm -f $(DOC_MODULE)-docs.sgml ; \
+ 	    rm -f $(DOC_MODULE).types ; \
+ 	    rm -f $(DOC_MODULE).interfaces ; \
+-            rm -f $(DOC_MODULE)-overrides.txt ; \
++	    rm -f $(DOC_MODULE)-overrides.txt ; \
+ 	    rm -f $(DOC_MODULE).prerequisites ; \
+ 	    rm -f $(DOC_MODULE)-sections.txt ; \
+ 	    rm -rf tmpl/*.sgml ; \
+@@ -870,7 +870,7 @@
+ 
+ maintainer-clean-local: clean
+ 	cd $(srcdir) && rm -rf html \
+-                xml $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
++	        xml $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
+ 
+ # thomas: make docs parallel installable; devhelp requires majorminor too
+ install-data-local:
+@@ -887,7 +887,7 @@
+ 	  $(INSTALL_DATA) $(srcdir)/html/$(DOC_MODULE).devhelp \
+ 	    $(DESTDIR)$(TARGET_DIR)/$(DOC_MODULE)-@GST_MAJORMINOR@.devhelp; \
+ 	  if test -e $(srcdir)/html/$(DOC_MODULE).devhelp2; then \
+-        	    $(INSTALL_DATA) $(srcdir)/html/$(DOC_MODULE).devhelp2 \
++		    $(INSTALL_DATA) $(srcdir)/html/$(DOC_MODULE).devhelp2 \
+ 	           $(DESTDIR)$(TARGET_DIR)/$(DOC_MODULE)-@GST_MAJORMINOR@.devhelp2; \
+ 	  fi; \
+ 	  (which gtkdoc-rebase >/dev/null && \
+@@ -915,7 +915,7 @@
+ 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
+ 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
+ 	cd $(distdir) && rm -f $(DISTCLEANFILES)
+-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
+ 
+ .PHONY : dist-hook-local docs
+ 
+--- gstreamer-0.10.29/docs/gst/Makefile.in.ORIG	2010-12-04 05:55:06.996308940 +0100
++++ gstreamer-0.10.29/docs/gst/Makefile.in	2010-12-04 14:22:30.997447871 +0100
+@@ -509,7 +509,7 @@
+ 	  case '$(am__configure_deps)' in \
+ 	    *$$dep*) \
+ 	      ( cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh ) \
+-	        && { if test -f $@; then exit 0; else break; fi; }; \
++		&& { if test -f $@; then exit 0; else break; fi; }; \
+ 	      exit 1;; \
+ 	  esac; \
+ 	done; \
+@@ -700,10 +700,10 @@
+ 
+ upload: $(FORMATS)
+ 	@if test "x$(PACKAGE_VERSION_NANO)" = x0; then \
+-            export DOCVERSION=$(VERSION); \
+-        else export DOCVERSION=head; \
+-        fi; \
+-        export DIR=$(DOC_BASE)/gstreamer/$$DOCVERSION/$(DOC); \
++	    export DOCVERSION=$(VERSION); \
++	else export DOCVERSION=head; \
++	fi; \
++	export DIR=$(DOC_BASE)/gstreamer/$$DOCVERSION/$(DOC); \
+ 	ssh $(DOC_SERVER) mkdir -p $$DIR; \
+ 	if echo $(FORMATS) | grep html > /dev/null; then \
+ 	  echo "Preparing docs for upload (rebasing cross-references) ..." ; \
+@@ -753,8 +753,8 @@
+ @ENABLE_GTK_DOC_TRUE@	if grep -l '^..*$$' $(srcdir)/$(DOC_MODULE).types > /dev/null;	\
+ @ENABLE_GTK_DOC_TRUE@	then								\
+ @ENABLE_GTK_DOC_TRUE@	    if test x"$(srcdir)" != x. ; then				\
+-@ENABLE_GTK_DOC_TRUE@	        cp $(srcdir)/$(DOC_MODULE).types . ;			\
+-@ENABLE_GTK_DOC_TRUE@	        chmod u+w $(DOC_MODULE).types ;				\
++@ENABLE_GTK_DOC_TRUE@		cp $(srcdir)/$(DOC_MODULE).types . ;			\
++@ENABLE_GTK_DOC_TRUE@		chmod u+w $(DOC_MODULE).types ;				\
+ @ENABLE_GTK_DOC_TRUE@	    fi ;							\
+ @ENABLE_GTK_DOC_TRUE@	    GST_PLUGIN_SYSTEM_PATH=`cd $(top_builddir) && pwd`		\
+ @ENABLE_GTK_DOC_TRUE@	    GST_PLUGIN_PATH=						\
+@@ -764,17 +764,17 @@
+ @ENABLE_GTK_DOC_TRUE@	    CFLAGS="$(GTKDOC_CFLAGS) $(CFLAGS)"				\
+ @ENABLE_GTK_DOC_TRUE@	    LDFLAGS="$(GTKDOC_LIBS) $(LDFLAGS)"				\
+ @ENABLE_GTK_DOC_TRUE@	    gtkdoc-scangobj --type-init-func="gst_init(NULL,NULL)"	\
+-@ENABLE_GTK_DOC_TRUE@	        --module=$(DOC_MODULE) ;				\
++@ENABLE_GTK_DOC_TRUE@		--module=$(DOC_MODULE) ;				\
+ @ENABLE_GTK_DOC_TRUE@	else								\
+ @ENABLE_GTK_DOC_TRUE@	    cd $(srcdir) ;						\
+ @ENABLE_GTK_DOC_TRUE@	    for i in $(SCANOBJ_FILES) ; do				\
+-@ENABLE_GTK_DOC_TRUE@               test -f $$i || touch $$i ;				\
++@ENABLE_GTK_DOC_TRUE@	       test -f $$i || touch $$i ;				\
+ @ENABLE_GTK_DOC_TRUE@	    done							\
+ @ENABLE_GTK_DOC_TRUE@	fi
+ @ENABLE_GTK_DOC_TRUE@	if test "x$(top_srcdir)" != "x$(top_builddir)";			\
+-@ENABLE_GTK_DOC_TRUE@        then								\
+-@ENABLE_GTK_DOC_TRUE@          export BUILT_OPTIONS="--source-dir=$(DOC_BUILD_DIR)";		\
+-@ENABLE_GTK_DOC_TRUE@        fi;								\
++@ENABLE_GTK_DOC_TRUE@	then								\
++@ENABLE_GTK_DOC_TRUE@	  export BUILT_OPTIONS="--source-dir=$(DOC_BUILD_DIR)";		\
++@ENABLE_GTK_DOC_TRUE@	fi;								\
+ @ENABLE_GTK_DOC_TRUE@	gtkdoc-scan							\
+ @ENABLE_GTK_DOC_TRUE@		$(SCAN_OPTIONS) $(EXTRA_HFILES)				\
+ @ENABLE_GTK_DOC_TRUE@		--module=$(DOC_MODULE)					\
+@@ -844,7 +844,7 @@
+ @ENABLE_GTK_DOC_TRUE@	rm -rf xml tmpl html
+ # clean files copied for nonsrcdir templates build
+ @ENABLE_GTK_DOC_TRUE@	if test x"$(srcdir)" != x. ; then \
+-@ENABLE_GTK_DOC_TRUE@	        rm -rf $(DOC_MODULE).types; \
++@ENABLE_GTK_DOC_TRUE@		rm -rf $(DOC_MODULE).types; \
+ @ENABLE_GTK_DOC_TRUE@	fi
+ @ENABLE_GTK_DOC_FALSE@all-local:
+ @ENABLE_GTK_DOC_FALSE@clean-local-gtkdoc:
+@@ -858,7 +858,7 @@
+ # make distcheck work
+ distclean-local:
+ 	rm -f $(REPORT_FILES) \
+-                $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
++	        $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
+ 	rm -rf tmpl/*.sgml.bak
+ 	rm -f $(DOC_MODULE).hierarchy
+ 	rm -f *.stamp || true
+@@ -866,7 +866,7 @@
+ 	    rm -f $(DOC_MODULE)-docs.sgml ; \
+ 	    rm -f $(DOC_MODULE).types ; \
+ 	    rm -f $(DOC_MODULE).interfaces ; \
+-            rm -f $(DOC_MODULE)-overrides.txt ; \
++	    rm -f $(DOC_MODULE)-overrides.txt ; \
+ 	    rm -f $(DOC_MODULE).prerequisites ; \
+ 	    rm -f $(DOC_MODULE)-sections.txt ; \
+ 	    rm -rf tmpl/*.sgml ; \
+@@ -875,7 +875,7 @@
+ 
+ maintainer-clean-local: clean
+ 	cd $(srcdir) && rm -rf html \
+-                xml $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
++	        xml $(DOC_MODULE)-decl-list.txt $(DOC_MODULE)-decl.txt
+ 
+ # thomas: make docs parallel installable; devhelp requires majorminor too
+ install-data-local:
+@@ -892,8 +892,8 @@
+ 	  $(INSTALL_DATA) $(srcdir)/html/$(DOC_MODULE).devhelp \
+ 	    $(DESTDIR)$(TARGET_DIR)/$(DOC_MODULE)-@GST_MAJORMINOR@.devhelp; \
+ 	  if test -e $(srcdir)/html/$(DOC_MODULE).devhelp2; then \
+-        	    $(INSTALL_DATA) $(srcdir)/html/$(DOC_MODULE).devhelp2 \
+-	           $(DESTDIR)$(TARGET_DIR)/$(DOC_MODULE)-@GST_MAJORMINOR@.devhelp2; \
++		    $(INSTALL_DATA) $(srcdir)/html/$(DOC_MODULE).devhelp2 \
++		   $(DESTDIR)$(TARGET_DIR)/$(DOC_MODULE)-@GST_MAJORMINOR@.devhelp2; \
+ 	  fi; \
+ 	  (which gtkdoc-rebase >/dev/null && \
+ 	    gtkdoc-rebase --relative --dest-dir=$(DESTDIR) --html-dir=$(DESTDIR)$(TARGET_DIR)) || true ; \
+@@ -920,7 +920,7 @@
+ 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
+ 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
+ 	cd $(distdir) && rm -f $(DISTCLEANFILES)
+-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
+ 
+ .PHONY : dist-hook-local docs
+ 
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
index 38e28fa..2da32a3 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
@@ -9,11 +9,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=55ca817ccb7d5b5b66355690e9abc605 \
                     file://gst/gst.h;beginline=1;endline=21;md5=8e5fe5e87d33a04479fde862e238eaa4"
 DEPENDS = "glib-2.0 gettext libxml2 bison-native flex-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.bz2 \
            file://check_fix.patch;patch=1 \
-           file://gst-inspect-check-error.patch;patch=1"
+           file://gst-inspect-check-error.patch;patch=1 \
+	   file://gstreamer-make-382.patch;patch=1"
 
 inherit autotools pkgconfig
 
-- 
1.7.3.2


