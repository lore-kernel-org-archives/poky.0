Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A33FBE00B3F; Tue, 16 Dec 2014 16:41:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA20BE00AB9
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 16:41:20 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2014 16:41:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,590,1413270000"; d="scan'208";a="655269309"
Received: from unknown (HELO localhost) ([10.255.13.117])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2014 16:41:19 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Dec 2014 18:41:03 -0600
Message-Id: <2a29538d492fe2bb2659134d1830cb24715961e7.1418776404.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
References: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1418776404.git.tom.zanussi@linux.intel.com>
References: <cover.1418776404.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 4/9] yocto-bsp: Get rid of 'strange' filenames in x86 templates
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
X-List-Received-Date: Wed, 17 Dec 2014 00:41:24 -0000

For the x86 templates, give all the 'strange' yocto-bsp template
filenames 'normal' names, adding new yocto-bsp-filename and
yocto-bsp-dirname tags for the new filename processing pass where
needed.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../target/arch/i386/conf/machine/{{{=machine}}.conf => machine.conf}    | 1 +
 .../recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall  | 1 +
 .../recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf  | 1 +
 .../{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"                   | 0
 .../i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend  | 1 +
 .../bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall  | 1 +
 .../target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc   | 1 +
 .../target/arch/i386/recipes-kernel/linux/files/machine-standard.scc     | 1 +
 .../target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc         | 1 +
 .../target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg  | 1 +
 .../arch/i386/recipes-kernel/linux/files/machine-user-features.scc       | 1 +
 .../target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc | 1 +
 .../substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg    | 1 +
 .../substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc    | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend       | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend   | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend   | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend      | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend      | 1 +
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend      | 1 +
 .../{{=machine}}-user-config.cfg"                                        | 0
 .../{{=machine}}-user-features.scc"                                      | 0
 .../{{=machine}}-user-patches.scc"                                       | 0
 26 files changed, 22 insertions(+)
 rename scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{{=machine}}.conf => machine.conf} (99%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend (47%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc (89%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc (89%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc (83%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg (96%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc (93%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend (94%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
similarity index 99%
rename from scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
rename to scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
index 660eb6d..e13dabc 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.conf
 #@TYPE: Machine
 #@NAME: {{=machine}}
 
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
new file mode 100644
index 0000000..b442d02
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{=machine}}
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
new file mode 100644
index 0000000..ac9a0f1
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
@@ -0,0 +1 @@
+# yocto-bsp-filename {{ if xserver == "y": }} this
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
similarity index 47%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 72d991c..3083003 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1 +1,2 @@
+# yocto-bsp-filename {{ if xserver == "y": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall
new file mode 100644
index 0000000..1e0d92c
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{ if kernel_choice != "custom": }} files
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
similarity index 89%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
index bfefb0d..619ee3f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH i386
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
similarity index 89%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
index 60b670d..682012f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH i386
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
similarity index 83%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
index ec44ef9..cc75196 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
 define KTYPE tiny
 define KARCH i386
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg
new file mode 100644
index 0000000..69efdcc
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-config.cfg
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-features.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-features.scc
new file mode 100644
index 0000000..85be26d
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-features.scc
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-features.scc
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc
new file mode 100644
index 0000000..4c59daa
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-patches.scc
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
similarity index 96%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
index e93c0b8..3b168b7 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.cfg
 CONFIG_X86_32=y
 CONFIG_MATOM=y
 CONFIG_PRINTK=y
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
similarity index 93%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
index eda1d62..3d32f11 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.scc
 kconf hardware {{=machine}}.cfg
 
 include features/intel-e1xxxx/intel-e100.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
index 25c87a8..2fa6231 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-dev": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
index 08b1f88..35b0958 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
index 6144e3a..5f8db03 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
index bc6968d..f04dd0c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
index d221d5f..471ccbc 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
index e545efa..fb42532 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
index c1f2654..1cfc611 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 948d568..fbb49ed 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend
index b2ebef4..c8fc73a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
deleted file mode 100644
index e69de29..0000000
-- 
1.9.3


