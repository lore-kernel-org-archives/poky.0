Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 896C1E01363
	for <poky@yoctoproject.org>; Mon, 12 Mar 2012 08:48:09 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q2CFm1dP020800
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 12 Mar 2012 16:48:01 +0100
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q2CFm1Sm020764;
	Mon, 12 Mar 2012 16:48:01 +0100
From: =?UTF-8?q?Bj=C3=B6rn=20Stenberg?= <bjst@enea.com>
To: poky@yoctoproject.org
Date: Mon, 12 Mar 2012 16:47:19 +0100
Message-Id: <1331567239-20200-1-git-send-email-bjst@enea.com>
X-Mailer: git-send-email 1.7.9.1
MIME-Version: 1.0
Subject: [PATCH] Add pigz as gzip-native alternative.
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
X-List-Received-Date: Mon, 12 Mar 2012 15:48:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

pigz, which stands for parallel implementation of gzip, is a fully functional replacement for gzip that exploits multiple processors and multiple cores to the hilt when compressing data. pigz was written by Mark Adler, and uses the zlib and pthread libraries.

This recipe adds pigz as an alternative provider of gzip-native. Pigz is much faster than gzip on multi-core machines.

Signed-off-by: Björn Stenberg <bjst@enea.com>
---
 meta/recipes-extended/pigz/files/ldflags.patch |   11 +++++++++++
 meta/recipes-extended/pigz/pigz.inc            |   21 +++++++++++++++++++++
 meta/recipes-extended/pigz/pigz_2.2.4.bb       |    9 +++++++++
 3 files changed, 41 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/pigz/files/ldflags.patch
 create mode 100644 meta/recipes-extended/pigz/pigz.inc
 create mode 100644 meta/recipes-extended/pigz/pigz_2.2.4.bb

diff --git a/meta/recipes-extended/pigz/files/ldflags.patch b/meta/recipes-extended/pigz/files/ldflags.patch
new file mode 100644
index 0000000..534d280
--- /dev/null
+++ b/meta/recipes-extended/pigz/files/ldflags.patch
@@ -0,0 +1,11 @@
+--- pigz-2.2.3/Makefile.orig	2012-01-01 02:46:58.000000000 +0100
++++ pigz-2.2.3/Makefile	2012-03-09 08:47:40.025094863 +0100
+@@ -2,7 +2,7 @@
+ CFLAGS=-O3 -Wall -Wextra
+ 
+ pigz: pigz.o yarn.o
+-	$(CC) -o pigz pigz.o yarn.o -lpthread -lz
++	$(CC) $(LDFLAGS) -o pigz pigz.o yarn.o -lpthread -lz
+ 	ln -f pigz unpigz
+ 
+ pigz.o: pigz.c yarn.h
diff --git a/meta/recipes-extended/pigz/pigz.inc b/meta/recipes-extended/pigz/pigz.inc
new file mode 100644
index 0000000..b501d7a
--- /dev/null
+++ b/meta/recipes-extended/pigz/pigz.inc
@@ -0,0 +1,21 @@
+SUMMARY = "A parallel implementation of gzip"
+DESCRIPTION = "pigz, which stands for parallel implementation of gzip, is a \
+fully functional replacement for gzip that exploits multiple processors and \
+multiple cores to the hilt when compressing data. pigz was written by Mark \
+Adler, and uses the zlib and pthread libraries."
+HOMEPAGE = "http://zlib.net/pigz/"
+SECTION = "console/utils"
+LICENSE = "Zlib"
+
+SRC_URI = "http://zlib.net/pigz/pigz-${PV}.tar.gz \
+           file://ldflags.patch"
+
+PROVIDES += "gzip-native"
+
+DEPENDS_virtclass-native = "zlib-native"
+
+do_install () {
+        install -d ${D}${bindir}
+        install ${B}/pigz ${D}${bindir}/gzip
+        install ${B}/unpigz ${D}${bindir}/gunzip
+}
diff --git a/meta/recipes-extended/pigz/pigz_2.2.4.bb b/meta/recipes-extended/pigz/pigz_2.2.4.bb
new file mode 100644
index 0000000..598bbe3
--- /dev/null
+++ b/meta/recipes-extended/pigz/pigz_2.2.4.bb
@@ -0,0 +1,9 @@
+require pigz.inc
+
+PR = "r0"
+
+BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "9df2a3c742524446fa4e797c17e8fd85"
+SRC_URI[sha256sum] = "7e7967c47f66c07be97cbfa25c8816b72f9d35258466ea31eddc7666c914160e"
+LIC_FILES_CHKSUM = "file://pigz.c;md5=53f47c097bbf11b937a421b1816a8dc5"
-- 
1.7.5.4


