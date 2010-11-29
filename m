Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 923AB4C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 15:55:43 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4586A30503
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 16:55:32 -0500 (EST)
Message-Id: <6354279041f28cfe255e32bb19e490b55243dbe9.1291326732.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1291326732.git.scott.a.garman@intel.com>
References: <cover.1291326732.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Sun, 28 Nov 2010 20:46:27 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4586A30503.F3744
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/3] insserv: upgrade to version 1.14.0
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
X-List-Received-Date: Thu, 02 Dec 2010 21:55:43 -0000

* Removed obsolete patches
* Disabled make check tests which cannot be run when cross-compiled
* Added SUMMARY, DESCRIPTION, and PRIORITY fields
* Added source checksums

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../insserv/files/40_segfault_virtprov.dpatch      |   89 --------------------
 .../insserv/files/42_loopnochangemsg.dpatch        |   20 -----
 .../insserv/files/crosscompile_fix.patch           |   22 -----
 .../insserv/files/disable_runtests.patch           |   18 ++++
 meta/recipes-devtools/insserv/files/make.patch     |   58 -------------
 meta/recipes-devtools/insserv/files/makefile.patch |   70 +++++++++++++++
 meta/recipes-devtools/insserv/insserv_1.11.0.bb    |   18 ----
 meta/recipes-devtools/insserv/insserv_1.14.0.bb    |   24 +++++
 8 files changed, 112 insertions(+), 207 deletions(-)
 delete mode 100644 meta/recipes-devtools/insserv/files/40_segfault_virtprov.dpatch
 delete mode 100644 meta/recipes-devtools/insserv/files/42_loopnochangemsg.dpatch
 delete mode 100644 meta/recipes-devtools/insserv/files/crosscompile_fix.patch
 create mode 100644 meta/recipes-devtools/insserv/files/disable_runtests.patch
 delete mode 100644 meta/recipes-devtools/insserv/files/make.patch
 create mode 100644 meta/recipes-devtools/insserv/files/makefile.patch
 delete mode 100644 meta/recipes-devtools/insserv/insserv_1.11.0.bb
 create mode 100644 meta/recipes-devtools/insserv/insserv_1.14.0.bb

