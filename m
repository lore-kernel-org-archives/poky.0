Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB4E64C800AF
	for <poky@yoctoproject.org>; Fri, 27 May 2011 04:11:46 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2011 02:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="5759200"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 02:11:42 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QPsx0-0000rC-6x; Fri, 27 May 2011 17:03:22 +0800
From: Qing He <qing.he@intel.com>
To: poky@yoctoproject.org
Date: Fri, 27 May 2011 17:03:18 +0800
Message-Id: <c2ef9acdefb7f8a7ac7ddfc2bf3a0d613e24851d.1306486855.git.qing.he@intel.com>
X-Mailer: git-send-email 1.7.0
In-Reply-To: <cover.1306486855.git.qing.he@intel.com>
References: <cover.1306486855.git.qing.he@intel.com>
Subject: [PATCH 1/1] rpm: fix fprint pointer issue
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
X-List-Received-Date: Fri, 27 May 2011 09:11:47 -0000

[YOCTO #1030]

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../rpm/rpm/fprint-pointer-fix.patch               |   35 ++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |    3 +-
 2 files changed, 37 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch

diff --git a/meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch b/meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch
new file mode 100644
index 0000000..87a92eb
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch
@@ -0,0 +1,35 @@
+Upstream-Status: Submitted
+
+From: Qing He <qing.he@intel.com>
+Subject: [PATCH] rpm 5.4.0: Fix pointer mishandling
+
+In fpLookupSubdir, data returned by hash should be of type
+"struct rpmffi_s **" instead of "struct rpmffi_s *" to avoid
+segfault.
+
+Signed-off-by: Qing He <qing.he@intel.com>
+
+diff --git a/rpmdb/fprint.c b/rpmdb/fprint.c
+index 0e76148..82b8f45 100644
+--- a/rpmdb/fprint.c
++++ b/rpmdb/fprint.c
+@@ -333,7 +333,7 @@ restart:
+     *te = '\0';
+ 
+     while (te < se) {
+-	struct rpmffi_s * recs;
++	struct rpmffi_s ** recs;
+ 	int numRecs;
+ 	int i;
+ 
+@@ -346,8 +346,8 @@ restart:
+ 	    const char * link;
+ 	    int fx;
+ 
+-	    fx = recs[i].fileno;
+-	    fi =  recs[i].p->fi;
++	    fx = recs[i]->fileno;
++	    fi =  recs[i]->p->fi;
+ 	    flink = fi->flinks[fx];
+ 	    if (!(flink && *flink != '\0'))
+ 		continue;
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index ff55469..d3f85f2 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -43,7 +43,7 @@ LICENSE = "LGPL 2.1"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
 DEPENDS = "bzip2 zlib python perl db openssl elfutils expat libpcre attr acl popt"
-PR = "r15"
+PR = "r16"
 
 # rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
 # in order to extract the distribution SRPM into a format we can extract...
@@ -57,6 +57,7 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;ex
 	   file://rpm-nofsync.patch \
 	   file://rpm-solvedb.patch \
 	   file://rpm-tools-mtree-LDFLAGS.patch \
+	   file://fprint-pointer-fix.patch \
 	  "
 
 #           file://hdraddorappend.patch \
-- 
1.7.0


