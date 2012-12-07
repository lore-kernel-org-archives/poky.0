Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F91E01449
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 21:06:12 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 2BFF3303EF
	for <poky@yoctoproject.org>; Fri,  7 Dec 2012 00:06:02 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  6 Dec 2012 21:05:36 -0800
Message-Id: <e71d9352b9699e28f0758890b912fc0ed0a5793a.1354856621.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 2BFF3303EF.1DE8B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 03/18] gettext: install libgettextlib.a before removing it
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
X-List-Received-Date: Fri, 07 Dec 2012 05:06:12 -0000

From: Joe Slater <jslater@windriver.com>

In a multiple job build, Makefile can simultaneously
be installing and removing libgettextlib.a.  We serialize
the operations.

(From OE-Core rev: 2750546b2152eecdbb37e963a2495383f6944184)

Signed-off-by: Joe Slater <jslater@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../gettext/gettext-0.18.1.1/parallel.patch        |   34 ++++++++++++++++++++
 meta/recipes-core/gettext/gettext_0.18.1.1.bb      |    3 +-
 2 files changed, 36 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-core/gettext/gettext-0.18.1.1/parallel.patch

diff --git a/meta/recipes-core/gettext/gettext-0.18.1.1/parallel.patch b/meta/recipes-core/gettext/gettext-0.18.1.1/parallel.patch
new file mode 100644
index 0000000..4ca44cc
--- /dev/null
+++ b/meta/recipes-core/gettext/gettext-0.18.1.1/parallel.patch
@@ -0,0 +1,34 @@
+instal libgettextlib.a before removing it
+
+In a multiple job build, Makefile can simultaneously
+be installing and removing libgettextlib.a.  We serialize
+the operations.
+
+Signed-off-by: Joe Slater <jslater@windriver.com>
+
+--- a/gettext-tools/gnulib-lib/Makefile.am
++++ b/gettext-tools/gnulib-lib/Makefile.am
+@@ -57,6 +57,10 @@ endif
+ # Rules generated and collected by gnulib-tool.
+ include Makefile.gnulib
+ 
++# defined in Makefile.gnulib but missing this dependency
++#
++install-exec-clean: install-libLTLIBRARIES
++
+ # Which classes to export from the shared library.
+ MOOPPFLAGS += --dllexport=styled_ostream
+ 
+--- a/gettext-tools/src/Makefile.am
++++ b/gettext-tools/src/Makefile.am
+@@ -229,8 +229,8 @@ libgettextsrc_la_LDFLAGS += -Wl,--export
+ endif
+ 
+ # No need to install libgettextsrc.a, except on AIX.
+-install-exec-local: install-libLTLIBRARIES install-exec-clean
+-install-exec-clean:
++install-exec-local: install-exec-clean
++install-exec-clean: install-libLTLIBRARIES
+ 	case "@host_os@" in \
+ 	  aix*) ;; \
+ 	  *) $(RM) $(DESTDIR)$(libdir)/libgettextsrc.a ;; \
diff --git a/meta/recipes-core/gettext/gettext_0.18.1.1.bb b/meta/recipes-core/gettext/gettext_0.18.1.1.bb
index 4664751..1e67afb 100644
--- a/meta/recipes-core/gettext/gettext_0.18.1.1.bb
+++ b/meta/recipes-core/gettext/gettext_0.18.1.1.bb
@@ -5,13 +5,14 @@ SECTION = "libs"
 LICENSE = "GPLv3+ & LGPL-2.1+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
-PR = "r11"
+PR = "r12"
 DEPENDS = "libxml2-native gettext-native virtual/libiconv ncurses expat"
 DEPENDS_virtclass-native = "libxml2-native gettext-minimal-native"
 PROVIDES = "virtual/libintl virtual/gettext"
 PROVIDES_virtclass-native = "virtual/gettext-native"
 CONFLICTS_${PN} = "proxy-libintl"
 SRC_URI = "${GNU_MIRROR}/gettext/gettext-${PV}.tar.gz \
+	   file://parallel.patch \
           "
 
 SRC_URI_append_libc-uclibc = " file://wchar-uclibc.patch \
-- 
1.7.9.5


