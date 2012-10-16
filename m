Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E43E002AB
	for <poky@yoctoproject.org>; Mon, 15 Oct 2012 21:59:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Oct 2012 21:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,593,1344236400"; d="scan'208";a="227437700"
Received: from unknown (HELO localhost) ([10.255.14.132])
	by orsmga002.jf.intel.com with ESMTP; 15 Oct 2012 21:59:09 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Mon, 15 Oct 2012 23:59:08 -0500
Message-Id: <ea602300d9211669df0acc5c346e4486d6bf6f67.1350363132.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1350363132.git.tom.zanussi@intel.com>
References: <cover.1350363132.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Tue, 16 Oct 2012 04:59:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

packagegroup-core-tools-profile currently pulls in the 'legacy' lttng
packages, which are useless without legacy lttng support in the kernel.

This makes packagegroup-core-tools-profile pull in the lttng 2.0
packages instead, which don't need any kernel modifications to work.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../packagegroup-core-tools-profile.bb             | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
index 1035036..0ab2bc9 100644
--- a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
+++ b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
@@ -5,7 +5,7 @@
 SUMMARY = "Profiling tools"
 LICENSE = "MIT"
 
-PR = "r1"
+PR = "r2"
 
 inherit packagegroup
 
@@ -29,8 +29,7 @@ PROFILETOOLS = "\
     oprofileui-server \
     powertop \
     latencytop \
-    lttng-control \
-    lttng-viewer"
+    "
 
 # systemtap needs elfutils which is not fully buildable on uclibc
 # hence we exclude it from uclibc based builds
@@ -44,10 +43,22 @@ SYSTEMTAP_mips = ""
 # which means we can not use syscall() to call it. So we ignore
 # it for x86_64/uclibc
 
-LTTNGUST = "lttng-ust"
+LTTNGUST = "lttng2-ust"
 LTTNGUST_libc-uclibc = ""
 LTTNGUST_mips = ""
 
+# lttng-tools, lttng-modules and babeltrace all depend on liburcu
+# which currentl doesn't build on mips
+
+LTTNGTOOLS = "lttng-tools"
+LTTNGTOOLS_mips = ""
+
+LTTNGMODULES = "lttng-modules"
+LTTNGMODULES_mips = ""
+
+BABELTRACE = "babeltrace"
+BABELTRACE_mips = ""
+
 # valgrind does not work on mips
 
 VALGRIND = "valgrind"
@@ -65,6 +76,9 @@ VALGRIND_arm = ""
 RDEPENDS_${PN} = "\
     ${PROFILETOOLS} \
     ${LTTNGUST} \
+    ${LTTNGTOOLS} \
+    ${LTTNGMODULES} \
+    ${BABELTRACE} \
     ${SYSTEMTAP} \
     ${VALGRIND} \
     "
-- 
1.7.11.4


