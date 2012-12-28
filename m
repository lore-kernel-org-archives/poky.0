Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32BA9E01400
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:44:48 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 8B12A2FEF2
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:44:40 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:07 -0800
Message-Id: <aaa23cf508daecb92dba1c180503ad3d0169eab8.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 8B12A2FEF2.66265
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 01/23] coreutils: Fix build with eglibc 2.16
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Dec 2012 21:44:48 -0000

From: Khem Raj <raj.khem@gmail.com>

eglibc 2.16 has removed gets so we account for that

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Resolved merge conflicts with denzil branch.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../coreutils/coreutils-8.14/remove-gets.patch     |   23 ++++++++++++++++++++
 meta/recipes-core/coreutils/coreutils_8.14.bb      |    3 ++-
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-core/coreutils/coreutils-8.14/remove-gets.patch

diff --git a/meta/recipes-core/coreutils/coreutils-8.14/remove-gets.patch b/meta/recipes-core/coreutils/coreutils-8.14/remove-gets.patch
new file mode 100644
index 0000000..4f61c92
--- /dev/null
+++ b/meta/recipes-core/coreutils/coreutils-8.14/remove-gets.patch
@@ -0,0 +1,23 @@
+use gets iff its defined. eglibc 2.16 removed gets
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+Upstream-Status: Pending
+
+Index: coreutils-8.14/lib/stdio.in.h
+===================================================================
+--- coreutils-8.14.orig/lib/stdio.in.h	2011-09-24 04:20:48.000000000 -0700
++++ coreutils-8.14/lib/stdio.in.h	2012-07-03 10:36:19.886296576 -0700
+@@ -713,11 +713,13 @@
+ _GL_CXXALIAS_SYS (gets, char *, (char *s));
+ #  undef gets
+ # endif
++# if defined gets
+ _GL_CXXALIASWARN (gets);
+ /* It is very rare that the developer ever has full control of stdin,
+    so any use of gets warrants an unconditional warning.  Assume it is
+    always declared, since it is required by C89.  */
+ _GL_WARN_ON_USE (gets, "gets is a security hole - use fgets instead");
++# endif
+ #endif
+ 
+ 
diff --git a/meta/recipes-core/coreutils/coreutils_8.14.bb b/meta/recipes-core/coreutils/coreutils_8.14.bb
index 688cec9..cd0cada 100644
--- a/meta/recipes-core/coreutils/coreutils_8.14.bb
+++ b/meta/recipes-core/coreutils/coreutils_8.14.bb
@@ -7,7 +7,7 @@ BUGTRACKER = "http://debbugs.gnu.org/coreutils"
 LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504\
                     file://src/ls.c;startline=5;endline=16;md5=e1a509558876db58fb6667ba140137ad"
-PR = "r3"
+PR = "r4"
 DEPENDS = "gmp libcap"
 DEPENDS_virtclass-native = ""
 
@@ -15,6 +15,7 @@ inherit autotools gettext
 
 SRC_URI = "${GNU_MIRROR}/coreutils/${BP}.tar.xz \
            file://remove-usr-local-lib-from-m4.patch \
+           file://remove-gets.patch \
           "
 SRC_URI[md5sum] = "bcb135ce553493a45aba01b39eb3920a"
 SRC_URI[sha256sum] = "0d120817c19292edb19e92ae6b8eac9020e03d51e0af9cb116cf82b65d18b02d"
-- 
1.7.9.5


