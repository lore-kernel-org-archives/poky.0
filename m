Return-Path: <gthomas@mail.chez-thomas.org>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31418E00746
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 04:39:44 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 996)
	id 255D2F811F9; Tue, 12 Jun 2012 05:39:44 -0600 (MDT)
From: Gary Thomas <gary@mlbassoc.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 05:39:43 -0600
Message-Id: <1339501183-16643-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] webkit-gtk: Apply work around for all PowerPC targets
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
X-List-Received-Date: Tue, 12 Jun 2012 11:39:45 -0000

The current patch for bug #1570 only applies to qemuppc but should be
applicable for all PowerPC targets.  Also update the patch so that
only one language backend, either ICU or PANGO, is built.

Also remove some old customizations (dependencies on darwin) as these
should now be handled in a layer specific .bbappend file.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/recipes-sato/webkit/webkit-gtk_svn.bb |   15 +++++++++------
 1 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-sato/webkit/webkit-gtk_svn.bb b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
index 9381486..716afce 100644
--- a/meta/recipes-sato/webkit/webkit-gtk_svn.bb
+++ b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
@@ -7,10 +7,13 @@ LIC_FILES_CHKSUM = "file://Source/WebCore/rendering/RenderApplet.h;endline=22;md
                     file://Source/WebKit/gtk/webkit/webkit.h;endline=21;md5=b4fbe9f4a944f1d071dba1d2c76b3351 \
                     file://Source/JavaScriptCore/parser/Parser.h;endline=23;md5=2f3cff0ad0a9c486da5a376928973a90"
 
-DEPENDS = "zlib enchant gnome-keyring libsoup-2.4 curl icu libxml2 cairo libxslt libxt libidn gnutls gtk+ gstreamer gst-plugins-base flex-native gperf-native perl-native-runtime sqlite3"
+# Choice of language backends - icu has issues on Big Endian machines so use pango
+ICU_LIB = "icu"
+ICU_LIB_powerpc = "pango"
+
+DEPENDS = "zlib enchant gnome-keyring libsoup-2.4 curl libxml2 cairo libxslt libxt libidn gnutls \
+           gtk+ gstreamer gst-plugins-base flex-native gperf-native perl-native-runtime sqlite3 ${ICU_LIB}"
 DEPENDS += " ${@base_contains('DISTRO_FEATURES', 'opengl', 'virtual/libgl', '', d)}"
-DEPENDS_darwin8 = "curl icu libxml2 cairo libxslt libidn gnutls gtk+ gstreamer flex-native gperf-native perl-native-runtime sqlite3"
-DEPENDS_append_qemuppc += "pango"
 
 SRCREV_FORMAT = "source"
 
@@ -48,10 +51,10 @@ EXTRA_OECONF = "\
                 UNICODE_CFLAGS=-D_REENTRANT \
                "
 
-#default unicode backend icu breaks in cross-compile when target and host owns different endian type
-EXTRA_OECONF_append_qemuppc += "--with-unicode-backend=glib"
+#default unicode backend icu breaks in cross-compile when target and host are different endian type
+EXTRA_OECONF_append_powerpc += "--with-unicode-backend=glib"
 
-CPPFLAGS_append_qemuppc += "-I${STAGING_INCDIR}/pango-1.0 \
+CPPFLAGS_append_powerpc += "-I${STAGING_INCDIR}/pango-1.0 \
                             -I${STAGING_LIBDIR}/glib-2.0/include \
                             -I${STAGING_INCDIR}/glib-2.0"
 
-- 
1.7.7.6


