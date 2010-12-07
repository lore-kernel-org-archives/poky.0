Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECFF14C811C4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 15:14:27 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id E9C5B1C1DA12
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
X-Auth-Info: AtrY9kE1I+MFs8Ovyqew1tgS6yGqvCtD/tc+Us40+/Q=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id BC4191C0015C
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 5C079333521D
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 48D78D0B11B; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: poky@yoctoproject.org
Date: Tue,  7 Dec 2010 22:14:02 +0100
Message-Id: <1291756443-28767-5-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.3.2
In-Reply-To: <1291756443-28767-1-git-send-email-wd@denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
Subject: [PATCH 4/5] elfutils-0.148: fix build problem with "ar"
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
X-List-Received-Date: Tue, 07 Dec 2010 21:14:28 -0000

Building on Fedora 14 failed with:

make[2]: Entering directory `.../tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-0.148/src'
rm -f libld_elf_i386_pic.a
ar cru libld_elf_i386_pic.a i386_ld.os
ar: -u: (PROGRAM ERROR) Option should have been recognized!?
Try `ar --help' or `ar --usage' for more information.

Signed-off-by: Wolfgang Denk <wd@denx.de>
---
 .../elfutils/elfutils-0.148/ar-options.patch       |   11 +++++++++++
 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 ++-
 2 files changed, 13 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/elfutils/elfutils-0.148/ar-options.patch

diff --git a/meta/recipes-devtools/elfutils/elfutils-0.148/ar-options.patch b/meta/recipes-devtools/elfutils/elfutils-0.148/ar-options.patch
new file mode 100644
index 0000000..51af3bb
--- /dev/null
+++ b/meta/recipes-devtools/elfutils/elfutils-0.148/ar-options.patch
@@ -0,0 +1,11 @@
+--- elfutils-0.148/src/Makefile.in.ORIG	2010-12-05 03:37:48.292949274 +0100
++++ elfutils-0.148/src/Makefile.in	2010-12-05 10:26:14.441638800 +0100
+@@ -64,7 +64,7 @@
+ CONFIG_CLEAN_VPATH_FILES =
+ LIBRARIES = $(noinst_LIBRARIES)
+ AR = ar
+-ARFLAGS = cru
++ARFLAGS = cr
+ libar_a_AR = $(AR) $(ARFLAGS)
+ libar_a_LIBADD =
+ am_libar_a_OBJECTS = arlib.$(OBJEXT) arlib2.$(OBJEXT)
diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
index f84ab8e..5a7beaa 100644
--- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3\
                     file://EXCEPTION;md5=570adcb0c1218ab57f2249c67d0ce417"
 DEPENDS = "libtool zlib"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "https://fedorahosted.org/releases/e/l/elfutils/elfutils-${PV}.tar.bz2"
 
@@ -24,6 +24,7 @@ SRC_URI += "\
         file://testsuite-ignore-elflint.diff \
         file://elf_additions.diff \
 	file://elfutils-fsize.patch \
+	file://ar-options.patch \
 "
 
 # The buildsystem wants to generate 2 .h files from source using a binary it just built,
-- 
1.7.3.2


