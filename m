Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA413E00301
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960381"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:13 -0700
Message-Id: <b3cb28df9f83f024a9fb43e46574745a76ac09cf.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 01/17] rpm: fix fprint pointer issue
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

From: Qing He <qing.he@intel.com>

[YOCTO #1030]

(From OE-Core rev: bc4b86639a713c877dbe5e0f984873915d1578d4)

Signed-off-by: Qing He <qing.he@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
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
index dd51c9c..24a9268 100644
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
1.7.7


