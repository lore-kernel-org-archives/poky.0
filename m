Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76094E009A0; Tue, 16 Dec 2014 16:41:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0844E00752
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 16:41:14 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2014 16:41:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,590,1413270000"; d="scan'208";a="648821945"
Received: from unknown (HELO localhost) ([10.255.13.117])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2014 16:41:12 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Dec 2014 18:41:01 -0600
Message-Id: <cfa534e0e5cea8291693aa932fbe2add9cff0e45.1418776404.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
References: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1418776404.git.tom.zanussi@linux.intel.com>
References: <cover.1418776404.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 2/9] yocto-bsp: Get rid of 'strange' filenames
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
X-List-Received-Date: Wed, 17 Dec 2014 00:41:20 -0000

Give all the 'strange' yocto-bsp template filenames 'normal' names,
adding new yocto-bsp-filename and yocto-bsp-dirname tags for the new
filename processing pass where needed.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall      | 1 +
 .../formfactor/formfactor/{{{=machine}} => machine}/machconfig           | 0
 .../target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb        | 1 +
 .../target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall | 1 +
 .../target/arch/common/recipes-kernel/linux/linux-yocto-custom/defconfig | 0
 .../recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg      | 1 +
 .../recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc     | 1 +
 .../arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg      | 1 +
 .../arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc      | 1 +
 .../target/arch/qemu/conf/machine/{{{=machine}}.conf => machine.conf}    | 1 +
 .../arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall | 1 +
 .../init-ifupdown/init-ifupdown/{{{=machine}} => machine}/interfaces     | 0
 .../recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall  | 1 +
 .../xorg-xserver/xserver-xf86-config/{{{=machine}} => machine}/xorg.conf | 0
 .../bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall  | 1 +
 .../target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc   | 1 +
 .../target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc     | 1 +
 .../target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc         | 1 +
 .../target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg  | 1 +
 .../arch/qemu/recipes-kernel/linux/files/machine-user-features.scc       | 1 +
 .../target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc | 1 +
 .../substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg    | 1 +
 .../substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc    | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend       | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend   | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend   | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend  | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend      | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend      | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend      | 1 +
 .../{{=machine}}-user-config.cfg"                                        | 0
 .../{{=machine}}-user-features.scc"                                      | 0
 .../{{=machine}}-user-patches.scc"                                       | 0
 .../linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"  | 0
 36 files changed, 28 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall
 rename scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{{=machine}} => machine}/machconfig (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb (96%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/defconfig (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg (82%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc (82%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg (62%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc (93%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{{=machine}}.conf => machine.conf} (98%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{{=machine}} => machine}/interfaces (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{{=machine}} => machine}/xorg.conf (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc (83%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc (92%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc (84%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc (75%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend (98%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"

diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall
new file mode 100644
index 0000000..b442d02
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{=machine}}
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine/machconfig
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
rename to scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine/machconfig
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb" b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
similarity index 96%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"
rename to scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
index 6d3cc6f..69f598e 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"	
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "custom": }} this
 # This file was derived from the linux-yocto-custom.bb recipe in
 # oe-core.
 #
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall
new file mode 100644
index 0000000..017d206
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{ if kernel_choice == "custom": }} linux-yocto-custom
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig" b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/defconfig
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"
rename to scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/defconfig
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg" b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg
similarity index 82%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg"
rename to scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg
index 17c8b50..922309d 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg"	
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-user-config.cfg
 #
 # Used by yocto-kernel to manage config options.
 #
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc" b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc
similarity index 82%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc"
rename to scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc
index 7a598d9..6d1138f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-user-patches.scc
 #
 # Used by yocto-kernel to manage patches.
 #
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg" b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg
similarity index 62%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg"
rename to scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg
index 95170b1..1ba8201 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg"	
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.cfg
 #
 # A convenient place to add config options, nothing more.
 #
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc" b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
similarity index 93%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"
rename to scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
index 2e3ca90..0b6b413 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.scc
 #
 # The top-level 'feature' for the {{=machine}} custom kernel.
 #
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
similarity index 98%
rename from scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
rename to scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
index 464ef08..67e1cbd 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.conf
 #@TYPE: Machine
 #@NAME: {{=machine}}
 
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall
new file mode 100644
index 0000000..b442d02
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{=machine}}
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{=machine}}/interfaces b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine/interfaces
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{=machine}}/interfaces
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine/interfaces
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
new file mode 100644
index 0000000..b442d02
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{=machine}}
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall
new file mode 100644
index 0000000..0fb5283
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{ if kernel_choice != "custom": }} files
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
similarity index 83%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
index af34437..6aaffb8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH {{=qemuarch}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
similarity index 92%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
index 3efea82..d2a03ec 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH {{=qemuarch}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
similarity index 84%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
index 10c4dac..6c098fe 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
 define KTYPE tiny
 define KARCH {{=qemuarch}}
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg
new file mode 100644
index 0000000..69efdcc
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-config.cfg
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-features.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-features.scc
new file mode 100644
index 0000000..582759e
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-features.scc
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-features.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc
new file mode 100644
index 0000000..4c59daa
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-patches.scc
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
new file mode 100644
index 0000000..d560784
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}.cfg
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
similarity index 75%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
index f3739be..8301e05 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.scc
 kconf hardware {{=machine}}.cfg
 
 kconf hardware {{=machine}}-user-config.cfg
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
index 6fc5936..be479be 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-dev": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
index 8cae540..3609787 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
index 3df3e21..ce5e1a0 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
index 6403de7..1ee148f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
index 9dcd344..0175107 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
index 5c5b0c8..5bfb877 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.4": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
index a2bdb96..974e291 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 7507503..626019c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend
similarity index 98%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend
index ea5eb2c..b81f272 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
deleted file mode 100644
index e69de29..0000000
-- 
1.9.3


