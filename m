Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A717A4C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 11:48:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,267,1291622400"; d="scan'208";a="589451916"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
Message-Id: <208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1294076797.git.dvhart@linux.intel.com>
References: <cover.1294076797.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 28 Dec 2010 17:10:22 -0800
To: poky@yoctoproject.org,sgw@linux.intel.com
Subject: [PATCH 4/4] kernelshark: add ftrace gui viewer
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

The trace-cmd source includes a graphical trace viewer, but we
don't want to make the trace-cmd recipe depend on gtk+. This
patch adds a second recipe in the meta/recipes-kernel/trace-cmd
directory which uses the trace-cmd SRCREV and RDEPENDS on trace-cmd
to ensure compatibility.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-kernel/trace-cmd/kernelshark_git.bb |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/trace-cmd/kernelshark_git.bb

diff --git a/meta/recipes-kernel/trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
new file mode 100644
index 0000000..781f983
--- /dev/null
+++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "Graphical trace viewer for Ftrace"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://kernelshark.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"
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


