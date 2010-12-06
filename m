Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ew0-f45.google.com (mail-ew0-f45.google.com
	[209.85.215.45])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3E394C81081
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 13:07:39 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-ew0-f45.google.com with SMTP id 10so6868558ewy.32
	for <poky@yoctoproject.org>; Mon, 06 Dec 2010 11:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer:in-reply-to:references;
	bh=1FZpl8wkKfWIiwO6NEJGG8ASb/T78w+a3a84k9cQR2Q=;
	b=d3/KyjL1V/WrYr6U7wV4rlFGmnnMiAcwpdGehSrKNoS7n6jaaPN1g8q5920z6JB0OL
	E+FBw7WmVbuqkR7za8B9kcuxH7aUZM8Xls0J1Gp4QvQ1bA+g7EUUkVGzy82J2yrm+8oO
	VAIDRxzQBDnE4iyIQ7yRpNnGzGL4EkS/WnA2s=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	b=PzgBM1TNYIDrcYlQ3KsXB6Hy6h/QHI1bIaFjDAOJth8m2sKF9PnVBtwAj3EV0ajLmk
	RZvlLBYZs3gNiVne9bngTphd5sIOmvIxS6rKYzmnjfGgL9is6FwnO9Q5iV4lG4hJcuIf
	tbE8/Sgx+vXPpj1aphmrKjRtv2PkLW30NAdpk=
Received: by 10.213.17.143 with SMTP id s15mr1250028eba.2.1291662459072;
	Mon, 06 Dec 2010 11:07:39 -0800 (PST)
Received: from localhost.localdomain (j200125.upc-j.chello.nl [24.132.200.125])
	by mx.google.com with ESMTPS id b52sm4979362eei.13.2010.12.06.11.07.37
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 06 Dec 2010 11:07:38 -0800 (PST)
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Date: Mon,  6 Dec 2010 20:07:27 +0100
Message-Id: <1291662447-13865-3-git-send-email-fransmeulenbroeks@gmail.com>
X-Mailer: git-send-email 1.6.4.2
In-Reply-To: <1291662447-13865-2-git-send-email-fransmeulenbroeks@gmail.com>
References: <1291662447-13865-1-git-send-email-fransmeulenbroeks@gmail.com>
	<1291662447-13865-2-git-send-email-fransmeulenbroeks@gmail.com>
Subject: [PATCH 4/4] cdparanoia: new recipe (brought over from OE)
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
X-List-Received-Date: Mon, 06 Dec 2010 19:07:40 -0000

Signed-off-by: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
---
 .../cdparanoia/cdparanoia/Makefile.in.patch        |   13 ++++++
 .../cdparanoia/cdparanoia/configure.in.patch       |   13 ++++++
 .../cdparanoia/cdparanoia/fixes10.patch            |   25 +++++++++++
 .../cdparanoia/interface_Makefile.in.patch         |   11 +++++
 .../cdparanoia/paranoia_Makefile.in.patch          |   11 +++++
 .../cdparanoia/cdparanoia_svn.bb                   |   44 ++++++++++++++++++++
 6 files changed, 117 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-multimedia/cdparanoia/cdparanoia/Makefile.in.patch
 create mode 100644 meta/recipes-multimedia/cdparanoia/cdparanoia/configure.in.patch
 create mode 100644 meta/recipes-multimedia/cdparanoia/cdparanoia/fixes10.patch
 create mode 100644 meta/recipes-multimedia/cdparanoia/cdparanoia/interface_Makefile.in.patch
 create mode 100644 meta/recipes-multimedia/cdparanoia/cdparanoia/paranoia_Makefile.in.patch
 create mode 100644 meta/recipes-multimedia/cdparanoia/cdparanoia_svn.bb

