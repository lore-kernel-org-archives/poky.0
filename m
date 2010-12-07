Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE6F04C811D0
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 15:14:27 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 1CB9418059D0;
	Tue,  7 Dec 2010 22:14:26 +0100 (CET)
X-Auth-Info: AtrY9kE1I+MFs8Ovyqew1tgS6yGqvCtD/tc+Us40+/Q=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 6A9881C000AD;
	Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 413DF3335219;
	Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 1D41AD0E429; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: poky@yoctoproject.org
Date: Tue,  7 Dec 2010 22:13:59 +0100
Message-Id: <1291756443-28767-2-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.3.2
In-Reply-To: <1291756443-28767-1-git-send-email-wd@denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH 1/5] eglibc: fix build issue with make-3.82
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

From: Vasily Khoruzhick <anarsoul@gmail.com>

Add patch to fix this error when building eglibc-2.11, eglibc-2.12
with make-3.82:

make[2]: Entering directory `eglibc-2_12/libc/manual'
Makefile:246: *** mixed implicit and normal rules.  Stop.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Khem Raj <raj.khem@gmail.com>

Adapted for Poky from OE commit fbcef38
Signed-off-by: Wolfgang Denk <wd@denx.de>
---
 meta/recipes-core/eglibc/eglibc_2.12.bb            |    3 ++-
 .../eglibc/files/eglibc-make-382.patch             |   15 +++++++++++++++
 2 files changed, 17 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-core/eglibc/files/eglibc-make-382.patch

diff --git a/meta/recipes-core/eglibc/eglibc_2.12.bb b/meta/recipes-core/eglibc/eglibc_2.12.bb
index 3d0dc73..d188bca 100644
--- a/meta/recipes-core/eglibc/eglibc_2.12.bb
+++ b/meta/recipes-core/eglibc/eglibc_2.12.bb
@@ -2,7 +2,7 @@ require eglibc.inc
 
 DEPENDS += "gperf-native"
 FILESPATHPKG =. "eglibc-svn:"
-PR = "r12"
+PR = "r13"
 
 EGLIBC_BRANCH="eglibc-2_12"
 SRC_URI = "svn://www.eglibc.org/svn/branches/;module=${EGLIBC_BRANCH};proto=http \
@@ -10,6 +10,7 @@ SRC_URI = "svn://www.eglibc.org/svn/branches/;module=${EGLIBC_BRANCH};proto=http
            file://IO-acquire-lock-fix.patch \
            file://shorten-build-commands.patch \
            file://mips-rld-map-check.patch \
+	   file://eglibc-make-382.patch \
            file://etc/ld.so.conf \
            file://generate-supported.mk \
 	   file://fix-for-make-3.82.diff"
diff --git a/meta/recipes-core/eglibc/files/eglibc-make-382.patch b/meta/recipes-core/eglibc/files/eglibc-make-382.patch
new file mode 100644
index 0000000..5ecad90
--- /dev/null
+++ b/meta/recipes-core/eglibc/files/eglibc-make-382.patch
@@ -0,0 +1,15 @@
+http://git.frugalware.org/gitweb/gitweb.cgi?p=frugalware-current.git;a=blob_plain;f=source/base/glibc/make-3.82-fix.patch;hb=8217c32ecc2e14962847ba3d8a272eb64a3dba4f
+
+--- libc/manual/Makefile
++++ libc/manual/Makefile
+@@ -232,7 +232,9 @@
+ .PHONY: stubs
+ stubs: $(objpfx)stubs
+ endif
+-$(objpfx)stubs ../po/manual.pot $(objpfx)stamp%:
++$(objpfx)stubs ../po/manual.pot:
++	touch $@
++$(objpfx)stamp%:
+ 	$(make-target-directory)
+ 	touch $@
+ 
-- 
1.7.3.2