diff --git a/meta/recipes-devtools/insserv/files/40_segfault_virtprov.dpatch b/meta/recipes-devtools/insserv/files/40_segfault_virtprov.dpatch
deleted file mode 100644
index 9b00813..0000000
--- a/meta/recipes-devtools/insserv/files/40_segfault_virtprov.dpatch
+++ /dev/null
@@ -1,89 +0,0 @@
-#! /bin/sh /usr/share/dpatch/dpatch-run
-## 40_segfault_virtprov.dpatch by Petter Reinholdtsen
-
-Avoid segfault when an enabled service provide a virtual system
-facility.
-
-@DPATCH@
---- insserv/insserv.c
-+++ insserv/insserv.c	2008-02-01 11:43:45.634618329 +0100
-@@ -166,7 +166,7 @@ typedef struct pwd_struct {
- 
- static list_t pwd = { &(pwd), &(pwd) }, * topd = &(pwd);
- 
--static void pushd(const char *const __restrict path);
-+static void pushd(const char *const __restrict path) __attribute__((nonnull(1)));
- static void pushd(const char *const path)
- {
-     pwd_t *  dir;
-@@ -305,13 +305,13 @@ out:
-     return getserv(ptr);
- }
- 
--static serv_t * findserv(const char *const __restrict serv) __attribute__((nonnull(1)));
-+static serv_t * findserv(const char *const __restrict serv);
- static serv_t * findserv(const char *const serv)
- {
-     list_t * ptr;
-     serv_t * ret = (serv_t*)0;
- 
--    if (!serv)
-+    if (serv == (const char*)0)
- 	goto out;
- 
-     list_for_each(ptr, serv_start) {
-@@ -334,6 +334,9 @@ static void rememberreq(serv_t *serv, ui
-     list_t * ptr;
-     uint old = bit;
- 
-+    if (!tmp)
-+	error("%s", strerror(errno));
-+
-     while ((token = strsep(&tmp, delimeter))) {
- 	boolean found = false;
- 	req_t * this;
-@@ -399,6 +402,9 @@ static void reversereq(const serv_t * se
-     char * rev = strdupa(list);
-     uint old = bit;
- 
-+    if (!rev)
-+	error("%s", strerror(errno));
-+
-     while ((dep = strsep(&rev, delimeter)) && *dep) {
- 	serv_t * tmp;
- 	list_t * ptr;
-@@ -437,7 +443,7 @@ static void reversereq(const serv_t * se
- /*
-  * Check required services for name
-  */
--static boolean chkrequired(const char *const __restrict name) __attribute__((nonnull(1)));
-+static boolean chkrequired(const char *const __restrict name);
- static boolean chkrequired(const char *const name)
- {
-     serv_t * serv = findserv(name);
---- insserv/listing.h
-+++ insserv/listing.h	2008-02-01 11:40:45.347748072 +0100
-@@ -97,11 +97,11 @@ extern int makeprov(const char *__restri
- extern void setorder(const char *__restrict script, const int order, boolean recursive) __attribute__((nonnull(1)));
- extern int getorder(const char *__restrict script) __attribute__((nonnull(1)));
- extern boolean notincluded(const char *__restrict script, const int runlevel) __attribute__((nonnull(1)));
--extern boolean foreach(const char **__restrict script, int *__restrict order, const int runlevel) __attribute__((nonnull(1,2)));
--extern void virtprov(const char *__restrict virt, const char *__restrict real) __attribute__((nonnull(1,2)));
-+extern boolean foreach(const char **__restrict script, int *__restrict order, const int runlevel) __attribute__((nonnull(2)));
-+extern void virtprov(const char *__restrict virt, const char *__restrict real) __attribute__((nonnull(1)));
- extern const char * getscript(const char *__restrict prov) __attribute__((nonnull(1)));
- extern const char * getprovides(const char *__restrict script) __attribute__((nonnull(1)));
--extern boolean listscripts(const char **__restrict script, const int lvl) __attribute__((nonnull(1)));
-+extern boolean listscripts(const char **__restrict script, const int lvl);
- extern int maxorder;
- extern boolean is_loop_detected(void);
- 
-@@ -116,7 +116,7 @@ extern int map_has_runlevels(void);
- extern int map_runlevel_to_lvl (const int runlevel);
- extern int map_key_to_lvl(const char key);
- 
--static inline char * xstrdup(const char *__restrict s) __attribute__((always_inline,nonnull(1)));
-+static inline char * xstrdup(const char *__restrict s) __attribute__((always_inline));
- static inline char * xstrdup(const char * s)
- {
-     char * r;
diff --git a/meta/recipes-devtools/insserv/files/42_loopnochangemsg.dpatch b/meta/recipes-devtools/insserv/files/42_loopnochangemsg.dpatch
deleted file mode 100644
index 4a15f58..0000000
--- a/meta/recipes-devtools/insserv/files/42_loopnochangemsg.dpatch
+++ /dev/null
@@ -1,20 +0,0 @@
-#! /bin/sh /usr/share/dpatch/dpatch-run
-## 40_loopnochangemsg.dpatch by Petter Reinholdtsen
-
-Make it more obvious that introducing a loop will not change the
-existing boot sequence.  Thanks to Frans Pop for the rationale for
-this change.
-
-@DPATCH@
-
---- insserv-1.11.0.orig/insserv.c
-+++ insserv-1.11.0/insserv.c
-@@ -2647,7 +2647,7 @@
-     follow_all();
- 
-     if (is_loop_detected() && !ignore)
--	error("exiting now!\n");
-+	error("exiting without changing boot order!\n");
- 
-     /*
-      * Re-order some well known scripts to get
diff --git a/meta/recipes-devtools/insserv/files/crosscompile_fix.patch b/meta/recipes-devtools/insserv/files/crosscompile_fix.patch
deleted file mode 100644
index 14d8db4..0000000
--- a/meta/recipes-devtools/insserv/files/crosscompile_fix.patch
+++ /dev/null
@@ -1,22 +0,0 @@
-Index: insserv-1.11.0/Makefile
-===================================================================
---- insserv-1.11.0.orig/Makefile	2008-08-25 16:00:00.000000000 +0100
-+++ insserv-1.11.0/Makefile	2008-08-25 16:00:25.000000000 +0100
-@@ -18,16 +18,7 @@
- #
- # Architecture
- #
--ifdef RPM_OPT_FLAGS
--	  COPTS = -g $(RPM_OPT_FLAGS)
--else
--	   ARCH = $(shell uname -i)
--ifeq ($(ARCH),i386)
--	  COPTS = -O2 -mcpu=i586 -mtune=i686
--else
--	  COPTS = -O2
--endif
--endif
-+COPTS = -O2
- COPTS += -g
- 
- 	 MY_CFLAGS = $(CFLAGS) -Wall $(COPTS) $(DEBUG) $(LOOPS) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 \
diff --git a/meta/recipes-devtools/insserv/files/disable_runtests.patch b/meta/recipes-devtools/insserv/files/disable_runtests.patch
new file mode 100644
index 0000000..4e40848
--- /dev/null
+++ b/meta/recipes-devtools/insserv/files/disable_runtests.patch
@@ -0,0 +1,18 @@
+# Disable the make check runtime tests, which cannot be run when
+# cross-compiled.
+#
+# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff -urN insserv-1.14.0.orig//Makefile insserv-1.14.0/Makefile
+--- insserv-1.14.0.orig//Makefile	2010-11-28 17:12:01.715597293 -0800
++++ insserv-1.14.0/Makefile	2010-11-28 17:16:33.837780660 -0800
+@@ -119,8 +119,8 @@
+ ifeq ($(ISSUSE),-DSUSE)
+ 	issuse=true tests/common
+ #	issuse=true tests/suse
+-else
+-	tests/common
++#else
++#	tests/common
+ endif
+ 
+ install:	$(TODO) check
diff --git a/meta/recipes-devtools/insserv/files/make.patch b/meta/recipes-devtools/insserv/files/make.patch
deleted file mode 100644
index bb3b51a..0000000
--- a/meta/recipes-devtools/insserv/files/make.patch
+++ /dev/null
@@ -1,58 +0,0 @@
-=== modified file 'Makefile'
---- old/Makefile	2008-06-24 14:49:47 +0000
-+++ new/Makefile	2008-06-24 15:56:15 +0000
-@@ -7,10 +7,10 @@
- INITDIR  =	/etc/init.d
- INSCONF  =	/etc/insserv.conf
- #DESTDIR =	/tmp/root
--#DEBUG	 =	-DDEBUG=1 -Wpacked
-+DEBUG	 =	-DDEBUG=1 -Wpacked
- #LOOPS	 =	-DIGNORE_LOOPS=1
- DEBUG	 =
--ISSUSE	 =	-DSUSE
-+#ISSUSE	 =	-DSUSE
- DESTDIR	 =
- VERSION	 =	1.11.0
- DATE	 =	$(shell date +'%d%b%y' | tr '[:lower:]' '[:upper:]')
-@@ -28,7 +28,9 @@
- 	  COPTS = -O2
- endif
- endif
--	 CFLAGS = -Wall $(COPTS) $(DEBUG) $(LOOPS) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 \
-+COPTS += -g
-+
-+	 MY_CFLAGS = $(CFLAGS) -Wall $(COPTS) $(DEBUG) $(LOOPS) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 \
- 		  $(ISSUSE) -DINITDIR=\"$(INITDIR)\" -DINSCONF=\"$(INSCONF)\" -pipe
- 	  CLOOP = -falign-loops=0
- 	     CC = gcc
-@@ -58,13 +60,13 @@
- all: $(TODO)
- 
- listing.o:	listing.c listing.h .system
--	$(CC) $(CFLAGS) $(CLOOP) -c $<
-+	$(CC) $(MY_CFLAGS) $(CLOOP) -c $<
- 
- insserv.o:	insserv.c listing.h .system
--	$(CC) $(CFLAGS) $(CLOOP) -c $<
-+	$(CC) $(MY_CFLAGS) $(CLOOP) -c $<
- 
- insserv:	insserv.o listing.o
--	$(CC) $(CFLAGS) -Wl,-O,3,--relax -o $@ $^
-+	$(CC) $(MY_CFLAGS) -Wl,-O,3,--relax -o $@ $^
- 
- ifeq ($(ISSUSE),-DSUSE)
- insserv.8:	insserv.8.in .system
-@@ -86,10 +88,10 @@
- -include .depend.listing .depend.insserv
- 
- .depend.listing:
--	@$(CC) $(CFLAGS) -M listing.c >$@ 2>/dev/null
-+	@$(CC) $(MY_CFLAGS) -M listing.c >$@ 2>/dev/null
- 
- .depend.insserv:
--	@$(CC) $(CFLAGS) -M insserv.c >$@ 2>/dev/null
-+	@$(CC) $(MY_CFLAGS) -M insserv.c >$@ 2>/dev/null
- 
- install:	$(TODO)
- 	$(MKDIR)   $(SBINDIR)
-
diff --git a/meta/recipes-devtools/insserv/files/makefile.patch b/meta/recipes-devtools/insserv/files/makefile.patch
new file mode 100644
index 0000000..19e99c6
--- /dev/null
+++ b/meta/recipes-devtools/insserv/files/makefile.patch
@@ -0,0 +1,70 @@
+# Enable debug options and modify the use of CLFAGS (carried over
+# from the previous version's patch).
+#
+# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff -urN insserv-1.14.0.orig//Makefile insserv-1.14.0//Makefile
+--- insserv-1.14.0.orig//Makefile	2010-04-29 03:33:40.000000000 -0700
++++ insserv-1.14.0//Makefile	2010-11-28 17:09:20.537996190 -0800
+@@ -8,27 +8,16 @@
+ INITDIR  =	/etc/init.d
+ INSCONF  =	/etc/insserv.conf
+ #DESTDIR =	/tmp/root
+-#DEBUG	 =	-DDEBUG=1 -Wpacked
++DEBUG	 =	-DDEBUG=1 -Wpacked
+ DEBUG	 =
+-ISSUSE	 =	-DSUSE
++#ISSUSE	 =	-DSUSE
+ DESTDIR	 =
+ VERSION	 =	1.14.0
+ DATE	 =	$(shell date +'%d%b%y' | tr '[:lower:]' '[:upper:]')
+ 
+-#
+-# Architecture
+-#
+-ifdef RPM_OPT_FLAGS
+-	  COPTS = -g $(RPM_OPT_FLAGS)
+-else
+-	   ARCH = $(shell uname -i)
+-ifeq ($(ARCH),i386)
+-	  COPTS = -g -O3 -mcpu=i586 -mtune=i686
+-else
+-	  COPTS = -g -O2
+-endif
+-endif
+-	 CFLAGS = -W -Wall $(COPTS) $(DEBUG) $(LOOPS) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 \
++COPTS = -O2 -g
++
++	 MY_CFLAGS = $(CFLAGS) -W -Wall $(COPTS) $(DEBUG) $(LOOPS) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 \
+ 		  $(ISSUSE) -DINITDIR=\"$(INITDIR)\" -DINSCONF=\"$(INSCONF)\" -pipe
+ 	  CLOOP = -falign-loops=0
+ 	LDFLAGS = -Wl,-O,3,--relax
+@@ -75,13 +64,13 @@
+ all:		$(TODO)
+ 
+ insserv:	insserv.o listing.o
+-	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
++	$(CC) $(MY_CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
+ 
+ listing.o:	listing.c listing.h config.h .system
+-	$(CC) $(CFLAGS) $(CLOOP) -c $<
++	$(CC) $(MY_CFLAGS) $(CLOOP) -c $<
+ 
+ insserv.o:	insserv.c listing.h config.h .system
+-	$(CC) $(CFLAGS) $(CLOOP) -c $<
++	$(CC) $(MY_CFLAGS) $(CLOOP) -c $<
+ 
+ listing.h:	.system
+ 
+@@ -119,10 +108,10 @@
+ -include	.depend.listing .depend.insserv
+ 
+ .depend.listing::	listing.c listing.h
+-	@$(CC) $(CFLAGS) -M listing.c >$@ 2>/dev/null
++	@$(CC) $(MY_CFLAGS) -M listing.c >$@ 2>/dev/null
+ 
+ .depend.insserv::	insserv.c listing.h
+-	@$(CC) $(CFLAGS) -M insserv.c >$@ 2>/dev/null
++	@$(CC) $(MY_CFLAGS) -M insserv.c >$@ 2>/dev/null
+ 
+ endif
+ 
diff --git a/meta/recipes-devtools/insserv/insserv_1.11.0.bb b/meta/recipes-devtools/insserv/insserv_1.11.0.bb
deleted file mode 100644
index f3c79ee..0000000
--- a/meta/recipes-devtools/insserv/insserv_1.11.0.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
-SECTION = "base"
-PR = "r1"
-
-SRC_URI = "ftp://ftp.suse.com/pub/projects/init/${BPN}-${PV}.tar.gz \
-        file://40_segfault_virtprov.dpatch;patch=1 \
-        file://42_loopnochangemsg.dpatch;patch=1 \
-        file://make.patch;patch=1 \
-        file://crosscompile_fix.patch;patch=1 \
-        file://insserv.conf"
-
-do_install () {
-	oe_runmake 'DESTDIR=${D}' install
-	install -m0644 ${WORKDIR}/insserv.conf ${D}${sysconfdir}/insserv.conf
-}
-
-BBCLASSEXTEND = "native"
diff --git a/meta/recipes-devtools/insserv/insserv_1.14.0.bb b/meta/recipes-devtools/insserv/insserv_1.14.0.bb
new file mode 100644
index 0000000..75f79d9
--- /dev/null
+++ b/meta/recipes-devtools/insserv/insserv_1.14.0.bb
@@ -0,0 +1,24 @@
+SUMMARY = "Enable an installed system init script"
+DESCRIPTION = "Enable an installed system init script by reading the comment header of the script"
+# There is no known home page for insserv
+SECTION = "base"
+PRIORITY = "optional"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
+
+PR = "r0"
+
+SRC_URI = "ftp://ftp.suse.com/pub/projects/init/${PN}-${PV}.tar.bz2 \
+           file://makefile.patch \
+           file://disable_runtests.patch \
+           file://insserv.conf"
+
+SRC_URI[md5sum] = "4a97d900855148842b1aa8f33b988b47"
+SRC_URI[sha256sum] = "89a0a093b1cf3d802ad40568e64b496b493f51ff9825905c8bd12738b374ca47"
+
+do_install () {
+	oe_runmake 'DESTDIR=${D}' install
+	install -m0644 ${WORKDIR}/insserv.conf ${D}${sysconfdir}/insserv.conf
+}
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


