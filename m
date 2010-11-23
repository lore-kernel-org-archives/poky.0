Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id C14E14C80FAD
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 12:56:34 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 54F48302B9
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 13:56:27 -0500 (EST)
Message-Id: <2d7dec0f5287b32f7feee0dc1d3f5da406719494.1290624288.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1290624288.git.scott.a.garman@intel.com>
References: <cover.1290624288.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 22 Nov 2010 21:01:34 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 54F48302B9.DAE7A
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/4] sudo: upgrade to version 1.7.4p4
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
X-List-Received-Date: Wed, 24 Nov 2010 18:56:35 -0000

* Upgraded sudo to v1.7.4p4
* Removed obsolete patches
* Makefile.in no longer strips binaries, removed do_configure_prepend()
  section which used to remove the -s
* Updated HOMEPAGE to canonical URL for project
* Added SUMMARY field
* Added checksums for source tarball
* Added patch for correcting paths to libtool scripts in m4/
* Corrected typos in LIC_FILES_CHKSUM (use of startline was invalid)
  and included updated checksums - no license text has actually changed

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/sudo/files/autofoo.patch     |  143 --------------------
 meta/recipes-extended/sudo/files/libtool.patch     |   20 +++
 meta/recipes-extended/sudo/files/noexec-link.patch |   17 ---
 meta/recipes-extended/sudo/files/nostrip.patch     |   23 ---
 meta/recipes-extended/sudo/site/bit-32             |    2 -
 meta/recipes-extended/sudo/site/bit-64             |    2 -
 meta/recipes-extended/sudo/sudo.inc                |   21 ++--
 meta/recipes-extended/sudo/sudo_1.7.2p7.bb         |    7 -
 meta/recipes-extended/sudo/sudo_1.7.4p4.bb         |   11 ++
 9 files changed, 40 insertions(+), 206 deletions(-)
 delete mode 100644 meta/recipes-extended/sudo/files/autofoo.patch
 create mode 100644 meta/recipes-extended/sudo/files/libtool.patch
 delete mode 100644 meta/recipes-extended/sudo/files/noexec-link.patch
 delete mode 100644 meta/recipes-extended/sudo/files/nostrip.patch
 delete mode 100644 meta/recipes-extended/sudo/site/bit-32
 delete mode 100644 meta/recipes-extended/sudo/site/bit-64
 delete mode 100644 meta/recipes-extended/sudo/sudo_1.7.2p7.bb
 create mode 100644 meta/recipes-extended/sudo/sudo_1.7.4p4.bb

