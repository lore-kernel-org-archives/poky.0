Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30A304C811E3
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Dec 2010 08:28:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="584003800"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by orsmga002.jf.intel.com with ESMTP; 15 Dec 2010 08:28:12 -0800
Message-Id: <72ddd5c20246a5d5b1752b58a61ef75b4c39cc40.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/14] eglibc: fix build of eglibc-initial for make 3.82
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
Date: Wed, 15 Dec 2010 16:28:24 -0000
X-Original-Date: Tue, 9 Nov 2010 12:14:28 +0000
X-List-Received-Date: Wed, 15 Dec 2010 16:28:24 -0000

Make 3.82, as shipped with Fedora 14, fixes some holes in the parser which in
turn breaks behaviour of some Makefiles. Most notably eglibc's.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../eglibc/eglibc-2.12/fix-for-make-3.82.diff      |   25 ++++++++++++++++++++
 meta/recipes-core/eglibc/eglibc_2.12.bb            |    5 ++-
 2 files changed, 28 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/eglibc/eglibc-2.12/fix-for-make-3.82.diff

diff --git a/meta/recipes-core/eglibc/eglibc-2.12/fix-for-make-3.82.diff b/meta/recipes-core/eglibc/eglibc-2.12/fix-for-make-3.82.diff
new file mode 100644
index 0000000..934d31a
--- /dev/null
+++ b/meta/recipes-core/eglibc/eglibc-2.12/fix-for-make-3.82.diff
@@ -0,0 +1,25 @@
+Make 3.82, as shipped with Fedora 14, fixes some holes in the parser which in
+turn breaks behaviour of some Makefiles. Most notably eglibc's.
+
+http://www.mail-archive.com/bug-make@gnu.org/msg06220.html
+
+Fix back-ported from glibc/eglibc revision control.
+
+JL 13/10/10
+
+Index: libc/manual/Makefile
+===================================================================
+--- libc.orig/manual/Makefile
++++ libc/manual/Makefile
+@@ -243,7 +243,10 @@ ifdef objpfx
+ .PHONY: stubs
+ stubs: $(objpfx)stubs
+ endif
+-$(objpfx)stubs ../po/manual.pot $(objpfx)stamp%:
++$(objpfx)stubs ../po/manual.pot:
++	$(make-target-directory)
++	touch $@
++$(objpfx)stamp%:
+ 	$(make-target-directory)
+ 	touch $@
+ 
diff --git a/meta/recipes-core/eglibc/eglibc_2.12.bb b/meta/recipes-core/eglibc/eglibc_2.12.bb
index 752c1d8..9db1436 100644
--- a/meta/recipes-core/eglibc/eglibc_2.12.bb
+++ b/meta/recipes-core/eglibc/eglibc_2.12.bb
@@ -2,7 +2,7 @@ require eglibc.inc
 
 DEPENDS += "gperf-native"
 FILESPATHPKG =. "eglibc-svn:"
-PR = "r9"
+PR = "r10"
 
 EGLIBC_BRANCH="eglibc-2_12"
 SRC_URI = "svn://www.eglibc.org/svn/branches/;module=${EGLIBC_BRANCH};proto=http \
@@ -11,7 +11,8 @@ SRC_URI = "svn://www.eglibc.org/svn/branches/;module=${EGLIBC_BRANCH};proto=http
            file://shorten-build-commands.patch \
            file://mips-rld-map-check.patch \
            file://etc/ld.so.conf \
-           file://generate-supported.mk"
+           file://generate-supported.mk \
+	   file://fix-for-make-3.82.diff"
 SRC_URI_append_virtclass-nativesdk = " file://ld-search-order.patch"
 S = "${WORKDIR}/${EGLIBC_BRANCH}/libc"
 B = "${WORKDIR}/build-${TARGET_SYS}"
-- 
1.7.3.3


