Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id BADCC4C80A49
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 22:33:32 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B6306308F9
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:33:26 -0500 (EST)
Message-Id: <db6da7055b3b121babdf15108e171a011ac5cd08.1297830466.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297830466.git.scott.a.garman@intel.com>
References: <cover.1297830466.git.scott.a.garman@intel.com>
Old-Date: Tue, 15 Feb 2011 16:39:31 -0800
Date: Tue, 15 Feb 2011 20:33:19 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B6306308F9.4DF17
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 5/5] iputils: enable generation of man pages
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
X-List-Received-Date: Wed, 16 Feb 2011 04:33:32 -0000

From: Scott Garman <scott.a.garman@intel.com>

This fixes [BUGID #211]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/iputils/iputils_s20101006.bb |   13 +++++--------
 1 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/meta/recipes-extended/iputils/iputils_s20101006.bb b/meta/recipes-extended/iputils/iputils_s20101006.bb
index 0a42017..c4db5b4 100644
--- a/meta/recipes-extended/iputils/iputils_s20101006.bb
+++ b/meta/recipes-extended/iputils/iputils_s20101006.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://ping.c;beginline=1;endline=35;md5=f9ceb201733e9a6cf8f
                     file://arping.c;beginline=1;endline=10;md5=ada2a6d06acc90f943bddf40d15e0541 \
                     file://tftpd.c;beginline=1;endline=32;md5=28834bf8a91a5b8a92755dbee709ef96 "
 
-DEPENDS = "sysfsutils openssl"
+DEPENDS = "sysfsutils openssl docbook-utils-native"
 
 PR = "r0"
 
@@ -26,11 +26,8 @@ SRC_URI = "http://www.skbuff.net/iputils/${PN}-${PV}.tar.bz2 \
 SRC_URI[md5sum] = "a36c25e9ec17e48be514dc0485e7376c"
 SRC_URI[sha256sum] = "fd3af46c80ebb99607c2ca1f2a3608b6fe828e25bbec6e54f2afd25f6ddb6ee7"
 
-# man is not compiled here, since it requires docbook-utils-native
-# which is not available in poky
-
 do_compile () {
-	oe_runmake 'CC=${CC} -D_GNU_SOURCE' VPATH="${STAGING_LIBDIR}" all
+	oe_runmake 'CC=${CC} -D_GNU_SOURCE' VPATH="${STAGING_LIBDIR}" all man
 }
 
 do_install () {
@@ -44,9 +41,9 @@ do_install () {
 	  install -m 0755 $i ${D}${base_bindir}/
 	done
 	# Manual pages for things we build packages for
-#	for i in tracepath.8 traceroute6.8 ping.8 arping.8; do
-#	  install -m 0644 doc/$i ${D}${mandir}/man8/ || true
-#	done
+	for i in tracepath.8 traceroute6.8 ping.8 arping.8; do
+	  install -m 0644 doc/$i ${D}${mandir}/man8/ || true
+	done
 }
 
 # Busybox also provides ping and ping6, so use update-alternatives
-- 
1.7.1


