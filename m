Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 528114C8043A
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 23:15:42 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p235Fflf009153
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 2 Mar 2011 21:15:42 -0800 (PST)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 2 Mar 2011 21:15:41 -0800
Message-ID: <f8f8046148af13542b2aa4b8dc702e3da746e760.1299127174.git.kai.kang@windriver.com>
In-Reply-To: <cover.1299127174.git.kai.kang@windriver.com>
References: <cover.1299127174.git.kai.kang@windriver.com>
Old-Date: Thu, 3 Mar 2011 12:34:36 +0800
Date: Thu, 3 Mar 2011 13:15:37 +0800
To: <poky@yoctoproject.org>
CC: 
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 3/3] recipe: add slang from OE
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
X-List-Received-Date: Thu, 03 Mar 2011 05:15:42 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

slang is the shared library for the S-Lang extension language,
and required by newt because of LSB command check

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/slang/slang/fix-uclibc.patch |   11 ++++++++
 meta/recipes-extended/slang/slang_2.2.2.bb         |   25 ++++++++++++++++++++
 2 files changed, 36 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/slang/slang/fix-uclibc.patch
 create mode 100644 meta/recipes-extended/slang/slang_2.2.2.bb

diff --git a/meta/recipes-extended/slang/slang/fix-uclibc.patch b/meta/recipes-extended/slang/slang/fix-uclibc.patch
new file mode 100644
index 0000000..c2b8225
--- /dev/null
+++ b/meta/recipes-extended/slang/slang/fix-uclibc.patch
@@ -0,0 +1,11 @@
+--- slang-2.1.3.orig/src/slcommon.c	2007-01-10 18:09:07.000000000 +0200
++++ slang-2.1.3.orig/src/slcommon.c	2008-03-19 16:09:09.000000000 +0200
+@@ -191,7 +191,7 @@ 
+    return p;
+ }
+ 
+-#if !defined(HAVE_ISSETUGID) && defined(__GLIBC__) && (__GLIBC__ >= 2)
++#if !defined(HAVE_ISSETUGID) && defined(__GLIBC__) && (__GLIBC__ >= 2) && !defined(__UCLIBC__)
+ extern int __libc_enable_secure;
+ # define HAVE___LIBC_ENABLE_SECURE 1
+ #endif
diff --git a/meta/recipes-extended/slang/slang_2.2.2.bb b/meta/recipes-extended/slang/slang_2.2.2.bb
new file mode 100644
index 0000000..7fe76af
--- /dev/null
+++ b/meta/recipes-extended/slang/slang_2.2.2.bb
@@ -0,0 +1,25 @@
+SUMMARY = "The shared library for the S-Lang extension language"
+
+DESCRIPTION = "S-Lang is an interpreted language and a programming library.  The \
+S-Lang language was designed so that it can be easily embedded into \
+a program to provide the program with a powerful extension language. \
+The S-Lang library, provided in this package, provides the S-Lang \
+extension language.  S-Lang's syntax resembles C, which makes it easy \
+to recode S-Lang procedures in C if you need to."
+
+SECTION = "libs"
+PRIORITY = "optional"
+DEPENDS = "pcre"
+PR = "r0"
+
+LICENSE = "GPL Artistic"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
+
+
+SRC_URI = "ftp://space.mit.edu/pub/davis/slang/v2.2/OLD/slang-${PV}.tar.bz2 \
+           file://fix-uclibc.patch"
+
+inherit autotools
+
+SRC_URI[md5sum] = "974437602a781cfe92ab61433dd16d03"
+SRC_URI[sha256sum] = "cfaf8551fa3855f9b0043309bb553ef6d457f931b404df5a6ba6a5a69371fc42"
-- 
1.7.1


