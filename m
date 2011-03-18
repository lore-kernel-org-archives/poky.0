Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C7AE4C80188
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 13:39:34 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2IIdShY015851
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:39:28 -0700 (PDT)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Fri, 18 Mar 2011 11:39:28 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 18 Mar 2011 13:39:22 -0500
Message-ID: <72a14793524511b6ab21b686b92b40ec6faeaef8.1300473493.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1300473493.git.mark.hatle@windriver.com>
References: <cover.1300473493.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 1/1] db: Fix path of arm-thumb patch
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
X-List-Received-Date: Fri, 18 Mar 2011 18:39:34 -0000
Content-Type: text/plain

Newer versions of patch, such as in Fedora 14, don't like ".." within
the middle of the file to be patched path.

In order to fix the issue we have to hand apply the patch instead of using
the normal mechanisms.  Only flaw with the os.system(...) approach is if it
fails we don't get any notification or a resolver failure.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../db/db/arm-thumb-mutex_db5.patch                |    4 ++--
 meta/recipes-support/db/db_5.1.19.bb               |    9 ++++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-support/db/db/arm-thumb-mutex_db5.patch b/meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
index 37d0d93..51d4854 100644
--- a/meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
+++ b/meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
@@ -1,5 +1,5 @@
---- db-5.1.19/../src/dbinc/mutex_int.h.orig	2011-01-05 19:21:42.181805366 -0600
-+++ db-5.1.19/../src/dbinc/mutex_int.h	2011-01-05 19:24:53.141853117 -0600
+--- db-5.1.19/src/dbinc/mutex_int.h.orig	2011-01-05 19:21:42.181805366 -0600
++++ db-5.1.19/src/dbinc/mutex_int.h	2011-01-05 19:24:53.141853117 -0600
 @@ -474,6 +474,25 @@
  
  #ifdef LOAD_ACTUAL_MUTEX_CODE
diff --git a/meta/recipes-support/db/db_5.1.19.bb b/meta/recipes-support/db/db_5.1.19.bb
index 919e532..94ce180 100644
--- a/meta/recipes-support/db/db_5.1.19.bb
+++ b/meta/recipes-support/db/db_5.1.19.bb
@@ -14,11 +14,10 @@ HOMEPAGE = "http://www.oracle.com/technology/products/berkeley-db/db/index.html"
 LICENSE = "BSD Sleepycat"
 VIRTUAL_NAME ?= "virtual/db"
 CONFLICTS = "db3"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://download.oracle.com/berkeley-db/db-${PV}.tar.gz"
-#SRC_URI_MD5 = "http://downloads.sleepycat.com/db-${PV}.tar.gz.md5"
-SRC_URI += "file://arm-thumb-mutex_db5.patch;patch=1"
+SRC_URI += "file://arm-thumb-mutex_db5.patch;apply=no"
 
 SRC_URI[md5sum] = "76fcbfeebfcd09ba0b4d96bfdf8d884d"
 SRC_URI[sha256sum] = "0194d4ca9266ba1a1c0bfbc233b18bfd05f63163453c81ebcdfdc7112d5ac850"
@@ -80,6 +79,10 @@ do_configure() {
 	oe_runconf
 }
 
+do_patch_append() {
+	os.system("cd ${S}/.. ; patch -p1 -i ${WORKDIR}/arm-thumb-mutex_db5.patch")
+}
+
 do_install_append() {
 	mkdir -p ${D}/${includedir}/db51
 	#mv ${D}/${includedir}/db_185.h ${D}/${includedir}/db51/.
-- 
1.7.4


