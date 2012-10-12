Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2FC3E0148F
	for <poky@yoctoproject.org>; Fri, 12 Oct 2012 12:53:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2012 12:53:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,577,1344236400"; d="scan'208";a="205053554"
Received: from unknown (HELO localhost) ([10.255.14.130])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2012 12:53:37 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, bruce.ashfield@windriver.com, dvhart@linux.intel.com
Date: Fri, 12 Oct 2012 14:53:36 -0500
Message-Id: <83af67a8e717a631355c0deed80cf64969b8ae99.1350070372.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1350070372.git.tom.zanussi@intel.com>
References: <cover.1350070372.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] packagegroup-core-tools-profile: replace 'legacy' lttng with lttng 2.0
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
X-List-Received-Date: Fri, 12 Oct 2012 19:53:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

packagegroup-core-tools-profile currently pulls in the 'legacy' lttng
packages, which are useless without legacy lttng support in the kernel.

This makes packagegroup-core-tools-profile pull in the lttng 2.0
packages instead, which don't need any kernel modifications to work.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../packagegroups/packagegroup-core-tools-profile.bb             | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
index 1035036..bf6e16e 100644
--- a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
+++ b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
@@ -5,7 +5,7 @@
 SUMMARY = "Profiling tools"
 LICENSE = "MIT"
 
-PR = "r1"
+PR = "r2"
 
 inherit packagegroup
 
@@ -29,8 +29,9 @@ PROFILETOOLS = "\
     oprofileui-server \
     powertop \
     latencytop \
-    lttng-control \
-    lttng-viewer"
+    lttng-tools \
+    lttng-modules \
+    babeltrace"
 
 # systemtap needs elfutils which is not fully buildable on uclibc
 # hence we exclude it from uclibc based builds
@@ -44,7 +45,7 @@ SYSTEMTAP_mips = ""
 # which means we can not use syscall() to call it. So we ignore
 # it for x86_64/uclibc
 
-LTTNGUST = "lttng-ust"
+LTTNGUST = "lttng2-ust"
 LTTNGUST_libc-uclibc = ""
 LTTNGUST_mips = ""
 
-- 
1.7.11.4