diff --git a/meta/recipes-extended/sudo/files/autofoo.patch b/meta/recipes-extended/sudo/files/autofoo.patch
deleted file mode 100644
index 4f24737..0000000
--- a/meta/recipes-extended/sudo/files/autofoo.patch
+++ /dev/null
@@ -1,143 +0,0 @@
-# fix underquotes, rebased to 1.7.2p7
-#
-# by Kevin Tian <kevin.tian@intel.com>, 06/23/2010
-Index: sudo-1.7.2p7/aclocal.m4
-===================================================================
---- sudo-1.7.2p7.orig/aclocal.m4	2010-06-23 13:33:57.000000000 +0800
-+++ sudo-1.7.2p7/aclocal.m4	2010-06-23 13:36:41.000000000 +0800
-@@ -10,7 +10,7 @@
- dnl
- dnl check for sendmail
- dnl
--AC_DEFUN(SUDO_PROG_SENDMAIL, [AC_MSG_CHECKING(for sendmail)
-+AC_DEFUN([SUDO_PROG_SENDMAIL], [AC_MSG_CHECKING(for sendmail)
- if test -f "/usr/sbin/sendmail"; then
-     AC_MSG_RESULT(/usr/sbin/sendmail)
-     SUDO_DEFINE(_PATH_SUDO_SENDMAIL, "/usr/sbin/sendmail")
-@@ -37,7 +37,7 @@
- dnl
- dnl check for vi
- dnl
--AC_DEFUN(SUDO_PROG_VI, [AC_MSG_CHECKING(for vi)
-+AC_DEFUN([SUDO_PROG_VI], [AC_MSG_CHECKING(for vi)
- if test -f "/usr/bin/vi"; then
-     AC_MSG_RESULT(/usr/bin/vi)
-     SUDO_DEFINE(_PATH_VI, "/usr/bin/vi")
-@@ -61,7 +61,7 @@
- dnl
- dnl check for mv
- dnl
--AC_DEFUN(SUDO_PROG_MV, [AC_MSG_CHECKING(for mv)
-+AC_DEFUN([SUDO_PROG_MV], [AC_MSG_CHECKING(for mv)
- if test -f "/usr/bin/mv"; then
-     AC_MSG_RESULT(/usr/bin/mv)
-     SUDO_DEFINE(_PATH_MV, "/usr/bin/mv")
-@@ -82,7 +82,7 @@
- dnl
- dnl check for bourne shell
- dnl
--AC_DEFUN(SUDO_PROG_BSHELL, [AC_MSG_CHECKING(for bourne shell)
-+AC_DEFUN([SUDO_PROG_BSHELL], [AC_MSG_CHECKING(for bourne shell)
- if test -f "/bin/sh"; then
-     AC_MSG_RESULT(/bin/sh)
-     SUDO_DEFINE(_PATH_BSHELL, "/bin/sh")
-@@ -115,7 +115,7 @@
- dnl
- dnl Where the log file goes, use /var/log if it exists, else /{var,usr}/adm
- dnl
--AC_DEFUN(SUDO_LOGFILE, [AC_MSG_CHECKING(for log file location)
-+AC_DEFUN([SUDO_LOGFILE], [AC_MSG_CHECKING(for log file location)
- if test -n "$with_logpath"; then
-     AC_MSG_RESULT($with_logpath)
-     SUDO_DEFINE_UNQUOTED(_PATH_SUDO_LOGFILE, "$with_logpath")
-@@ -136,7 +136,7 @@
- dnl
- dnl Where the log file goes, use /var/log if it exists, else /{var,usr}/adm
- dnl
--AC_DEFUN(SUDO_TIMEDIR, [AC_MSG_CHECKING(for timestamp file location)
-+AC_DEFUN([SUDO_TIMEDIR], [AC_MSG_CHECKING(for timestamp file location)
- if test -n "$with_timedir"; then
-     AC_MSG_RESULT($with_timedir)
-     SUDO_DEFINE_UNQUOTED(_PATH_SUDO_TIMEDIR, "$with_timedir")
-@@ -160,7 +160,7 @@
- dnl SUDO_CHECK_TYPE(TYPE, DEFAULT)
- dnl XXX - should require the check for unistd.h...
- dnl
--AC_DEFUN(SUDO_CHECK_TYPE,
-+AC_DEFUN([SUDO_CHECK_TYPE],
- [AC_REQUIRE([AC_HEADER_STDC])dnl
- AC_MSG_CHECKING(for $1)
- AC_CACHE_VAL(sudo_cv_type_$1,
-@@ -181,31 +181,31 @@
- dnl
- dnl Check for size_t declation
- dnl
--AC_DEFUN(SUDO_TYPE_SIZE_T,
-+AC_DEFUN([SUDO_TYPE_SIZE_T],
- [SUDO_CHECK_TYPE(size_t, int)])
- 
- dnl
- dnl Check for ssize_t declation
- dnl
--AC_DEFUN(SUDO_TYPE_SSIZE_T,
-+AC_DEFUN([SUDO_TYPE_SSIZE_T],
- [SUDO_CHECK_TYPE(ssize_t, int)])
- 
- dnl
- dnl Check for dev_t declation
- dnl
--AC_DEFUN(SUDO_TYPE_DEV_T,
-+AC_DEFUN([SUDO_TYPE_DEV_T],
- [SUDO_CHECK_TYPE(dev_t, int)])
- 
- dnl
- dnl Check for ino_t declation
- dnl
--AC_DEFUN(SUDO_TYPE_INO_T,
-+AC_DEFUN([SUDO_TYPE_INO_T],
- [SUDO_CHECK_TYPE(ino_t, unsigned int)])
- 
- dnl
- dnl check for working fnmatch(3)
- dnl
--AC_DEFUN(SUDO_FUNC_FNMATCH,
-+AC_DEFUN([SUDO_FUNC_FNMATCH],
- [AC_MSG_CHECKING([for working fnmatch with FNM_CASEFOLD])
- AC_CACHE_VAL(sudo_cv_func_fnmatch,
- [rm -f conftestdata; > conftestdata
-@@ -271,7 +271,7 @@
- dnl
- dnl check for sa_len field in struct sockaddr
- dnl
--AC_DEFUN(SUDO_SOCK_SA_LEN,
-+AC_DEFUN([SUDO_SOCK_SA_LEN],
- [AC_MSG_CHECKING(for sa_len field in struct sockaddr)
- AC_CACHE_VAL(sudo_cv_sock_sa_len,
- [AC_TRY_RUN([#include <sys/types.h>
-@@ -294,7 +294,7 @@
- dnl we can't really trust UID_MAX or MAXUID since they may exist
- dnl only for backwards compatibility.
- dnl
--AC_DEFUN(SUDO_UID_T_LEN,
-+AC_DEFUN([SUDO_UID_T_LEN],
- [AC_REQUIRE([AC_TYPE_UID_T])
- AC_MSG_CHECKING(max length of uid_t)
- AC_CACHE_VAL(sudo_cv_uid_t_len,
-@@ -327,7 +327,7 @@
- dnl
- dnl Check for presence of long long and for sizeof(long long) == sizeof(long)
- dnl
--AC_DEFUN(SUDO_TYPE_LONG_LONG,
-+AC_DEFUN([SUDO_TYPE_LONG_LONG],
- [AC_CHECK_TYPES(long long, [AC_DEFINE(HAVE_LONG_LONG, 1, [Define if your compiler supports the "long long" type.])]
- [AC_MSG_CHECKING(for long and long long equivalence)
- AC_CACHE_VAL(sudo_cv_type_long_is_quad,
-@@ -347,7 +347,7 @@
- dnl
- dnl append a libpath to an LDFLAGS style variable
- dnl
--AC_DEFUN(SUDO_APPEND_LIBPATH, [
-+AC_DEFUN([SUDO_APPEND_LIBPATH], [
-     if test X"$with_rpath" = X"yes"; then
- 	case "$host" in
- 	    *-*-hpux*)	$1="${$1} -L$2 -Wl,+b,$2"
diff --git a/meta/recipes-extended/sudo/files/libtool.patch b/meta/recipes-extended/sudo/files/libtool.patch
new file mode 100644
index 0000000..2375fc6
--- /dev/null
+++ b/meta/recipes-extended/sudo/files/libtool.patch
@@ -0,0 +1,20 @@
+# Fix path to libtool scripts so autoreconf can succeed.
+#
+# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff -urN sudo-1.7.4p4.orig//aclocal.m4 sudo-1.7.4p4//aclocal.m4
+--- sudo-1.7.4p4.orig//aclocal.m4	2010-08-06 07:17:36.000000000 -0700
++++ sudo-1.7.4p4//aclocal.m4	2010-11-22 14:38:20.360957038 -0800
+@@ -368,8 +368,8 @@
+ dnl
+ dnl Pull in libtool macros
+ dnl
+-m4_include([libtool.m4])
+-m4_include([ltoptions.m4])
+-m4_include([ltsugar.m4])
+-m4_include([ltversion.m4])
+-m4_include([lt~obsolete.m4])
++m4_include([m4/libtool.m4])
++m4_include([m4/ltoptions.m4])
++m4_include([m4/ltsugar.m4])
++m4_include([m4/ltversion.m4])
++m4_include([m4/lt~obsolete.m4])
diff --git a/meta/recipes-extended/sudo/files/noexec-link.patch b/meta/recipes-extended/sudo/files/noexec-link.patch
deleted file mode 100644
index e0d35d0..0000000
--- a/meta/recipes-extended/sudo/files/noexec-link.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-# libtool requires library's name to start with 'lib', or else error is reported. with "-module" option
-# that check is skipped
-#
-# comments added by Kevin Tian <kevin.tian@intel.com>, 06/23/2010
-Index: sudo-1.6.8p6/Makefile.in
-===================================================================
---- sudo-1.6.8p6.orig/Makefile.in	2005-01-21 19:09:26.963276656 -0500
-+++ sudo-1.6.8p6/Makefile.in	2005-01-21 19:16:11.918714072 -0500
-@@ -187,7 +187,7 @@
- 	$(CC) -o $@ $(TESTOBJS) $(LIBOBJS) $(LDFLAGS) $(LIBS) $(NET_LIBS)
- 
- sudo_noexec.la: sudo_noexec.lo
--	$(LIBTOOL) --mode=link $(CC) $(LDFLAGS) -o $@ sudo_noexec.lo -avoid-version -rpath $(noexecdir)
-+	$(LIBTOOL) --mode=link $(CC) $(LDFLAGS) -o $@ sudo_noexec.lo -avoid-version -module -rpath $(noexecdir)
- 
- # Uncomment the following if you want "make distclean" to clean the parser
- @DEV@PARSESRCS = sudo.tab.h sudo.tab.c lex.yy.c def_data.c def_data.h
diff --git a/meta/recipes-extended/sudo/files/nostrip.patch b/meta/recipes-extended/sudo/files/nostrip.patch
deleted file mode 100644
index 3c71b4f..0000000
--- a/meta/recipes-extended/sudo/files/nostrip.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-# this could be pushed upstream to allowing conditional strip. Now it's not applied.
-# we use sed in recipe for same purpose. Keep here as reminder for upstream
-#
-# comment added by Kevin Tian <kevin.tian@intel.com>, 07/01/2010
-#
-# Patch managed by http://www.holgerschurig.de/patcher.html
-#
-
-Index: sudo-1.6.8p5/Makefile.in
-===================================================================
---- sudo-1.6.8p5.orig/Makefile.in	2005-01-21 18:19:05.762568976 -0500
-+++ sudo-1.6.8p5/Makefile.in	2005-01-21 18:19:34.701169640 -0500
-@@ -307,8 +307,8 @@
- 	    $(DESTDIR)$(noexecdir)
- 
- install-binaries: $(PROGS)
--	$(INSTALL) $(install_owncmd) -m 4555 -s sudo $(DESTDIR)$(sudodir)/sudo
--	$(INSTALL) $(install_owncmd) -m 0555 -s visudo $(DESTDIR)$(visudodir)/visudo
-+	$(INSTALL) $(install_owncmd) -m 4555 sudo $(DESTDIR)$(sudodir)/sudo
-+	$(INSTALL) $(install_owncmd) -m 0555 visudo $(DESTDIR)$(visudodir)/visudo
- 	rm -f $(DESTDIR)$(sudodir)/sudoedit
- 	ln $(DESTDIR)$(sudodir)/sudo $(DESTDIR)$(sudodir)/sudoedit
- 
diff --git a/meta/recipes-extended/sudo/site/bit-32 b/meta/recipes-extended/sudo/site/bit-32
deleted file mode 100644
index 9b7ca5c..0000000
--- a/meta/recipes-extended/sudo/site/bit-32
+++ /dev/null
@@ -1,2 +0,0 @@
-# is sizeof(long long) == sizeof(long)
-sudo_cv_type_long_is_quad=${sudo_cv_type_long_is_quad=no}
diff --git a/meta/recipes-extended/sudo/site/bit-64 b/meta/recipes-extended/sudo/site/bit-64
deleted file mode 100644
index 05846ff..0000000
--- a/meta/recipes-extended/sudo/site/bit-64
+++ /dev/null
@@ -1,2 +0,0 @@
-# is sizeof(long long) == sizeof(long)
-sudo_cv_type_long_is_quad=${sudo_cv_type_long_is_quad=yes}
diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
index 2add94b..1407bf1 100644
--- a/meta/recipes-extended/sudo/sudo.inc
+++ b/meta/recipes-extended/sudo/sudo.inc
@@ -1,26 +1,23 @@
+SUMMARY = "Provide limited super user privileges to specific users"
 DESCRIPTION = "Sudo (superuser do) allows a system administrator to give certain users (or groups of users) the ability to run some (or all) commands as root while logging all commands and arguments."
-HOMEPAGE = "http://www.courtesan.com/sudo/"
+HOMEPAGE = "http://www.sudo.ws"
 BUGTRACKER = "http://www.sudo.ws/bugs/"
 PRIORITY = "optional"
 SECTION = "admin"
 LICENSE = "ISC & UCB & MIT"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=a7dfe8895011d65d0c2e24aaf5ad0843 \
-                    file://nonunix.h;startline=4;endline=28;md5=1e70feedac93a3fd7f5254e3fec52677 \
-                    file://vasgroups.c;startline=4;endline=28;md5=1e70feedac93a3fd7f5254e3fec52677 \
-                    file://fnmatch.c;startline=6;endline=31;md5=0779058eafd6e23b966585b45bfa54f3 \
-                    file://getcwd.c;startline=5;endline=27;md5=08d82914995224a0ca42116d7ca2a218 \
-                    file://glob.c;startline=6;endline=31;md5=299cb38ec8d56e89118ce57fb83b4f78 \
-                    file://snprintf.c;startline=6;endline=31;md5=dabd56a89a7a773850dc06ee4f1ecde2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0b07397b2fca3fb8b71f08cd85c6eb3f \
+                    file://nonunix.h;beginline=4;endline=28;md5=af7d361f47ae60769cac77e4fca0dbb0 \
+                    file://vasgroups.c;beginline=4;endline=28;md5=af7d361f47ae60769cac77e4fca0dbb0 \
+                    file://fnmatch.c;beginline=6;endline=31;md5=5872733146b9eb0deb79e1f664815b85 \
+                    file://getcwd.c;beginline=5;endline=27;md5=449af4cc57fc7d46f42090608ba3e681 \
+                    file://glob.c;beginline=6;endline=31;md5=5872733146b9eb0deb79e1f664815b85 \
+                    file://snprintf.c;beginline=6;endline=31;md5=c98b24f02967c095d7a70ae2e4d4d4ea"
 
 inherit autotools
 
 EXTRA_OECONF = "--with-editor=/bin/vi --with-env-editor"
 
 do_configure_prepend () {
-	# Prevent binaries from being stripped on the host
-	sed -i 's/\($(INSTALL).*\) -s \(.*[(sudo|visudo)]\)/\1 \2/g' Makefile.in
-
-	rm -f acsite.m4
 	if [ ! -e acinclude.m4 ]; then
 		cat aclocal.m4 > acinclude.m4
 	fi
diff --git a/meta/recipes-extended/sudo/sudo_1.7.2p7.bb b/meta/recipes-extended/sudo/sudo_1.7.2p7.bb
deleted file mode 100644
index 3dd6cdf..0000000
--- a/meta/recipes-extended/sudo/sudo_1.7.2p7.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-PR = "r0"
-
-SRC_URI = "http://ftp.sudo.ws/sudo/dist/sudo-1.7.2p7.tar.gz \
-           file://noexec-link.patch"
-
-require sudo.inc
-EXTRA_OECONF += " --with-pam=no"
diff --git a/meta/recipes-extended/sudo/sudo_1.7.4p4.bb b/meta/recipes-extended/sudo/sudo_1.7.4p4.bb
new file mode 100644
index 0000000..ee81b65
--- /dev/null
+++ b/meta/recipes-extended/sudo/sudo_1.7.4p4.bb
@@ -0,0 +1,11 @@
+require sudo.inc
+
+PR = "r0"
+
+SRC_URI = "http://ftp.sudo.ws/sudo/dist/sudo-${PV}.tar.gz \
+           file://libtool.patch"
+
+SRC_URI[md5sum] = "55d9906535d70a1de347cd3d3550ee87"
+SRC_URI[sha256sum] = "38de3c3e08346b2b8dcb3cf7ed0813300d1a1d5696d0f338ea8a4ef232aacf97"
+
+EXTRA_OECONF += " --with-pam=no"
-- 
1.7.1