diff --git a/meta/recipes-multimedia/cdparanoia/cdparanoia/Makefile.in.patch b/meta/recipes-multimedia/cdparanoia/cdparanoia/Makefile.in.patch
new file mode 100644
index 0000000..40cf4ad
--- /dev/null
+++ b/meta/recipes-multimedia/cdparanoia/cdparanoia/Makefile.in.patch
@@ -0,0 +1,13 @@
+--- cdparanoia-III-10.2/Makefile.in.orig	2009-01-27 23:32:15.000000000 +0100
++++ cdparanoia-III-10.2/Makefile.in	2009-01-27 23:32:53.000000000 +0100
+@@ -87,8 +87,9 @@
+ 		$(LIBDIR)/libcdda_paranoia.so
+ 
+ cdparanoia:	$(OFILES) $(LIBDEP)
+-		$(LD) $(CFLAGS) $(LDFLAGS) $(OFILES) \
++		$(LD) $(CFLAGS) \
+ 		-L$(PWD)/paranoia -L$(PWD)/interface \
++		$(LDFLAGS) $(OFILES) \
+ 		-o cdparanoia $(LIBS)
+ 
+ .c.o:
diff --git a/meta/recipes-multimedia/cdparanoia/cdparanoia/configure.in.patch b/meta/recipes-multimedia/cdparanoia/cdparanoia/configure.in.patch
new file mode 100644
index 0000000..2ca2516
--- /dev/null
+++ b/meta/recipes-multimedia/cdparanoia/cdparanoia/configure.in.patch
@@ -0,0 +1,13 @@
+--- cdparanoia-III-10.2.old/configure.in	2009-12-02 22:44:37.000000000 +0100
++++ cdparanoia-III-10.2/configure.in	2009-12-02 22:45:04.000000000 +0100
+@@ -5,9 +5,7 @@
+ 
+ AC_CANONICAL_HOST
+ 
+-if test -z "$CC"; then
+-	AC_PROG_CC	
+-fi
++AC_PROG_CC	
+ AC_PROG_RANLIB
+ AC_CHECK_PROG(AR,ar,ar)
+ AC_CHECK_PROG(INSTALL,install,install)
diff --git a/meta/recipes-multimedia/cdparanoia/cdparanoia/fixes10.patch b/meta/recipes-multimedia/cdparanoia/cdparanoia/fixes10.patch
new file mode 100644
index 0000000..414ff39
--- /dev/null
+++ b/meta/recipes-multimedia/cdparanoia/cdparanoia/fixes10.patch
@@ -0,0 +1,25 @@
+--- cdparanoia-III-alpha9.8/configure.in	2000-03-26 00:33:22.000000000 -0700
++++ cdparanoia-III-alpha9.8.new/configure.in	2004-12-23 16:34:04.072846728 -0700
+@@ -1,7 +1,7 @@
+ AC_INIT(interface/interface.c)
+ 
+-cp $srcdir/configure.guess $srcdir/config.guess
+-cp $srcdir/configure.sub $srcdir/config.sub
++#cp $srcdir/configure.guess $srcdir/config.guess
++#cp $srcdir/configure.sub $srcdir/config.sub
+ 
+ AC_CANONICAL_HOST
+ 
+--- cdparanoia-III-alpha9.8/interface/scan_devices.c	2001-03-25 22:44:01.000000000 -0700
++++ cdparanoia-III-alpha9.8.new/interface/scan_devices.c	2004-12-23 16:38:47.128815680 -0700
+@@ -19,6 +19,10 @@
+ #include "common_interface.h"
+ #include "utils.h"
+ 
++#ifndef PATH_MAX
++#define PATH_MAX 4096
++#endif
++
+ #define MAX_DEV_LEN 20 /* Safe because strings only come from below */
+ /* must be absolute paths! */
+ static char *scsi_cdrom_prefixes[]={
diff --git a/meta/recipes-multimedia/cdparanoia/cdparanoia/interface_Makefile.in.patch b/meta/recipes-multimedia/cdparanoia/cdparanoia/interface_Makefile.in.patch
new file mode 100644
index 0000000..4dbd2bb
--- /dev/null
+++ b/meta/recipes-multimedia/cdparanoia/cdparanoia/interface_Makefile.in.patch
@@ -0,0 +1,11 @@
+--- cdparanoia-III-10.2/interface/Makefile.in.orig	2009-01-27 23:52:42.000000000 +0100
++++ cdparanoia-III-10.2/interface/Makefile.in	2009-01-27 23:53:27.000000000 +0100
+@@ -46,7 +46,7 @@
+ 	$(RANLIB) libcdda_interface.a
+ 
+ libcdda_interface.so: 	$(OFILES)	
+-	$(CC) -fpic -shared -o libcdda_interface.so.0.$(VERSION) -Wl,-soname -Wl,libcdda_interface.so.0 $(OFILES) $(LIBS)
++	$(CC) -fpic -shared -o libcdda_interface.so.0.$(VERSION) $(LDFLAGS) -Wl,-soname -Wl,libcdda_interface.so.0 $(OFILES) $(LIBS)
+ 	[ -e libcdda_interface.so.0 ] || ln -s libcdda_interface.so.0.$(VERSION) libcdda_interface.so.0
+ 	[ -e libcdda_interface.so ] || ln -s libcdda_interface.so.0.$(VERSION) libcdda_interface.so
+ 
diff --git a/meta/recipes-multimedia/cdparanoia/cdparanoia/paranoia_Makefile.in.patch b/meta/recipes-multimedia/cdparanoia/cdparanoia/paranoia_Makefile.in.patch
new file mode 100644
index 0000000..962a43a
--- /dev/null
+++ b/meta/recipes-multimedia/cdparanoia/cdparanoia/paranoia_Makefile.in.patch
@@ -0,0 +1,11 @@
+--- cdparanoia-III-10.2/paranoia/Makefile.in.orig	2009-01-27 23:54:45.000000000 +0100
++++ cdparanoia-III-10.2/paranoia/Makefile.in	2009-01-27 23:55:05.000000000 +0100
+@@ -44,7 +44,7 @@
+ 	$(RANLIB) libcdda_paranoia.a
+ 
+ libcdda_paranoia.so: 	$(OFILES)	
+-	$(CC) -fpic -shared -o libcdda_paranoia.so.0.$(VERSION) -Wl,-soname -Wl,libcdda_paranoia.so.0 $(OFILES) -L ../interface -lcdda_interface
++	$(CC) -fpic -shared -o libcdda_paranoia.so.0.$(VERSION) $(LDFLAGS) -Wl,-soname -Wl,libcdda_paranoia.so.0 $(OFILES) -L ../interface -lcdda_interface
+ 	[ -e libcdda_paranoia.so.0 ] || ln -s libcdda_paranoia.so.0.$(VERSION) libcdda_paranoia.so.0
+ 	[ -e libcdda_paranoia.so ] || ln -s libcdda_paranoia.so.0.$(VERSION) libcdda_paranoia.so
+ 
diff --git a/meta/recipes-multimedia/cdparanoia/cdparanoia_svn.bb b/meta/recipes-multimedia/cdparanoia/cdparanoia_svn.bb
new file mode 100644
index 0000000..c40d979
--- /dev/null
+++ b/meta/recipes-multimedia/cdparanoia/cdparanoia_svn.bb
@@ -0,0 +1,44 @@
+# cdparanoia OE build file
+# Copyright (C) 2005, Advanced Micro Devices, Inc.  All Rights Reserved
+# Released under the MIT license (see packages/COPYING)
+
+HOMEPAGE = "http://www.xiph.org/paranoia/"
+DESCRIPTION = "Audio CD digital audio extraction application"
+PR = "r0"
+LICENSE = "GPLv2"
+
+PV = "10.2+svnr${SRCPV}"
+SRCREV = "17714"
+
+SRC_URI = "svn://svn.xiph.org/trunk;module=cdparanoia;proto=http \
+	 file://fixes10.patch \
+	 file://Makefile.in.patch \
+	 file://interface_Makefile.in.patch \
+	 file://paranoia_Makefile.in.patch \
+	 file://configure.in.patch "
+
+S = "${WORKDIR}/cdparanoia"
+
+PARALLEL_MAKE = ""
+
+inherit autotools pkgconfig
+
+PACKAGES += "libcdparanoia libcdparanoia-dev libcdparanoia-static"
+
+LICENSE_libcdparanoia = "LGPLv2.1"
+LICENSE_libcdparanoia-dev = "LGPLv2.1"
+LICENSE_libcdparanoia-static = "LGPLv2.1"
+
+FILES_${PN} = "${bindir}/*"
+FILES_${PN}-dev = ""
+FILES_${PN}-static = ""
+FILES_libcdparanoia = "${libdir}/lib*${SOLIBS}"
+FILES_libcdparanoia-dev = "${includedir} ${libdir}/lib*${SOLIBSDEV}"
+FILES_libcdparanoia-static = "${libdir}/*.a"
+
+do_install() {
+	oe_runmake BINDIR="${D}/usr/bin" MANDIR="${D}/usr/share/man/" \
+		   INCLUDEDIR="${D}/usr/include/" LIBDIR="${D}/usr/lib" \
+		   PKGCONFIGDIR="${D}/usr/lib/pkgconfig" \
+		   install
+}
-- 
1.6.4.2


