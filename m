Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 849694C811A3
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:32 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1582724"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
Message-Id: <c30167d68ffd8e2b36ba518095885623c8501ba3.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:25:24 -0700
Date: Thu, 12 May 2011 17:20:31 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 09/25] bison: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:32 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../bison/bison/bison-2.3_m4.patch                 |    1 +
 .../bison/bison/fix_cross_manpage_building.patch   |    2 ++
 meta/recipes-devtools/bison/bison/m4.patch         |    1 +
 .../bison/bison/uclibc-sched_param-def.patch       |    2 ++
 4 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/bison/bison/bison-2.3_m4.patch b/meta/recipes-devtools/bison/bison/bison-2.3_m4.patch
index 81bad93..348ce1d 100644
--- a/meta/recipes-devtools/bison/bison/bison-2.3_m4.patch
+++ b/meta/recipes-devtools/bison/bison/bison-2.3_m4.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Pending
 
 #
 # Patch managed by http://www.mn-logistik.de/unsupported/pxa250/patcher
diff --git a/meta/recipes-devtools/bison/bison/fix_cross_manpage_building.patch b/meta/recipes-devtools/bison/bison/fix_cross_manpage_building.patch
index 850ec06..126cbaa 100644
--- a/meta/recipes-devtools/bison/bison/fix_cross_manpage_building.patch
+++ b/meta/recipes-devtools/bison/bison/fix_cross_manpage_building.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 help2man is looking at the generated binary for help output. This does not work for cross compilations. So taking out the local PREPATH (../src) directory from path so that help2 man can find the native version of the bison in the native sysroot directory.
 
 Date: 2010/06/28
diff --git a/meta/recipes-devtools/bison/bison/m4.patch b/meta/recipes-devtools/bison/bison/m4.patch
index 9332354..0754a90 100644
--- a/meta/recipes-devtools/bison/bison/m4.patch
+++ b/meta/recipes-devtools/bison/bison/m4.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Pending
 
 #
 # Patch managed by http://www.mn-logistik.de/unsupported/pxa250/patcher
diff --git a/meta/recipes-devtools/bison/bison/uclibc-sched_param-def.patch b/meta/recipes-devtools/bison/bison/uclibc-sched_param-def.patch
index 50652d8..6774838 100644
--- a/meta/recipes-devtools/bison/bison/uclibc-sched_param-def.patch
+++ b/meta/recipes-devtools/bison/bison/uclibc-sched_param-def.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 uclibc defines __GLIBC__ but it does not expose struct shed_param as much as glibc
 and is not needed too per standard. gnulib attempts to use it but we have to account
 for it because in this case uclibc does not behave like glibc.
-- 
1.7.3.4


