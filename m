Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4426E004E5; Tue, 28 Mar 2017 13:32:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12,
	DKIM_SIGNED, RCVD_IN_DNSWL_HI,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28550E003C1
	for <poky@yoctoproject.org>; Tue, 28 Mar 2017 13:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490733144; x=1522269144;
	h=from:to:cc:subject:date:message-id;
	bh=53nCksQ2YEshb1svGRxLPnXZ4UFEpHqPvXy0RfO5mvo=;
	b=wY0WvC9+jEAMsqqdtSzX9kuRIFXyUH8lKF3n2ghyH3wWrxu3bZHV3i/j
	NiTEGpH4W08/6zIBPSmj1YgRfzmtlw==;
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Mar 2017 13:32:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,238,1486454400"; d="scan'208";a="241374102"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by fmsmga004.fm.intel.com with ESMTP; 28 Mar 2017 13:32:22 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue, 28 Mar 2017 20:31:58 -0700
Message-Id: <20170329033158.29660-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
Subject: [PATCH] [morty] recipes-kernel: Skip kernel version check on kernel templates
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
X-List-Received-Date: Tue, 28 Mar 2017 20:32:26 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Currently, SRCREV is set to AUTOREV, causing mismatch between PV and the kernel
version shown in the makefile (see below to see the bitbake log). The solution
is to comment the lines which defaults SRCREV to AUTOREV, leaving the previous
comment to replace the SRCREVs for real ones once kernel changes are done.

    ERROR: linux-yocto-4.8.12+gitAUTOINC+4fb6f24600_d4148a2064-r0.1
    do_kernel_version_sanity_check: Package Version (4.8.12+gitAUTOINC
    +4fb6f24600_d4148a2064) does not match of kernel being built (4.8.21).
    Please update the PV variable to match the kernel source.
    ERROR: linux-yocto-4.8.12+gitAUTOINC+4fb6f24600_d4148a2064-r0.1
    do_kernel_version_sanity_check: Function failed:
    do_kernel_version_sanity_check (log file is located
    at ../tmp/work/myqemu-poky-linux/linux-yocto/4.8.12+gitAUTOINC+4fb6f24600_d4148a2064-r0.1/temp/log.do_kernel_version_sanity_check.17509)

[YOCTO #11064]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend       | 4 ++--
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend       | 4 ++--
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend       | 4 ++--
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 4 ++--
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend     | 4 ++--
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend     | 4 ++--
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 4 ++--
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 4 ++--
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 4 ++--
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 4 ++--
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 4 ++--
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 4 ++--
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 4 ++--
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 4 ++--
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 4 ++--
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 4 ++--
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 4 ++--
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 4 ++--
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 4 ++--
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 4 ++--
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 4 ++--
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 4 ++--
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 4 ++--
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 4 ++--
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 4 ++--
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend   | 4 ++--
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend   | 4 ++--
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend | 4 ++--
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend | 4 ++--
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend | 4 ++--
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 4 ++--
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 4 ++--
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 4 ++--
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 4 ++--
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 4 ++--
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 4 ++--
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 4 ++--
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 4 ++--
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 4 ++--
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 4 ++--
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 4 ++--
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 4 ++--
 42 files changed, 84 insertions(+), 84 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..f4fc219 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..4ec3e48 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..51cb012 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 2d3d073..1d78865 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..1725bf4 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..15d6431 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..f4fc219 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..4ec3e48 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..51cb012 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
index aecdff0..8d7e24e 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
index dd4de31..16a24f0 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 137d8fa..9a97de9 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..f4fc219 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..4ec3e48 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..51cb012 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 1e99a04..f4efb75 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..1725bf4 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..15d6431 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..f4fc219 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..4ec3e48 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..51cb012 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 01a046c..7d0f7df 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 57c90fa..4d89f5c 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
index accf9d5..17d1ea6 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..f4fc219 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..4ec3e48 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..51cb012 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 1e99a04..f4efb75 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..1725bf4 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..15d6431 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 14ee16f..fe22d3e 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -57,6 +57,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index e256e08..828afe5 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -57,6 +57,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index c1635d6..df65fd0 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -57,6 +57,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
index fce67b4..6895788 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -56,6 +56,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 4097932..3549de5 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -56,6 +56,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
index e8c3fc8..4176e5a 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -56,6 +56,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..f4fc219 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..4ec3e48 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..51cb012 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 1e99a04..f4efb75 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..1725bf4 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..15d6431 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -27,6 +27,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
-- 
2.10.2


