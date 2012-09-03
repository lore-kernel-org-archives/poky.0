Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B03E01458
	for <poky@yoctoproject.org>; Mon,  3 Sep 2012 03:45:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Sep 2012 03:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,359,1344236400"; d="scan'208";a="188338827"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by orsmga001.jf.intel.com with ESMTP; 03 Sep 2012 03:45:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  3 Sep 2012 11:44:57 +0100
Message-Id: <3982601ba10cf2fa66189fef0de4ba99a9a716b2.1346668926.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346668926.git.paul.eggleton@linux.intel.com>
References: <cover.1346668926.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346668926.git.paul.eggleton@linux.intel.com>
References: <cover.1346668926.git.paul.eggleton@linux.intel.com>
Subject: [meta-yocto][PATCH 1/1] meta-yocto: fix for task rename
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
X-List-Received-Date: Mon, 03 Sep 2012 10:45:14 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc    |   60 ++++++++++----------
 meta-yocto/conf/distro/include/maintainers.inc     |   36 ++++++------
 meta-yocto/conf/distro/include/recipe_color.inc    |   12 ++--
 .../conf/distro/include/upstream_tracking.inc      |    2 +-
 meta-yocto/conf/distro/poky-tiny.conf              |    6 +-
 meta-yocto/conf/distro/poky.conf                   |    2 +-
 .../packagegroup-core-tools-profile.bbappend       |    2 +
 .../tasks/task-core-tools-profile.bbappend         |    2 -
 .../packagegroup-core-sdk-gmae.bbappend}           |    0
 ...group-core-standalone-gmae-sdk-target.bbappend} |    0
 .../packagegroup-core-tools-profile.bbappend       |    2 +
 .../tasks/task-core-tools-profile.bbappend         |    2 -
 12 files changed, 63 insertions(+), 63 deletions(-)
 create mode 100644 meta-yocto/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
 delete mode 100644 meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
 rename meta-yocto/recipes-gnome/{tasks/task-core-sdk-gmae.bbappend => packagegroups/packagegroup-core-sdk-gmae.bbappend} (100%)
 rename meta-yocto/recipes-gnome/{tasks/task-core-standalone-gmae-sdk-target.bbappend => packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend} (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index f5890ab..c63bd47 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -313,36 +313,36 @@ DISTRO_PN_ALIAS_pn-systemtap-uprobes = "Ubuntu=systemtap Debian=systemtap"
 DISTRO_PN_ALIAS_pn-sysvinit-inittab = "OE-Core"
 DISTRO_PN_ALIAS_pn-table = "Intel"
 DISTRO_PN_ALIAS_pn-tar-replacement-native = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-base = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-basic = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-boot = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-clutter = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-console = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-gtk-directfb = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-lsb = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-nfs = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-qt = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-sdk-gmae = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-sdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-ssh-dropbear = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-ssh-openssh = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-standalone-gmae-sdk-target = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-standalone-sdk-target = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-tools-debug = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-tools = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-tools-profile = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-tools-testapps = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-x11-mini = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-x11 = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-core-x11-sato = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-cross-canadian-i586 = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-qt4e = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-qte-toolchain-host-nativesdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-qte-toolchain-host-natives = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-qte-toolchain-target = "Intel"
-DISTRO_PN_ALIAS_pn-task-sdk-host = "OE-Core"
-DISTRO_PN_ALIAS_pn-task-self-hosted = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-basic = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-clutter = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-console = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-gtk-directfb = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-lsb = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-qt = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-sdk-gmae = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-sdk = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-dropbear = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-openssh = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-gmae-sdk-target = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-sdk-target = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools-debug = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools-profile = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools-testapps = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11-mini = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11 = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11-sato = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-cross-canadian-i586 = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-qt4e = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host-nativesdk = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host-natives = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-target = "Intel"
+DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
 DISTRO_PN_ALIAS_pn-tcf-agent = "Windriver upstream=http://www.eclipse.org/dsdp/tm/"
 DISTRO_PN_ALIAS_pn-tinylogin = "Debian=busybox Ubuntu=busybox Mandriva=busybox"
 DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 7a8b2ba..dace3b9 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -603,24 +603,24 @@ RECIPE_MAINTAINER_pn-systemtap-uprobes = "Tom Zanussi <tom.zanussi@intel.com>"
 RECIPE_MAINTAINER_pn-sysvinit = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-taglib = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-tar = "Scott Garman <scott.a.garman@intel.com>"
-RECIPE_MAINTAINER_pn-task-base = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-basic = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-boot = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-clutter = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-task-core-console = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-lsb = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-nfs = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-qt = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-sdk = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-sdk-gmae = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-standalone-gmae-sdk-target = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-standalone-sdk-target = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-tools-profile = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-tools-profile = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-tools-testapps = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-x11 = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-core-x11-sato = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-task-sdk-host = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-base = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-basic = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-boot = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-clutter = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-console = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-lsb = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-nfs = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-qt = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-sdk = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-sdk-gmae = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-standalone-gmae-sdk-target = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-standalone-sdk-target = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-tools-profile = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-tools-profile = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-tools-testapps = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-x11 = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-x11-sato = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-sdk-host = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tcf-agent = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-tcl = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-tcp-wrappers = "Radu Moisan <radu.moisan@intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index cb481c3..612a698 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -379,12 +379,12 @@ RECIPE_COLOR_pn-sysprof = "red"
 RECIPE_COLOR_pn-sysvinit = "yellow"
 RECIPE_COLOR_pn-table = "red"
 RECIPE_COLOR_pn-tar = "yellow"
-RECIPE_COLOR_pn-task-base = "red"
-RECIPE_COLOR_pn-task-core-sdk = "red"
-RECIPE_COLOR_pn-task-core-sdk-gmae = "red"
-RECIPE_COLOR_pn-task-core-standalone-gmae-sdk-target = "red"
-RECIPE_COLOR_pn-task-core-standalone-sdk-target = "red"
-RECIPE_COLOR_pn-task-sdk-host = "red"
+RECIPE_COLOR_pn-packagegroup-base = "red"
+RECIPE_COLOR_pn-packagegroup-core-sdk = "red"
+RECIPE_COLOR_pn-packagegroup-core-sdk-gmae = "red"
+RECIPE_COLOR_pn-packagegroup-core-standalone-gmae-sdk-target = "red"
+RECIPE_COLOR_pn-packagegroup-core-standalone-sdk-target = "red"
+RECIPE_COLOR_pn-packagegroup-sdk-host = "red"
 RECIPE_COLOR_pn-tcf-agent = "yellow"
 RECIPE_COLOR_pn-tcp-wrappers = "yellow"
 RECIPE_COLOR_pn-telepathy-farsight = "red"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index bdd45cd..1873174 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -916,7 +916,7 @@ RECIPE_UPSTREAM_VERSION_pn-talloc = "2.0.5"
 RECIPE_UPSTREAM_VERSION_pn-tar = "1.26"
 RECIPE_UPSTREAM_DATE_pn-tar = "Mar 01, 2011"
 CHECK_DATE_pn-tar = "Nov 14, 2011"
-RECIPE_UPSTREAM_DATE_pn-task-base="n/a"
+RECIPE_UPSTREAM_DATE_pn-packagegroup-base="n/a"
 RECIPE_UPSTREAM_DATE_pn-tcf-agent = "Jul 07, 2011"
 RECIPE_UPSTREAM_VERSION_pn-tcl="8.5.11"
 RECIPE_UPSTREAM_DATE_pn-tcl = "Jul 07, 2011"
diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 8ae1d85..f3cc874 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -39,8 +39,8 @@ DISTRO = "poky-tiny"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
 PREFERRED_VERSION_linux-yocto-tiny = "3.2%"
 
-# We can use task-core-boot, but in the future we may need a new task-core-tiny
-#POKY_DEFAULT_EXTRA_RDEPENDS += "task-core-boot"
+# We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
+#POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
 # Drop kernel-module-af-packet from RRECOMMENDS
 POKY_DEFAULT_EXTRA_RRECOMMENDS = ""
 
@@ -99,7 +99,7 @@ VIRTUAL-RUNTIME_init_manager = "tiny-init"
 VIRTUAL-RUNTIME_keymaps = ""
 
 # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
-# task-core-base to select modutils-initscripts or not.  Similar with "net" and
+# packagegroup-core-base to select modutils-initscripts or not.  Similar with "net" and
 # netbase.
 
 # By default we only support ext2 and initramfs. We don't build live as that
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 94dc567..5409a77 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -25,7 +25,7 @@ SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 EXTRAOPKGCONFIG = "poky-feed-config-opkg"
 
 # Override these in poky based distros to modify DISTRO_EXTRA_R*
-POKY_DEFAULT_EXTRA_RDEPENDS = "task-core-boot"
+POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
diff --git a/meta-yocto/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend b/meta-yocto/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
new file mode 100644
index 0000000..352c1f9
--- /dev/null
+++ b/meta-yocto/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
@@ -0,0 +1,2 @@
+RDEPENDS_${PN}_append_atom-pc = " lttng-ust systemtap"
+
diff --git a/meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index ad9dcf4..0000000
--- a/meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RDEPENDS_task-core-tools-profile_append_atom-pc = " lttng-ust systemtap"
-
diff --git a/meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bbappend b/meta-yocto/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
similarity index 100%
rename from meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
rename to meta-yocto/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
diff --git a/meta-yocto/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend b/meta-yocto/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
similarity index 100%
rename from meta-yocto/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
rename to meta-yocto/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend b/scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
new file mode 100644
index 0000000..6efd583
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_packagegroup-core-tools-profile_append_{{=machine}} = " systemtap"
+
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend b/scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 9e8e5c8..0000000
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_{{=machine}} = " systemtap"
-
-- 
1.7.9.5


