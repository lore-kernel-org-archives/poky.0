Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id D554F4C80A8C
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 19:08:06 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id DAE5A30523
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 20:07:59 -0500 (EST)
Message-Id: <e58c437667948ea32e3ea174c8aac8de434a6dcf.1298592962.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298592962.git.scott.a.garman@intel.com>
References: <cover.1298592962.git.scott.a.garman@intel.com>
Old-Date: Wed, 23 Feb 2011 14:14:12 -0800
Date: Thu, 24 Feb 2011 17:07:55 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: DAE5A30523.54CCF
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/2] libuser: enable documentation
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
X-List-Received-Date: Fri, 25 Feb 2011 01:08:07 -0000

From: Scott Garman <scott.a.garman@intel.com>

Added popt to DEPENDS. This fixes the following build error:

apps/luserdel.c:25:18: fatal error: popt.h: No such file or directory

Remove patch and configure flag which had disabled doc generation

Add docbook-utils-native and linuxdoc-tools-native to DEPENDS

This fixes [BUGID #213]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../libuser/libuser-0.57.1/disable-sgml-doc.patch  |   18 ------------------
 meta/recipes-extended/libuser/libuser_0.57.1.bb    |    9 ++++-----
 2 files changed, 4 insertions(+), 23 deletions(-)
 delete mode 100644 meta/recipes-extended/libuser/libuser-0.57.1/disable-sgml-doc.patch

diff --git a/meta/recipes-extended/libuser/libuser-0.57.1/disable-sgml-doc.patch b/meta/recipes-extended/libuser/libuser-0.57.1/disable-sgml-doc.patch
deleted file mode 100644
index a2017c5..0000000
--- a/meta/recipes-extended/libuser/libuser-0.57.1/disable-sgml-doc.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-Disable generating docs from sgml, which requries linuxdoc-tools.
-
-Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
-Index: libuser-0.56.16/docs/Makefile.am
-===================================================================
---- libuser-0.56.16.orig/docs/Makefile.am	2010-08-12 13:29:43.000000000 +0800
-+++ libuser-0.56.16/docs/Makefile.am	2010-08-12 13:29:51.000000000 +0800
-@@ -14,8 +14,8 @@
- 
- sgml/libuser.txt: $(srcdir)/sgml/libuser.sgml
- 	[ -d sgml ] || mkdir sgml
--	cd sgml; sgml2txt ../$(srcdir)/sgml/libuser.sgml
-+#	cd sgml; sgml2txt ../$(srcdir)/sgml/libuser.sgml
- 
- sgml/libuser.html: $(srcdir)/sgml/libuser.sgml
- 	[ -d sgml ] || mkdir sgml
--	cd sgml; sgml2html ../$(srcdir)/sgml/libuser.sgml
-+#	cd sgml; sgml2html ../$(srcdir)/sgml/libuser.sgml
diff --git a/meta/recipes-extended/libuser/libuser_0.57.1.bb b/meta/recipes-extended/libuser/libuser_0.57.1.bb
index d2e7c3a..2dd3f11 100644
--- a/meta/recipes-extended/libuser/libuser_0.57.1.bb
+++ b/meta/recipes-extended/libuser/libuser_0.57.1.bb
@@ -11,15 +11,14 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
 
 SECTION = "base"
 
-SRC_URI = "https://fedorahosted.org/releases/l/i/libuser/libuser-${PV}.tar.xz \
-           file://disable-sgml-doc.patch;patch=1"
+SRC_URI = "https://fedorahosted.org/releases/l/i/libuser/libuser-${PV}.tar.xz"
 
 SRC_URI[md5sum] = "be82c6941264d0b4bd04f95fb342ec7d"
 SRC_URI[sha256sum] = "a61289867581fa715354a3fafe09c3e481173ce0a2dcb33b04588b6ac13cead5"
-PR = "r0"
+PR = "r1"
 
-DEPENDS = "gettext libpam glib-2.0 xz-native"
+DEPENDS = "gettext popt libpam glib-2.0 xz-native docbook-utils-native linuxdoc-tools-native"
 
-EXTRA_OECONF += "--disable-gtk-doc --without-python"
+EXTRA_OECONF += "--without-python"
 
 inherit autotools
-- 
1.7.1


