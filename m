Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22DB44C81060
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 12:01:06 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D339C30530
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 13:00:58 -0500 (EST)
Message-Id: <1a8364c677d623c1f0baacde0208194ee3a294c7.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 4 Jan 2011 15:27:17 -0800
Date: Wed, 05 Jan 2011 10:00:54 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D339C30530.E4A45
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 7/8] dbus-glib: upgrade to version 0.92
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
X-List-Received-Date: Wed, 05 Jan 2011 18:01:06 -0000

Includes some minor recipe formatting changes.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../no-examples.patch                              |    0
 meta/recipes-core/dbus/dbus-glib.inc               |   12 +++++++-----
 meta/recipes-core/dbus/dbus-glib_0.88.bb           |    6 ------
 meta/recipes-core/dbus/dbus-glib_0.92.bb           |    6 ++++++
 4 files changed, 13 insertions(+), 11 deletions(-)
 rename meta/recipes-core/dbus/{dbus-glib-0.88 => dbus-glib-0.92}/no-examples.patch (100%)
 delete mode 100644 meta/recipes-core/dbus/dbus-glib_0.88.bb
 create mode 100644 meta/recipes-core/dbus/dbus-glib_0.92.bb

diff --git a/meta/recipes-core/dbus/dbus-glib-0.88/no-examples.patch b/meta/recipes-core/dbus/dbus-glib-0.92/no-examples.patch
similarity index 100%
rename from meta/recipes-core/dbus/dbus-glib-0.88/no-examples.patch
rename to meta/recipes-core/dbus/dbus-glib-0.92/no-examples.patch
diff --git a/meta/recipes-core/dbus/dbus-glib.inc b/meta/recipes-core/dbus/dbus-glib.inc
index 7dee3ff..22bf627 100644
--- a/meta/recipes-core/dbus/dbus-glib.inc
+++ b/meta/recipes-core/dbus/dbus-glib.inc
@@ -1,10 +1,12 @@
 SUMMARY = "High level language (GLib) binding for D-Bus"
-DESCRIPTION = "GLib bindings for the D-Bus message bus that integration the D-Bus library with the GLib thread abstraction and main loop."
+DESCRIPTION = "GLib bindings for the D-Bus message bus that integrate \
+the D-Bus library with the GLib thread abstraction and main loop."
 HOMEPAGE = "http://www.freedesktop.org/Software/dbus"
 LICENSE = "AFL2.1 | GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=cf5b3a2f7083750d504333114e738656 \
                     file://dbus/dbus-glib.h;firstline=7;endline=21;md5=833ef01806b4c524fb3678a16300536f"
 SECTION = "base"
+
 DEPENDS = "expat glib-2.0 virtual/libintl dbus-glib-native dbus"
 DEPENDS_virtclass-native = "glib-2.0-native dbus-native"
 
@@ -13,12 +15,12 @@ SRC_URI = "http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-${PV}.tar.gz
 
 inherit autotools pkgconfig gettext
 
-FILES_${PN} = "${libdir}/lib*.so.*"
-FILES_${PN}-dev += "${libdir}/dbus-1.0/include ${bindir}/dbus-glib-tool"
-FILES_${PN}-dev += "${bindir}/dbus-binding-tool"
-
 EXTRA_OECONF = "--with-introspect-xml=${STAGING_DATADIR_NATIVE}/dbus/dbus-bus-introspect.xml \
                 --with-dbus-binding-tool=${STAGING_BINDIR_NATIVE}/dbus-binding-tool"
 EXTRA_OECONF_virtclass-native = "--with-introspect-xml=${STAGING_DATADIR_NATIVE}/dbus/dbus-bus-introspect.xml"
 
+FILES_${PN} = "${libdir}/lib*.so.*"
+FILES_${PN}-dev += "${libdir}/dbus-1.0/include ${bindir}/dbus-glib-tool"
+FILES_${PN}-dev += "${bindir}/dbus-binding-tool"
+
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-core/dbus/dbus-glib_0.88.bb b/meta/recipes-core/dbus/dbus-glib_0.88.bb
deleted file mode 100644
index 64f0830..0000000
--- a/meta/recipes-core/dbus/dbus-glib_0.88.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require dbus-glib.inc
-
-PR = "r0"
-
-SRC_URI[md5sum] = "7c04ba01df6130c2c4e62f73bea0d0d5"
-SRC_URI[sha256sum] = "57939e2b567940beb23a52b5f3075743bd25ab203428e1c86f8c773330565737"
diff --git a/meta/recipes-core/dbus/dbus-glib_0.92.bb b/meta/recipes-core/dbus/dbus-glib_0.92.bb
new file mode 100644
index 0000000..72bea89
--- /dev/null
+++ b/meta/recipes-core/dbus/dbus-glib_0.92.bb
@@ -0,0 +1,6 @@
+require dbus-glib.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "b595b36890c4f9f8f5d5dec131c495f8"
+SRC_URI[sha256sum] = "5a7fd4cf937cdcb7f2eed61341b70ee0f2607450a50db381618598adf60dd40e"
-- 
1.7.1


