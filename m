Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 597354C811E0
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 12:02:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Dec 2010 10:02:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="588420433"
Received: from unknown (HELO localhost) ([10.255.13.238])
	by orsmga002.jf.intel.com with ESMTP; 30 Dec 2010 10:01:59 -0800
Message-Id: <46ff85bda463e94c40f5bd682ee97fab8baf0cbf.1293731824.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1293731824.git.dvhart@linux.intel.com>
References: <cover.1293731824.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 28 Dec 2010 17:10:22 -0800
To: poky@yoctoproject.org
Subject: [PATCH 3/3] kernelshark: add ftrace gui viewer
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
X-List-Received-Date: Thu, 30 Dec 2010 18:02:00 -0000

The trace-cmd source includes a graphical trace viewer, but we
don't want to make the trace-cmd recipe depend on gtk+. This
patch adds a second recipe in the meta/recipes-kernel/trace-cmd
directory which uses the trace-cmd SRCREV and RDEPENDS on trace-cmd
to ensure compatibility.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-kernel/trace-cmd/kernelshark_git.bb |   21 +++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/trace-cmd/kernelshark_git.bb

diff --git a/meta/recipes-kernel/trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
new file mode 100644
index 0000000..d2913c9
--- /dev/null
+++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "Graphical trace viewer for Ftrace"
+LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
+
+PR = r0
+PV = "1.0.4+git${SRCPV}"
+
+DEPENDS = "gtk+"
+RDEPENDS = "trace-cmd"
+
+inherit pkgconfig
+
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
+SRCREV = "${SRCREV_pn-trace-cmd}"
+S = "${WORKDIR}/git"
+
+EXTRA_OEMAKE = "'CC=${CC}' 'AR=${AR}' 'prefix=${prefix}' gui"
+
+do_install() {
+	oe_runmake CC="${CC}" AR="${AR}" prefix="${prefix}" DESTDIR="${D}" install_gui
+}
-- 
1.7.1


