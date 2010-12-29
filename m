Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71ABB4C80FFE
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 14:35:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 12:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="588168602"
Received: from unknown (HELO localhost) ([10.255.13.209])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2010 12:35:24 -0800
Message-Id: <0a6e23d80f04491938407efa07b15aac02298692.1293654518.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1293654518.git.tom.zanussi@intel.com>
References: <cover.1293654518.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Wed, 29 Dec 2010 11:25:42 -0600
Date: Wed, 29 Dec 2010 14:35:18 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/2] blktrace: Fix parallel make issue
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
X-List-Received-Date: Wed, 29 Dec 2010 20:35:25 -0000

Fixes [BUGID #581]

When PARALLEL_MAKE is used with the current blktrace Makefile, the
btreplay and btrecord object files can end up being built multiple
times in parallel, which occasionally causes the linker to pick up the
object files in intermediate and seemingly corrupt states, and causes
the spurious link errors in the bug report.

This fix restricts the recursive btreplay invocations to building only
btreplay or btrecord as appropriate, not both.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../blktrace/blktrace/blktrace-makefile.patch      |    4 ++--
 meta/recipes-kernel/blktrace/blktrace_git.bb       |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch b/meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
index 87ee24e..c6a06ed 100644
--- a/meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
+++ b/meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
@@ -17,11 +17,11 @@ Index: git/Makefile
  
  btreplay/btrecord:
 -	$(MAKE) -C btreplay
-+	CC="${CC}" CFLAGS="${CFLAGS}" $(MAKE) -C btreplay CC="${CC}" CFLAGS="${CFLAGS}"
++	CC="${CC}" CFLAGS="${CFLAGS}" $(MAKE) -C btreplay CC="${CC}" CFLAGS="${CFLAGS}" btrecord
  
  btreplay/btreplay:
 -	$(MAKE) -C btreplay
-+	CC="${CC}" CFLAGS="${CFLAGS}" $(MAKE) -C btreplay CC="${CC}" CFLAGS="${CFLAGS}"
++	CC="${CC}" CFLAGS="${CFLAGS}" $(MAKE) -C btreplay CC="${CC}" CFLAGS="${CFLAGS}" btreplay
  
  %.o: %.c
  	$(CC) -o $*.o -c $(ALL_CFLAGS) $<
diff --git a/meta/recipes-kernel/blktrace/blktrace_git.bb b/meta/recipes-kernel/blktrace/blktrace_git.bb
index 5690f14..85e4a4b 100644
--- a/meta/recipes-kernel/blktrace/blktrace_git.bb
+++ b/meta/recipes-kernel/blktrace/blktrace_git.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 DEPENDS = "libaio"
 
-PR = r0
+PR = r1
 PV = "1.0.1+git${SRCPV}"
 
 SRC_URI = "git://git.kernel.dk/blktrace.git;protocol=git \
-- 
1.7.0.4


