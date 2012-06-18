Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98EFEE0141D
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 12:56:48 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 60FC030466
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 15:56:43 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 Jun 2012 12:56:35 -0700
Message-Id: <473e3b3d5afe828af291605f79bf339805a2b65d.1340038494.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 60FC030466.F2E2C
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/8] webkit-gtk: Apply work around for all PowerPC targets
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
X-List-Received-Date: Mon, 18 Jun 2012 19:56:48 -0000

From: Gary Thomas <gary@mlbassoc.com>

The current patch for bug #1570 only applies to qemuppc but should be
applicable for all PowerPC targets.  Also update the patch so that
only one language backend, either ICU or PANGO, is built.

Also remove some old customizations (dependencies on darwin) as these
should now be handled in a layer specific .bbappend file.

(From OE-Core rev: 2782caf0f07f61cab92d2981c5e82914f22bd700)

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-sato/webkit/webkit-gtk_svn.bb |   15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

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
1.7.9.5


