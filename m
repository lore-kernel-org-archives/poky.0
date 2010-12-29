Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E8964C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 11:48:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,267,1291622400"; d="scan'208";a="693119213"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
Message-Id: <a01f0a62cfa9dfd7d3c9809f9cb439100a9eb61d.1294076797.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1294076797.git.dvhart@linux.intel.com>
References: <cover.1294076797.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 28 Dec 2010 17:17:25 -0800
To: poky@yoctoproject.org,sgw@linux.intel.com
Subject: [PATCH 1/4] trace-cmd: fix cross-compilation
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
X-List-Received-Date: Mon, 03 Jan 2011 17:48:45 -0000

The trace-cmd Makefile forces certain variables, such as CC and AR.
It was using the host gcc and loader, fix it to use the poky-built
cross-compiler and linker.

inherit pkgconfig to ensure we don't use the host pkg-config.

Remove unecessary variables from the oemake commands, such as ARCH
and LD which aren't used by the Makefile.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-kernel/trace-cmd/trace-cmd_git.bb |   12 +++++-------
 1 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
index e375afc..a7eca5f 100644
--- a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
+++ b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
@@ -2,18 +2,16 @@ DESCRIPTION = "User interface to Ftrace"
 LICENSE = "GPL"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 
-PR = r1
+PR = r2
 PV = "1.0.4+git${SRCPV}"
 
+inherit pkgconfig
+
 SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
 S = "${WORKDIR}/git"
 
-
-do_compile() { 
-	oe_runmake ARCH="${ARCH}" CC="${CC}" LD="${LD}" prefix=${prefix}
-}
+EXTRA_OEMAKE = "'CC=${CC}' 'AR=${AR}' 'prefix=${prefix}'"
 
 do_install() {
-	oe_runmake ARCH="${ARCH}" CC="${CC}" LD="${LD}" \
-                   prefix=${prefix} DESTDIR=${D} install
+	oe_runmake CC="${CC}" AR="${AR}" prefix="${prefix}" DESTDIR="${D}" install
 }
-- 
1.7.1


