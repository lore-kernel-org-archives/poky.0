Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C8D4E00A16; Fri,  9 Jun 2017 13:32:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E94A6E00992
	for <poky@yoctoproject.org>; Fri,  9 Jun 2017 13:32:34 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jun 2017 13:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,319,1493708400"; d="scan'208";a="113077556"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by fmsmga006.fm.intel.com with ESMTP; 09 Jun 2017 13:32:32 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Fri,  9 Jun 2017 13:32:28 -0700
Message-Id: <20170609203228.9655-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
Subject: [PATCH] linux-yocto: include missing description files and conf fragments
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
X-List-Received-Date: Fri, 09 Jun 2017 20:32:38 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Include missing description files and configuration fragments into the SRC_URI.

[YOCTO #10918]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend    | 5 ++++-
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 4 +++-
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend     | 4 +++-
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 4 +++-
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 5 ++++-
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.10.bbappend   | 5 ++++-
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 5 ++++-
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend   | 5 ++++-
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend     | 4 +++-
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend    | 4 +++-
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend     | 4 +++-
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend   | 5 ++++-
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.10.bbappend  | 5 ++++-
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend   | 5 ++++-
 .../target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend   | 5 ++++-
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend     | 4 +++-
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend    | 4 +++-
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend     | 4 +++-
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend   | 5 ++++-
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.10.bbappend  | 5 ++++-
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend   | 5 ++++-
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend | 5 ++++-
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 4 +++-
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend  | 4 +++-
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend   | 4 +++-
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend | 5 ++++-
 .../arch/mips64/recipes-kernel/linux/linux-yocto_4.10.bbappend       | 5 ++++-
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend | 5 ++++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend       | 5 ++++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend  | 4 +++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend | 4 +++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend  | 4 +++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 5 ++++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto_4.10.bbappend      | 5 ++++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend       | 5 ++++-
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend   | 5 ++++-
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend     | 4 +++-
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend    | 4 +++-
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend     | 4 +++-
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend   | 5 ++++-
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend  | 5 ++++-
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend   | 5 ++++-
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend | 5 ++++-
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 4 +++-
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend  | 4 +++-
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend   | 4 +++-
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend | 5 ++++-
 .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.10.bbappend       | 5 ++++-
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend | 5 ++++-
 49 files changed, 175 insertions(+), 49 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
index c336007ebf..22ed273811 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -19,7 +19,10 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index d15a178e1b..9172aa5992 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 5cc82e82ad..bae943ea1e 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 070bd876ad..62d1817f22 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 4e7d7cbed9..be0b4ebdf9 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.10.bbappend
index eaf436759a..dfbecb5337 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 56e8ad3a10..a809c7600a 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
index c336007ebf..22ed273811 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -19,7 +19,10 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index d15a178e1b..9172aa5992 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 5cc82e82ad..bae943ea1e 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 070bd876ad..62d1817f22 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 5ed144b0eb..8c6dc6eb46 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 02059207d9..f8616ed876 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
index ab644bdad1..0a9d475951 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
index c336007ebf..22ed273811 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -19,7 +19,10 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index d15a178e1b..9172aa5992 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 5cc82e82ad..bae943ea1e 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 070bd876ad..62d1817f22 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 4e7d7cbed9..be0b4ebdf9 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.10.bbappend
index eaf436759a..dfbecb5337 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 56e8ad3a10..a809c7600a 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
index c336007ebf..22ed273811 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -19,7 +19,10 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index d15a178e1b..9172aa5992 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 5cc82e82ad..bae943ea1e 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 070bd876ad..62d1817f22 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 802e5f465d..46e65dfc1a 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 512b597581..336a956310 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
index dbb0fd55a6..7d18566b2f 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
index c336007ebf..22ed273811 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -19,7 +19,10 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index d15a178e1b..9172aa5992 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 5cc82e82ad..bae943ea1e 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 070bd876ad..62d1817f22 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 4e7d7cbed9..be0b4ebdf9 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.10.bbappend
index eaf436759a..dfbecb5337 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 56e8ad3a10..a809c7600a 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
index 11105ebcc2..d7b9cef98b 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -50,7 +50,10 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index ad77a66268..fce24d0dd3 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -50,7 +50,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 9b5f801684..8c0fd1577c 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -50,7 +50,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 2fc992992c..22abc230bf 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -50,7 +50,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 13450f4743..f239ba10b9 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -50,9 +50,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
index e1af4976fc..851d96c375 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -50,9 +50,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
index a2511ba197..71be913bb0 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -50,9 +50,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
index c336007ebf..22ed273811 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -19,7 +19,10 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index d15a178e1b..9172aa5992 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 5cc82e82ad..bae943ea1e 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 070bd876ad..62d1817f22 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -20,7 +20,9 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-tiny.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 4e7d7cbed9..be0b4ebdf9 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.10.bbappend
index eaf436759a..dfbecb5337 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 56e8ad3a10..a809c7600a 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -20,9 +20,12 @@ KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-SRC_URI += "file://{{=machine}}-standard.scc \
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # replace these SRCREVs with the real commit ids once you've had
-- 
2.12.0


