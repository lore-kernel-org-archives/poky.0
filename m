Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A28E84C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 17:25:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Jan 2011 15:25:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="376448140"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2011 15:25:37 -0800
Message-Id: <c11e0c854b6690e5940b855a1cf8fba5bef36dff.1295393078.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295393078.git.dvhart@linux.intel.com>
References: <cover.1295393078.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Mon, 20 Dec 2010 15:03:40 -0800
Date: Tue, 18 Jan 2011 15:25:33 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/5] meta-rt/rt-tests: add the PREEMPT_RT rt-tests testsuite and recipes-tests directory
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
X-List-Received-Date: Tue, 18 Jan 2011 23:25:38 -0000

The rt-tests test-suite is a collection of tests meant to measure the latency
and determinism of the Linux PREEMPT_RT kernel.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-rt/recipes-tests/rt-tests_git.bb |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 meta-rt/recipes-tests/rt-tests_git.bb

diff --git a/meta-rt/recipes-tests/rt-tests_git.bb b/meta-rt/recipes-tests/rt-tests_git.bb
new file mode 100644
index 0000000..35af022
--- /dev/null
+++ b/meta-rt/recipes-tests/rt-tests_git.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "Real-Time preemption testcases"
+HOMEPAGE = "https://rt.wiki.kernel.org/index.php/Cyclictest"
+SECTION = "tests"
+DEPENDS = "linux-libc-headers eglibc"
+LICENSE = "GPLv2 & GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://src/cyclictest/cyclictest.c;beginline=7;endline=9;md5=ce162fe491d19d2ec67dff6dbc938d50 \
+                    file://src/pi_tests/pi_stress.c;beginline=6;endline=19;md5=bd426a634a43ec612e9fbf125dfcc949"
+SRCREV = ${AUTOREV}
+PV = "git${SRCPV}"
+PR = "r0"
+
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git;protocol=git"
+
+S = "${WORKDIR}/git"
+
+CFLAGS += "-I${S}/src/include -D_GNU_SOURCE -Wall -Wno-nonnull"
+
+do_install() {
+        oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} \
+                           INCLUDEDIR=${includedir}
+}
-- 
1.7.1


