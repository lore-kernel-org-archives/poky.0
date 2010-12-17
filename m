Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63EFD4C811C1
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 18:20:53 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Dec 2010 16:20:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,190,1291622400"; d="scan'208";a="869472889"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by fmsmga001.fm.intel.com with ESMTP; 17 Dec 2010 16:20:23 -0800
Message-Id: <5cd25161b73e0630466a4e119cf2b6ad6301bdcc.1292630935.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292630935.git.dvhart@linux.intel.com>
References: <cover.1292630935.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 17 Dec 2010 15:34:25 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@intel.com
Subject: [PATCH 2/4] rt-tests: add the PREEMPT_RT rt-tests testsuite and recipes-tests directory
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
X-List-Received-Date: Sat, 18 Dec 2010 00:20:53 -0000

The rt-tests test-suite is a collection of tests meant to measure the
latency and determinism of the Linux PREEMPT_RT kernel.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-tests/rt/rt-tests_git.bb |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-tests/rt/rt-tests_git.bb

diff --git a/meta/recipes-tests/rt/rt-tests_git.bb b/meta/recipes-tests/rt/rt-tests_git.bb
new file mode 100644
index 0000000..35af022
--- /dev/null
+++ b/meta/recipes-tests/rt/rt-tests_git.bb
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
1.7.2.3


