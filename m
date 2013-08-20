Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B25E013DE
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:39:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:39:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="284227595"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Aug 2013 01:39:45 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 5221C6A4007;
	Tue, 20 Aug 2013 01:39:42 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:44 +0200
Message-Id: <560dac6e7db76f533f98eda969f585e4eb416e6e.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 002/186] buildhistory: use package_qa_handle_error for version-going-backwards
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
X-List-Received-Date: Tue, 20 Aug 2013 08:39:46 -0000

From: Martin Jansa <martin.jansa@gmail.com>

* this way it's easier for distro to select if such issue should be
  error, warning or ignored and also it gets recorded in qa.log

(From OE-Core rev: 44624853de8c88abdcae2ccd0902b390ff546d4c)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/buildhistory.bbclass |   18 +++++++++---------
 meta/classes/insane.bbclass       |    1 +
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/meta/classes/buildhistory.bbclass b/meta/classes/buildhistory.bbclass
index c5bba25..55b6bbf 100644
--- a/meta/classes/buildhistory.bbclass
+++ b/meta/classes/buildhistory.bbclass
@@ -201,15 +201,15 @@ python buildhistory_emit_pkghistory() {
         # Find out what the last version was
         # Make sure the version did not decrease
         #
-        if d.getVar("BUILDHISTORY_CHECKVERBACKWARDS", True) == "1":
-            lastversion = getlastpkgversion(pkg)
-            if lastversion:
-                last_pkge = lastversion.pkge
-                last_pkgv = lastversion.pkgv
-                last_pkgr = lastversion.pkgr
-                r = bb.utils.vercmp((pkge, pkgv, pkgr), (last_pkge, last_pkgv, last_pkgr))
-                if r < 0:
-                    bb.error("Package version for package %s went backwards which would break package feeds from (%s:%s-%s to %s:%s-%s)" % (pkg, last_pkge, last_pkgv, last_pkgr, pkge, pkgv, pkgr))
+        lastversion = getlastpkgversion(pkg)
+        if lastversion:
+            last_pkge = lastversion.pkge
+            last_pkgv = lastversion.pkgv
+            last_pkgr = lastversion.pkgr
+            r = bb.utils.vercmp((pkge, pkgv, pkgr), (last_pkge, last_pkgv, last_pkgr))
+            if r < 0:
+                msg = "Package version for package %s went backwards which would break package feeds from (%s:%s-%s to %s:%s-%s)" % (pkg, last_pkge, last_pkgv, last_pkgr, pkge, pkgv, pkgr)
+                package_qa_handle_error("version-going-backwards", msg, d)
 
         pkginfo = PackageInfo(pkg)
         # Apparently the version can be different on a per-package basis (see Python)
diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index 75bd2e2..aa02985 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -37,6 +37,7 @@ WARN_QA ?= "ldflags useless-rpaths rpaths staticdev libdir xorg-driver-abi \
 ERROR_QA ?= "dev-so debug-deps dev-deps debug-files arch pkgconfig la \
             perms dep-cmp pkgvarcheck perm-config perm-line perm-link \
             split-strip packages-list pkgv-undefined var-undefined \
+            version-going-backwards \
             "
 
 ALL_QA = "${WARN_QA} ${ERROR_QA}"
-- 
1.7.9.5


