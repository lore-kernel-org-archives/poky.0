Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5196E008A1
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 14:34:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Jan 2014 14:30:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,697,1384329600"; d="scan'208";a="442541266"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2014 14:34:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	Poky <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 14:39:52 -0800
Message-Id: <14a5c56500119dd0f3d920d9ae79e1fa9c25af82.1390342768.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <67cb4be16feef75539c802c61a71e99278220841.1390342768.git.dvhart@linux.intel.com>
References: <67cb4be16feef75539c802c61a71e99278220841.1390342768.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1390342768.git.dvhart@linux.intel.com>
References: <cover.1390342768.git.dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@intel.com>,
	Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: [PATCH 06/15] tune-corei7: Add support for cpu-type corei7
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
X-List-Received-Date: Tue, 21 Jan 2014 22:34:14 -0000

corei7 offers a significant advancement since the previous core2
cpu-type described in the tune-core2 file.

From the GCC(1):
Intel Core i7 CPU with 64-bit extensions, MMX, SSE, SSE2, SSE3,
               SSSE3, SSE4.1 and SSE4.2 instruction set support.

This offers optimizations for Nehalem and Silvermont (e.g. Bay Trail)
CPUs (and beyond).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@intel.com>
Cc: Paul Eggleton <paul.eggleton@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Nitin Kamble <nitin.a.kamble@intel.com>
Cc: Mark Hatle <mark.hatle@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/include/tune-corei7.inc |   35 +++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 meta/conf/machine/include/tune-corei7.inc

diff --git a/meta/conf/machine/include/tune-corei7.inc b/meta/conf/machine/include/tune-corei7.inc
new file mode 100644
index 0000000..5464fed
--- /dev/null
+++ b/meta/conf/machine/include/tune-corei7.inc
@@ -0,0 +1,35 @@
+# Settings for the GCC(1) cpu-type "corei7":
+#
+#     Intel Core i7 CPU with 64-bit extensions, MMX, SSE, SSE2, SSE3, SSSE3, SSE4.1
+#     and SSE4.2 instruction set support.
+#
+# This tune is recommended for Intel Nehalem and Silvermont (e.g. Bay Trail) CPUs
+# (and beyond).
+#
+DEFAULTTUNE ?= "corei7-64"
+
+# Pull in the previous tune in to pull in PACKAGE_EXTRA_ARCHS
+require conf/machine/include/tune-core2.inc
+
+# Extra tune features
+TUNEVALID[corei7] = "Enable corei7 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "corei7", " -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2", "", d)}"
+
+# Extra tune selections
+AVAILTUNES += "corei7-32"
+TUNE_FEATURES_tune-corei7-32 = "${TUNE_FEATURES_tune-x86} corei7"
+BASE_LIB_tune-corei7-32 = "lib"
+TUNE_PKGARCH_tune-corei7-32 = "corei7_32"
+PACKAGE_EXTRA_ARCHS_tune-corei7-32 = "${PACKAGE_EXTRA_ARCHS_tune-core2} corei7_32"
+
+AVAILTUNES += "corei7-64"
+TUNE_FEATURES_tune-corei7-64 = "${TUNE_FEATURES_tune-x86-64} corei7"
+BASE_LIB_tune-corei7-64 = "lib64"
+TUNE_PKGARCH_tune-corei7-64 = "corei7_64"
+PACKAGE_EXTRA_ARCHS_tune-corei7-64 = "${PACKAGE_EXTRA_ARCHS_tune-core2-64} corei7_64"
+
+AVAILTUNES += "corei7-64-x32"
+TUNE_FEATURES_tune-corei7-64-x32 = "${TUNE_FEATURES_tune-x86-64-x32} corei7"
+BASE_LIB_tune-corei7-64-x32 = "libx32"
+TUNE_PKGARCH_tune-corei7-64-x32 = "corei7_64_x32"
+PACKAGE_EXTRA_ARCHS_tune-corei7-64-x32 = "${PACKAGE_EXTRA_ARCHS_tune-core2-64-x32} corei7_64_x32"
-- 
1.7.9.5


