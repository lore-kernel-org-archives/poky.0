Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A42FFE01467
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:44:55 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id BED7D2FEF4
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:44:47 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:10 -0800
Message-Id: <2a487f9bc41898dae1e2925a2ddce07d3f59ed05.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: BED7D2FEF4.54C2E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 04/23] bison: Fix for gets being removed from eglibc 2.16
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
X-List-Received-Date: Fri, 28 Dec 2012 21:44:55 -0000

From: Khem Raj <raj.khem@gmail.com>

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-devtools/bison/bison/remove-gets.patch |   20 ++++++++++++++++++++
 meta/recipes-devtools/bison/bison_2.5.bb           |    6 ++++--
 2 files changed, 24 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/bison/bison/remove-gets.patch

diff --git a/meta/recipes-devtools/bison/bison/remove-gets.patch b/meta/recipes-devtools/bison/bison/remove-gets.patch
new file mode 100644
index 0000000..2dfa00f
--- /dev/null
+++ b/meta/recipes-devtools/bison/bison/remove-gets.patch
@@ -0,0 +1,20 @@
+gets has been removed from eglibc 2.16
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+Upstream-Status: Pending
+Index: bison-2.5/lib/stdio.in.h
+===================================================================
+--- bison-2.5.orig/lib/stdio.in.h	2012-07-04 09:09:48.336532195 -0700
++++ bison-2.5/lib/stdio.in.h	2012-07-04 09:10:22.868533884 -0700
+@@ -180,8 +180,10 @@
+ /* It is very rare that the developer ever has full control of stdin,
+    so any use of gets warrants an unconditional warning.  Assume it is
+    always declared, since it is required by C89.  */
++#if defined gets
+ #undef gets
+ _GL_WARN_ON_USE (gets, "gets is a security hole - use fgets instead");
++#endif
+ 
+ #if @GNULIB_FOPEN@
+ # if @REPLACE_FOPEN@
diff --git a/meta/recipes-devtools/bison/bison_2.5.bb b/meta/recipes-devtools/bison/bison_2.5.bb
index c5113cd..e3f9273 100644
--- a/meta/recipes-devtools/bison/bison_2.5.bb
+++ b/meta/recipes-devtools/bison/bison_2.5.bb
@@ -9,14 +9,16 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 SECTION = "devel"
 DEPENDS = "bison-native flex-native"
 
-PR = "r1"
+PR = "r2"
 
 BASE_SRC_URI = "${GNU_MIRROR}/bison/bison-${PV}.tar.gz \
 	   file://m4.patch \
 	  "
 
 SRC_URI = "${BASE_SRC_URI} \
-        file://fix_cross_manpage_building.patch "
+           file://fix_cross_manpage_building.patch \
+           file://remove-gets.patch \
+          "
 
 SRC_URI[md5sum] = "687e1dcd29452789d34eaeea4c25abe4"
 SRC_URI[sha256sum] = "722def46e4a19a5b7a579ef30db1965f86c37c1a20a5f0113743a2e4399f7c99"
-- 
1.7.9.5


