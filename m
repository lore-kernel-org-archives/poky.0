Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2CBF04C811EE
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:57 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLv002800; 
	Mon, 13 Dec 2010 11:38:56 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:39:01 -0600
Message-Id: <05ecda34237004ad08ed637dbee55c2a6dcd3c67.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 6/7] recipes-kernel: Update SUMMARY and DESCRIPTION
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
X-List-Received-Date: Mon, 13 Dec 2010 19:38:57 -0000

Add missing SUMMARY and updated DESCRIPTION fields if necessary

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-kernel/dtc/dtc.inc                    |    1 +
 meta/recipes-kernel/kexec/kexec-tools.inc          |    1 +
 meta/recipes-kernel/lttng/lttng-control_0.88.bb    |    1 +
 meta/recipes-kernel/lttng/lttng-ust_0.8.bb         |    1 +
 meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb  |    1 +
 .../module-init-tools/module-init-tools.inc        |    1 +
 meta/recipes-kernel/modutils/modutils_2.4.27.bb    |    1 +
 meta/recipes-kernel/oprofile/oprofile_0.9.6.bb     |    1 +
 meta/recipes-kernel/oprofile/oprofile_cvs.bb       |    1 +
 meta/recipes-kernel/oprofile/oprofileui.inc        |    1 +
 meta/recipes-kernel/powertop/powertop_1.13.bb      |    1 +
 11 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/dtc/dtc.inc b/meta/recipes-kernel/dtc/dtc.inc
index 35cb3f0..e068df3 100644
--- a/meta/recipes-kernel/dtc/dtc.inc
+++ b/meta/recipes-kernel/dtc/dtc.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Device Tree Compiler"
 DESCRIPTION = "The Device Tree Compiler is a tool used to manipulate the Open-Firmware-like device tree used by PowerPC kernels."
 SECTION = "bootloader"
 PRIORITY = "optional"
diff --git a/meta/recipes-kernel/kexec/kexec-tools.inc b/meta/recipes-kernel/kexec/kexec-tools.inc
index 70c9efc..bbe5107 100644
--- a/meta/recipes-kernel/kexec/kexec-tools.inc
+++ b/meta/recipes-kernel/kexec/kexec-tools.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Kexec fast reboot tools"
 DESCRIPTION = "Kexec is a fast reboot feature that lets you reboot to a new Linux kernel"
 AUTHOR = "Eric Biederman"
 HOMEPAGE = "http://kernel.org/pub/linux/utils/kernel/kexec/"
diff --git a/meta/recipes-kernel/lttng/lttng-control_0.88.bb b/meta/recipes-kernel/lttng/lttng-control_0.88.bb
index 502064f..535be2d 100644
--- a/meta/recipes-kernel/lttng/lttng-control_0.88.bb
+++ b/meta/recipes-kernel/lttng/lttng-control_0.88.bb
@@ -1,4 +1,5 @@
 SECTION = "devel"
+SUMMARY = "Linux Trace Toolkit Control"
 DESCRIPTION = "The Linux trace toolkit is a suite of tools designed to \
 extract program execution details from the Linux operating system and  \
 interpret them."
diff --git a/meta/recipes-kernel/lttng/lttng-ust_0.8.bb b/meta/recipes-kernel/lttng/lttng-ust_0.8.bb
index 7d88b16..507ee50 100644
--- a/meta/recipes-kernel/lttng/lttng-ust_0.8.bb
+++ b/meta/recipes-kernel/lttng/lttng-ust_0.8.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Linux Trace Toolkit Userspace Tracer"
 DESCRIPTION = "The LTTng Userspace Tracer (UST) is a library accompanied by a set of tools to trace userspace code"
 HOMEPAGE = "http://lttng.org/ust"
 BUGTRACKER = "n/a"
diff --git a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb b/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
index 550d8f5..94c6155 100644
--- a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
+++ b/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Linux Trace Toolkit Viewer"
 DESCRIPTION = "The Linux trace toolkit is a suite of tools designed to \
 extract program execution details from the Linux operating system and  \
 interpret them."
diff --git a/meta/recipes-kernel/module-init-tools/module-init-tools.inc b/meta/recipes-kernel/module-init-tools/module-init-tools.inc
index f1319ad..49522c7 100644
--- a/meta/recipes-kernel/module-init-tools/module-init-tools.inc
+++ b/meta/recipes-kernel/module-init-tools/module-init-tools.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Kernel Module Utilities"
 DESCRIPTION = "This package contains a set of programs for loading, inserting, and removing kernel modules for Linux (versions 2.5.48 and above). It serves the same function that the modutils package serves for Linux 2.4"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
diff --git a/meta/recipes-kernel/modutils/modutils_2.4.27.bb b/meta/recipes-kernel/modutils/modutils_2.4.27.bb
index 0174f83..54e3a73 100644
--- a/meta/recipes-kernel/modutils/modutils_2.4.27.bb
+++ b/meta/recipes-kernel/modutils/modutils_2.4.27.bb
@@ -1,4 +1,5 @@
 SECTION = "base"
+SUMMARY = "Kernel module utilities"
 DESCRIPTION = "These utilities are intended to make a Linux modular kernel \
 manageable for all users, administrators and distribution maintainers."
 LICENSE = "GPLv2"
diff --git a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
index 894bb9a..85e065f 100644
--- a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
+++ b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
@@ -1,3 +1,4 @@
+SUMMARY = "System-Wide Profiler"
 DESCRIPTION = "OProfile is a system-wide profiler for Linux systems, capable \
 of profiling all running code at low overhead."
 HOMEPAGE = "http://oprofile.sourceforge.net/news/"
diff --git a/meta/recipes-kernel/oprofile/oprofile_cvs.bb b/meta/recipes-kernel/oprofile/oprofile_cvs.bb
index dd8dd58..f2ff5ad 100644
--- a/meta/recipes-kernel/oprofile/oprofile_cvs.bb
+++ b/meta/recipes-kernel/oprofile/oprofile_cvs.bb
@@ -1,6 +1,7 @@
 PV = "0.9.4+cvs${SRCDATE}"
 PR = "r0"
 SECTION = "devel"
+SUMMARY = "System-Wide Profiler"
 DESCRIPTION = "OProfile is a system-wide profiler for Linux systems, capable \
 of profiling all running code at low overhead."
 LICENSE = "GPL"
diff --git a/meta/recipes-kernel/oprofile/oprofileui.inc b/meta/recipes-kernel/oprofile/oprofileui.inc
index 22b56a5..731e037 100644
--- a/meta/recipes-kernel/oprofile/oprofileui.inc
+++ b/meta/recipes-kernel/oprofile/oprofileui.inc
@@ -1,3 +1,4 @@
+SUMMARY = "User Interface for the System-Wide Profiler"
 DESCRIPTION = "User interface for the OProfile tool"
 HOMEPAGE = "http://labs.o-hand.com/oprofileui/"
 BUGTRACKER = "http://bugzilla.o-hand.com/"
diff --git a/meta/recipes-kernel/powertop/powertop_1.13.bb b/meta/recipes-kernel/powertop/powertop_1.13.bb
index 3988406..dff4fcd 100644
--- a/meta/recipes-kernel/powertop/powertop_1.13.bb
+++ b/meta/recipes-kernel/powertop/powertop_1.13.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Power usage tool"
 DESCRIPTION = "PowerTOP, a tool that helps you find what software is using the most power."
 HOMEPAGE = "http://www.lesswatts.org/"
 BUGTRACKER = "http://bugzilla.lesswatts.org/"
-- 
1.7.2.2


