Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFCE24C80AA4
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 00:07:55 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2A67tXX019592
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Mar 2011 22:07:55 -0800 (PST)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 9 Mar 2011 22:07:54 -0800
Message-ID: <108cd6309917017e537b63d8951f7c9b6f48bb08.1299727511.git.kai.kang@windriver.com>
In-Reply-To: <cover.1299727511.git.kai.kang@windriver.com>
References: <cover.1299727511.git.kai.kang@windriver.com>
Old-Date: Thu, 10 Mar 2011 09:42:23 +0800
Date: Thu, 10 Mar 2011 14:07:18 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 1/1] PATCH: fix Bug 812 about slang
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
X-List-Received-Date: Thu, 10 Mar 2011 06:07:55 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Fix cross compile warnings: when bitbake slang, it links to building machine's
library, add fix-cross-configure.patch to fix it.

Add necessary files to run slsh.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../slang/slang/fix-cross-configure.patch          |   16 ++++++++++++++++
 meta/recipes-extended/slang/slang_2.2.2.bb         |    7 +++++--
 2 files changed, 21 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/slang/slang/fix-cross-configure.patch

diff --git a/meta/recipes-extended/slang/slang/fix-cross-configure.patch b/meta/recipes-extended/slang/slang/fix-cross-configure.patch
new file mode 100644
index 0000000..0a22a1f
--- /dev/null
+++ b/meta/recipes-extended/slang/slang/fix-cross-configure.patch
@@ -0,0 +1,16 @@
+$(SLANG_INST_LIB) refer to absolute dir /usr/lib, it will make link to build machine's library 
+when do cross compilation, remove it.
+
+create by Kang Kai <kai.kang@windriver.com>
+--- slang-2.2.2/slsh/Makefile.in.orig	2011-03-09 10:17:25.315245968 +0800
++++ slang-2.2.2/slsh/Makefile.in	2011-03-09 10:17:48.425245969 +0800
+@@ -65,7 +65,8 @@
+ @SET_MAKE@
+ SHELL = /bin/sh
+ #INST_LIBS = $(RPATH) $(SLANG_INST_LIB) $(DEST_LIB_DIR) -lslang $(READLINE_LIB) $(OTHER_LIBS)
+-INST_LIBS = $(DEST_LIB_DIR) $(RPATH) $(SLANG_INST_LIB) -lslang $(READLINE_LIB) $(OTHER_LIBS)
++#INST_LIBS = $(DEST_LIB_DIR) $(RPATH) $(SLANG_INST_LIB) -lslang $(READLINE_LIB) $(OTHER_LIBS)
++INST_LIBS = $(DEST_LIB_DIR) $(RPATH) -lslang $(READLINE_LIB) $(OTHER_LIBS)
+ DEFS = -DSLSH_CONF_DIR='"$(SLSH_CONF_DIR)"' -DSLSH_PATH='"$(SLSH_LIB_DIR)"' \
+  -DSLSH_CONF_DIR_ENV='$(SLSH_CONF_DIR_ENV)' -DSLSH_LIB_DIR_ENV='$(SLSH_LIB_DIR_ENV)' \
+  -DSLSH_PATH_ENV='$(SLSH_PATH_ENV)' 
diff --git a/meta/recipes-extended/slang/slang_2.2.2.bb b/meta/recipes-extended/slang/slang_2.2.2.bb
index 7fe76af..2498d85 100644
--- a/meta/recipes-extended/slang/slang_2.2.2.bb
+++ b/meta/recipes-extended/slang/slang_2.2.2.bb
@@ -10,16 +10,19 @@ to recode S-Lang procedures in C if you need to."
 SECTION = "libs"
 PRIORITY = "optional"
 DEPENDS = "pcre"
-PR = "r0"
+PR = "r1"
 
 LICENSE = "GPL Artistic"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 
 
 SRC_URI = "ftp://space.mit.edu/pub/davis/slang/v2.2/OLD/slang-${PV}.tar.bz2 \
-           file://fix-uclibc.patch"
+           file://fix-uclibc.patch \
+           file://fix-cross-configure.patch"
 
 inherit autotools
 
 SRC_URI[md5sum] = "974437602a781cfe92ab61433dd16d03"
 SRC_URI[sha256sum] = "cfaf8551fa3855f9b0043309bb553ef6d457f931b404df5a6ba6a5a69371fc42"
+
+FILES_${PN} += "/usr/share/slsh/"
-- 
1.7.1


