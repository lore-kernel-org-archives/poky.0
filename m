Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E532E006D9
	for <poky@yoctoproject.org>; Mon, 25 Jun 2012 10:07:31 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2012 10:07:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115827488"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.180])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2012 10:07:30 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jun 2012 10:07:22 -0700
Message-Id: <13bb0560dcb0189563f00b6d6605c5462ef5f915.1340643949.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
Subject: [Consolidated Poky Pull 7/7] tiny-init: Basic init mechanism for poky-tiny
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
X-List-Received-Date: Mon, 25 Jun 2012 17:07:31 -0000

From: Darren Hart <dvhart@linux.intel.com>

Currently poky-tiny images will boot and run /bin/sh, which results in
error messages to the console about being unable to open the tty and job
control being disabled.

The shell must be session leader to open the tty, and the tty must not
be /dev/console (it should be a vt or a physical tty like ttyS0), the
tty is required for job control (handling signals, etc.).

The goals of poky-tiny are to be an initial starting point from which to
build a distribution that does what you want, and NOTHING more.

This patch results in a system that boots with the virtual filesystems
mounted, the local network interface up, and a shell with job control
running, and a hook (/etc/rc.local) for easy customization. Nothing
else.

Enabling the basic busybox init, including the ability to give the
controlling console to commands starting with a dash in inittab results
in a 5664 byte delta (compared with 2560 bytes for enabling setsid and
cttyhack). Note that the help in busybox suggests the cttyhack may be
more reliable than the init support for handing over the controlling
terminal.

So the difference between using a standard init and just enabling the
two options is about 3k, but enabling setsid and cttyhack may enable
others to things besides what I am looking to do. Enabling init in both
DISTRO_FEATURES and busybox is fairly trivial to do, so I think it's
better to leave that as something to add if needed, rather than
something to remove, as that is more consistent with the goals of
poky-tiny.

Thanks to Tim Bird for his suggestion to include support for rc.local by
default.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tim Bird <tim.bird@am.sony.com>
CC: Thomas Frydrych <tf+lists.yocto@r-finger.com>
CC: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
CC: Paul Eggleton <paul.eggleton@linux.intel.com>
CC: Phil Blundell <philb@gnu.org>
CC: Khem Raj <raj.khem@gmail.com>
CC: Koen Kooi <koen@dominion.thruhere.net>
---
 meta-yocto/conf/distro/poky-tiny.conf              |    2 +-
 meta-yocto/recipes-core/tiny-init/files/init       |   21 +++++++++++++++
 .../recipes-core/tiny-init/files/rc.local.sample   |   23 ++++++++++++++++
 meta-yocto/recipes-core/tiny-init/tiny-init.bb     |   28 ++++++++++++++++++++
 4 files changed, 73 insertions(+), 1 deletions(-)
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/init
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/rc.local.sample
 create mode 100644 meta-yocto/recipes-core/tiny-init/tiny-init.bb

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index a34c7dc..8ae1d85 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -95,7 +95,7 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
 # Use tmpdevfs and the busybox runtime services
 VIRTUAL-RUNTIME_dev_manager = ""
 VIRTUAL-RUNTIME_login_manager = ""
-VIRTUAL-RUNTIME_init_manager = ""
+VIRTUAL-RUNTIME_init_manager = "tiny-init"
 VIRTUAL-RUNTIME_keymaps = ""
 
 # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
new file mode 100644
index 0000000..bf2817d
--- /dev/null
+++ b/meta-yocto/recipes-core/tiny-init/files/init
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+# Mount the Linux kernel virtual filesystems
+mount none -t proc /proc
+mount none -t sysfs /sys
+mkdir /dev/pts
+mount none -t devpts /dev/pts
+
+ifup lo
+
+# Allow for distro or local customizations
+if [ -f /etc/rc.local ] ; then
+	source /etc/rc.local
+fi
+
+# Become session leader and try to find a real tty (e.g. ttyS0)
+while true; do
+	setsid cttyhack sh
+	echo "Console sh exited with $?, respawning..."
+	sleep 1
+done
diff --git a/meta-yocto/recipes-core/tiny-init/files/rc.local.sample b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
new file mode 100644
index 0000000..d9e198a
--- /dev/null
+++ b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
@@ -0,0 +1,23 @@
+#!/bin/sh
+
+# Start services and customize the boot process here.
+echo "Running /etc/rc.local..."
+
+# Use init scripts included with packages such as dropbear
+#/etc/init.d/dropbear start
+
+# Spawn a getty manually
+#setsid /sbin/getty 115200 ttyS2
+
+# Print a banner
+#echo "You are running a poky-tiny image brought to you by the Yocto Project."
+
+# Setup a debugging environment
+#mkdir /debugfs
+#mount none -t debugfs /debugfs
+
+# Load modules (note: linux-yocto-tiny does not have module support by default)
+#modprobe yourdriver
+
+# DO NOT run any long running tasks or loops as these will delay
+# the /init script and the console shell.
diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
new file mode 100644
index 0000000..f5892ed
--- /dev/null
+++ b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
@@ -0,0 +1,28 @@
+SUMMARY = "Poky-tiny init"
+DESCRIPTION = "Basic init system for poky-tiny"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+PR = "r0"
+
+RDEPENDS_${PN} = "busybox"
+
+SRC_URI = "file://init \
+	   file://rc.local.sample \
+	  "
+
+do_configure() {
+	:
+}
+
+do_compile() {
+	:
+}
+
+do_install() {
+	install -d ${D}${sysconfdir}
+	install -m 0755 ${WORKDIR}/init ${D}
+	install -m 0755 ${WORKDIR}/rc.local.sample ${D}${sysconfdir}
+}
+
+FILES_${PN} = "/init ${sysconfdir}/rc.local.sample"
-- 
1.7.7.6


