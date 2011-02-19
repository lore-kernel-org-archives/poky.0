Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59C514C80A54
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 19:05:41 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1J15ZGT008219
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 17:05:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 17:05:35 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 17:05:35 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 18 Feb 2011 19:03:53 -0600
Message-Id: <0e5d2937ef14153ab4be73a2f993183bbdf0f83a.1298077360.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1298077360.git.mark.hatle@windriver.com>
References: <cover.1298077360.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1298077360.git.mark.hatle@windriver.com>
References: <cover.1298077360.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 19 Feb 2011 01:05:35.0624 (UTC)
	FILETIME=[1D431080:01CBCFD1]
Subject: [PATCH 1/1] rpm: Increase the number of solvedb's allowed
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
X-List-Received-Date: Sat, 19 Feb 2011 01:05:41 -0000

Increase the number of allowed solvedb's to 20 from the original 5.

We also add an additional error message to RPM incase the 20 is ever
exceeded.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/rpm/rpm/rpm-solvedb.patch |   29 +++++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb          |    3 +-
 2 files changed, 31 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-solvedb.patch

diff --git a/meta/recipes-devtools/rpm/rpm/rpm-solvedb.patch b/meta/recipes-devtools/rpm/rpm/rpm-solvedb.patch
new file mode 100644
index 0000000..5c1819c
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm-solvedb.patch
@@ -0,0 +1,29 @@
+Increase the maximum number of solver databases!
+
+Previously the max was set to 5, up this to 20... this should be more
+then enough for now.. also add an RPM_ERROR message in case we exceed the
+new maximum.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+diff -urN rpm-5.4.0.orig/rpmio/rpmbag.c rpm-5.4.0/rpmio/rpmbag.c
+--- rpm-5.4.0.orig/rpmio/rpmbag.c	2010-10-17 21:43:55.000000000 -0500
++++ rpm-5.4.0/rpmio/rpmbag.c	2011-02-18 18:46:00.246892502 -0600
+@@ -16,7 +16,7 @@
+ /*@unchecked@*/
+ int _rpmbag_debug = 0;
+ 
+-static size_t _maxnsdbp = 5;
++static size_t _maxnsdbp = 20;
+ 
+ static void rpmbagFini(void * _bag)
+ 	/*@globals fileSystem @*/
+@@ -70,6 +70,8 @@
+ 	sdbp[i] = xcalloc(1, sizeof(*sdbp[i]));
+ 	sdbp[i]->dbmode = dbmode;
+ 	sdbp[i]->_db = _db;
++    } else if (bag && bag->sdbp && bag->nsdbp >= _maxnsdbp) {
++	rpmlog(RPMLOG_ERR, _("Attempted to open more then %d solver databases.  Increase _maxnsdbp in rpmio/rpmbag.c\n"), _maxnsdbp);
+     }
+ 
+     return 0;
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 45dd4e1..ac9df6f 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -43,7 +43,7 @@ LICENSE = "LGPL 2.1"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
 DEPENDS = "bzip2 zlib python perl db openssl elfutils expat libpcre attr acl popt"
-PR = "r12"
+PR = "r13"
 
 # rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
 # in order to extract the distribution SRPM into a format we can extract...
@@ -55,6 +55,7 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;ex
 	   file://rpm-platform.patch \
 	   file://rpm-showrc.patch \
 	   file://rpm-nofsync.patch \
+	   file://rpm-solvedb.patch \
 	  "
 
 #           file://hdraddorappend.patch \
-- 
1.7.3.4


