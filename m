Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F958E00A6B; Thu,  8 Nov 2018 02:35:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F21B3E00A4F
	for <poky@yoctoproject.org>; Thu,  8 Nov 2018 02:35:49 -0800 (PST)
Received: by mail-ed1-f68.google.com with SMTP id a2-v6so11346214edi.5
	for <poky@yoctoproject.org>; Thu, 08 Nov 2018 02:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=XIQ8QHKkZ5wg+pzq04AfsFwg4jyjHXziIk0rFbeekX0=;
	b=vLnQPj4K866z0r4a6y0CitgscDz8P9rkUAiBd2IQEnxI28L9tKdUOIsXjvUn3hl7rG
	iRHVJ7d4YYBWIY9hMo99pOse1650sIWabJt7zb4ykHi/m5qlVi+GgbjM2TQYMiaxzXm8
	gGcsptl70oFwDJBP/zWPIhqzAdtiouAtAqiMiYv9Qc+dfA1fUI2vk5HGVARauosRQsYP
	azeuseOfVi9Yo08+M1UtXq2apwskcaa0CJDE93XwqcUsGl/MG71XXrRcYaJSoEeSh3Wr
	nFxOVvQItdvxbKrpE6POFCXdIwJLtI9Fo2NTP2LPNwUP0f1QOVoD7m7GN04+6iEfG3e8
	8+xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=XIQ8QHKkZ5wg+pzq04AfsFwg4jyjHXziIk0rFbeekX0=;
	b=LhtSmR2AehQHzVe3cArXBQTXufkYdAWaBzc9y7cm5Z/J6MxWDWiSC7HPU9q0erm3kV
	t25dGkYEPEwUdvj2gn0sbdnOvu9pp8Jxyzkj6U9o8fnV5eQI//RbbROqC7XURxBHOG2p
	Hy0Q5eqZ0+otg0nvE+XZATI/ExT6x3GhDdU+hdSn/9Sx+uC7i/jtVy68B83nuZkW4TmK
	UhZXYXLeO2Prme9PD0no2JWKFIY1ooTaCCxBXGHnpCL5RwcjyotsFYWD9CdY8YY1Ibpm
	VPba1GknUVBU2+kjmS6WrS+EpEFTi9Xhyo+Nog4TI3Nk11D3W8u9n+X+Q3YlFXU6PyzT
	QGHQ==
X-Gm-Message-State: AGRZ1gKG6LPspczSNF3xF9Gfys8V54PGFSrlK014mKiwp08SagG6Gl6H
	ZXYxSLD92iXtUhhOAkLcgUrSXipr
X-Google-Smtp-Source: AJdET5fh5QacxwSBVbRVia/xPxbNuE+/j3G5MjyhuooySjPFWUcbpB5whUdqEUaL8/9ngl8F7mON9w==
X-Received: by 2002:a50:985c:: with SMTP id
	h28-v6mr3180388edb.36.1541673348405; 
	Thu, 08 Nov 2018 02:35:48 -0800 (PST)
Received: from dimtass-workstation.berlin.native
	(p2E5A5A29.dip0.t-ipconnect.de. [46.90.90.41])
	by smtp.gmail.com with ESMTPSA id
	y7-v6sm947447edq.7.2018.11.08.02.35.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Nov 2018 02:35:47 -0800 (PST)
From: Dimitris Tassopoulos <dimtass@gmail.com>
To: poky@yoctoproject.org
Date: Thu,  8 Nov 2018 11:35:40 +0100
Message-Id: <20181108103540.5649-1-dimtass@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] Bug 8729 - grub: create a script to boot between rootfs and a maintenance partition
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
X-List-Received-Date: Thu, 08 Nov 2018 10:35:51 -0000

Hi all, I've have a patch which is ready for testing and evaluation.

In order to build the qemu wic image you need to apply the patch
and then add these to the end of your local.conf file.

MACHINE ?= "qemux86"
MACHINE_FEATURES += "pcbios efi"
IMAGE_FSTYPES += "wic"
WKS_FILE = "directdisk-multi-rootfs.wks.in"
EFI_PROVIDER = "grub-efi"
IMAGE_INSTALL_append = " \
                grub \
                grub-efi \
                grub-multibootconf-cntr-rst \
"
EXTRA_IMAGEDEPENDS += "ovmf"
PREFERRED_RPROVIDER_virtual/grub-bootconf = "grub-multibootconf"

Then build the core-image-minimal image (that's the only one I've tried).
If the build ends without errors then load the image with:

$ runqemu wic kvm ovmf

You can debug the grub bootloader script by setting the 'GRUB_DEBUG = 1'
flag in poky/meta/recipes-bsp/grub/grub-multibootconf_1.00.bb.

Finally, `grub-multibootconf-cntr-rst` is a service that resets the
boot counter when the OS loads. This is meant only for testing,
therefore if you remove that then the boot counter will increment
until reaches the max limit and then Grub will fallback to the
rescue partition.Therefore, if you want to test that it works properly
you need to either disable the init/service or remove it from the
IMAGE_INSTALL. Also the counter timeout value is set in
`poky/meta/recipes-bsp/grub/grub-multibootconf_1.00.bb`
with the GRUB_BOOT_TRIES variable.

Signed-off-by: Dimitris Tassopoulos <dimtass@gmail.com>
---
 meta/recipes-bsp/grub/files/bootcntr-rst.init |  35 +++++
 .../grub/files/bootcntr-rst.service           |   9 ++
 .../recipes-bsp/grub/files/grub-multiboot.cfg | 148 ++++++++++++++++++
 meta/recipes-bsp/grub/grub-efi_2.02.bb        |   2 +-
 .../grub/grub-multibootconf-cntr-rst_1.00.bb  |  30 ++++
 .../grub/grub-multibootconf_1.00.bb           | 107 +++++++++++++
 meta/recipes-bsp/grub/grub_2.02.bb            |   2 +
 .../canned-wks/directdisk-multi-rootfs.wks    |  23 ---
 .../canned-wks/directdisk-multi-rootfs.wks.in |  22 +++
 9 files changed, 354 insertions(+), 24 deletions(-)
 create mode 100755 meta/recipes-bsp/grub/files/bootcntr-rst.init
 create mode 100644 meta/recipes-bsp/grub/files/bootcntr-rst.service
 create mode 100644 meta/recipes-bsp/grub/files/grub-multiboot.cfg
 create mode 100644 meta/recipes-bsp/grub/grub-multibootconf-cntr-rst_1.00.bb
 create mode 100644 meta/recipes-bsp/grub/grub-multibootconf_1.00.bb
 delete mode 100644 scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks
 create mode 100644 scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks.in

diff --git a/meta/recipes-bsp/grub/files/bootcntr-rst.init b/meta/recipes-bsp/grub/files/bootcntr-rst.init
new file mode 100755
index 0000000000..e89dbf53e2
--- /dev/null
+++ b/meta/recipes-bsp/grub/files/bootcntr-rst.init
@@ -0,0 +1,35 @@
+#!/bin/sh
+#/etc/init.d/bootcntr-rst: reset the grub boot counter.
+
+### BEGIN INIT INFO
+# Provides:          Grub boot counter reset
+# Short-Description: Resets the bootcntr grub env var
+# Required-Start:    $all
+# Required-Stop:     $all
+# Should-Start:      
+# Should-Stop:       
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+### END INIT INFO
+
+. /etc/init.d/functions
+
+case "$1" in
+    start)
+        /usr/bin/grub-editenv /boot/EFI/BOOT/bootcntr.env set bootcntr=0
+        ;;
+    stop)
+        echo "No stop available"
+	;;
+    status)
+        echo $(/usr/bin/grub-editenv /boot/EFI/BOOT/bootcntr.env list)
+        ;;
+    *)
+        echo $"Usage: $0 {start|stop|status}"
+        exit 2
+esac
+
+
+
+
+
diff --git a/meta/recipes-bsp/grub/files/bootcntr-rst.service b/meta/recipes-bsp/grub/files/bootcntr-rst.service
new file mode 100644
index 0000000000..3582036241
--- /dev/null
+++ b/meta/recipes-bsp/grub/files/bootcntr-rst.service
@@ -0,0 +1,9 @@
+[Unit]
+Description=Resets the grub boot counter. This should be used only for testing
+
+[Service]
+Type=oneshot
+ExecStart=/usr/bin/grub-editenv /boot/EFI/BOOT/bootcntr.env set bootcntr=0
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta/recipes-bsp/grub/files/grub-multiboot.cfg b/meta/recipes-bsp/grub/files/grub-multiboot.cfg
new file mode 100644
index 0000000000..433b05c2d1
--- /dev/null
+++ b/meta/recipes-bsp/grub/files/grub-multiboot.cfg
@@ -0,0 +1,148 @@
+# @description: This is a simple sample of a grub configuration file that can be
+#   used for multiboot configurations. This script assumes by default that there
+#   is a rootfs partition which is the normal boot partition and a rescue partition
+#   which is used for recovery. Normally, the system boots to the rootfs and every
+#   time Grub increments a bootcntr value. This value should be reset after booting
+#   whith either a service or even better from the main application itself or a
+#   special watchdog application/service. If for some reason Grub detects that the
+#   bootcntr value is exceeding a limit then it will flag a failed boot and will
+#   pass the boot to the rescue partition until rootfs_fail and bootcntr are reset.
+#
+#   There are two environment files involved. The one is the bootcntr.env and the
+#   other is the grub.env. There are two different because it's important to keep
+#   the boot counter separate from other variables. This minimizes the chances that
+#   something goes wrong with the counter value. You can add other variables in the
+#   the grub.env file if you wish and this file is meant to be for generic use.
+#
+#   Each environment file has a `lock` variable. This is set when a write is performed
+#   and reset when the write is done. If for some reason the `lock` value is `1`
+#   before the lock action, then it means that a previous action was interrupted.
+#   By default, this is consider an error and the boot is passing to the rescue
+#   partition.
+#
+#   The empty GRUB_XXX variables are overridden in the grub-multibootconf recipe.
+#
+# @author: Dimitris Tassopoulos <dimtass@gmail.com>
+
+echo "prefix: ${prefix}"
+echo "root: ${root}"
+
+# Environment files
+ENV_GRUB=${prefix}/grub.env
+ENV_BOOTCNTR=${prefix}/bootcntr.env
+
+# These variables need to be filled in the grub-multibootconf recipe
+GRUB_ROOTFS=''
+GRUB_RESCUE=''
+GRUB_OPTS=''
+GRUB_BOOT_TRIES=''
+GRUB_KERNEL_IMAGE=''
+GRUB_DEBUG=''
+
+# Set the boot partitions
+BOOT_ROOTFS="root=${GRUB_ROOTFS} ${GRUB_OPTS}"
+BOOT_RESCUE="root=${GRUB_RESCUE} ${GRUB_OPTS}"
+BOOT_CMD="linux (${root})/${GRUB_KERNEL_IMAGE}"
+
+# Print a debug message and pause until Enter is pressed
+#   $1: The message to print
+function debug_print {
+    if [ "${GRUB_DEBUG}" -eq 1 ]; then
+        echo $1
+        read tmp
+    fi
+}
+
+# Save a single environment variable to an environment file
+#   $1: environment file
+#   $2: environment var
+#   $3: value
+function env_write {
+    debug_print "Save $2=$3 to $1"
+    eval $2=$3
+	lock=1
+    save_env --file $1 lock
+    save_env --file $1 "$2"
+	lock=0
+    save_env --file $1 lock
+}
+
+# Boot to the either rootfs or rescue
+function efi_boot {
+	# Boot the selected image
+	if [ "$1" == "ROOTFS" ]; then
+        debug_print "Boot to $1. Bootcmd: ${BOOT_CMD} ${BOOT_ROOTFS}"
+		eval "${BOOT_CMD} ${BOOT_ROOTFS}"
+		boot
+	elif [ "$1" == "RESCUE" ]; then
+        debug_print "Boot to $1. Bootcmd: ${BOOT_CMD} ${BOOT_RESCUE}"
+		eval "${BOOT_CMD} ${BOOT_RESCUE}"
+		boot
+	fi
+}
+
+# Update the boot counter value
+function bootcntr_update {
+    bootcntr=$1
+    lock=1
+    save_env --file ${ENV_BOOTCNTR} lock
+    save_env --file ${ENV_BOOTCNTR} bootcntr
+    lock=0
+    save_env --file ${ENV_BOOTCNTR} lock
+    debug_print "Inrement bootcntr to $1"
+}
+
+# This function just increments the $bootcntr.
+# Because there's no support to increment a value
+# in Grub, then we assume that the maximum boot
+# retries would not exceed 4 in any case. It doesn't
+# make sense more than 2 or 3 anyways.
+function bootcntr_incr {
+    load_env --skip-sig --file ${ENV_BOOTCNTR} bootcntr
+	if [ "${bootcntr}" == "0" ]; then
+		bootcntr_update 1
+	elif [ "${bootcntr}" == "1" ]; then
+		bootcntr_update 2
+	elif [ "${bootcntr}" == "2" ]; then
+		bootcntr_update 3
+	else
+		bootcntr_update 4
+	fi
+}
+
+# Check for all needed files
+if [ ! -f "${ENV_GRUB}" ]; then
+    debug_print "ERROR: Grub environment file (${ENV_GRUB}), is missing! Boot halted!"
+    halt
+fi
+if [ ! -f "${ENV_BOOTCNTR}" ]; then
+    debug_print "ERROR: Boot counter environment file (${ENV_BOOTCNTR}), is missing! Boot halted!"
+    halt
+fi
+
+# Now load the rest environment
+load_env --skip-sig --file ${ENV_GRUB} rootfs_fail lock bootcntr
+
+if [ "${lock}" -eq 1 ]; then
+    #Something gone wrong here this should be always zero
+	debug_print "ERROR: in ${ENV_GRUB} lock:${lock}"
+	efi_boot "RESCUE"
+fi
+
+if [ "${rootfs_fail}" -eq 1 ]; then
+	echo "Boot from rootfs failed. Boot from Recovery..."
+	efi_boot "RESCUE"
+fi
+
+# increment the bootcntr
+bootcntr_incr
+
+# This runs if the $boot_partition is not set to Recovery
+if [ $bootcntr -gt ${GRUB_BOOT_TRIES} ]; then
+	debug_print "Boot failed ($bootcntr/${GRUB_BOOT_TRIES}). Boot from recovery..."
+    env_write ${ENV_GRUB} rootfs_fail 1
+	efi_boot "RESCUE"
+fi
+
+# Normal boot to the rootfs
+efi_boot "ROOTFS"
diff --git a/meta/recipes-bsp/grub/grub-efi_2.02.bb b/meta/recipes-bsp/grub/grub-efi_2.02.bb
index 14fce97ff0..56621d33f7 100644
--- a/meta/recipes-bsp/grub/grub-efi_2.02.bb
+++ b/meta/recipes-bsp/grub/grub-efi_2.02.bb
@@ -85,7 +85,7 @@ do_install_class-target() {
 }
 
 GRUB_BUILDIN ?= "boot linux ext2 fat serial part_msdos part_gpt normal \
-                 efi_gop iso9660 configfile search loadenv test"
+                 efi_gop iso9660 configfile search loadenv test hashsum eval echo cat reboot sleep read"
 
 do_deploy() {
 	install -m 644 ${B}/${GRUB_IMAGE_PREFIX}${GRUB_IMAGE} ${DEPLOYDIR}
diff --git a/meta/recipes-bsp/grub/grub-multibootconf-cntr-rst_1.00.bb b/meta/recipes-bsp/grub/grub-multibootconf-cntr-rst_1.00.bb
new file mode 100644
index 0000000000..15e4da355f
--- /dev/null
+++ b/meta/recipes-bsp/grub/grub-multibootconf-cntr-rst_1.00.bb
@@ -0,0 +1,30 @@
+DESCRIPTION = "Service to reset the grub boot counter. This should be used only for testing!"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+
+inherit systemd
+
+RDEPENDS_${PN} += "bash"
+
+SRC_URI = " \
+            file://bootcntr-rst.service \
+            file://bootcntr-rst.init \
+            "
+S = "${WORKDIR}"
+
+do_install[depends] = "grub-multibootconf:do_install"
+
+do_install () {
+    install -d ${D}${sysconfdir}/init.d
+    install -m 0755 ${WORKDIR}/bootcntr-rst.init ${D}${sysconfdir}/init.d/bootcntr-rst
+	install -d ${D}${systemd_unitdir}/system/ ${D}${sysconfdir}/systemd/system/
+	install -m 0644 ${WORKDIR}/bootcntr-rst.service ${D}${systemd_unitdir}/system
+}
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME = "bootcntr-rst"
+INITSCRIPT_PARAMS = "start 99 S ."
+
+NATIVE_SYSTEMD_SUPPORT = "1"
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "bootcntr-rst.service"
\ No newline at end of file
diff --git a/meta/recipes-bsp/grub/grub-multibootconf_1.00.bb b/meta/recipes-bsp/grub/grub-multibootconf_1.00.bb
new file mode 100644
index 0000000000..06d0b6fe8e
--- /dev/null
+++ b/meta/recipes-bsp/grub/grub-multibootconf_1.00.bb
@@ -0,0 +1,107 @@
+SUMMARY = "Basic grub.cfg for use in multi-boot EFI systems with a rescue partition"
+DESCRIPTION = " \
+This provides the grub multiboot functionality, which is basic and simple to use. \
+There are a few things which are not addressed like the validation of the environment \
+files using hashes. In case of power-loss during writing in a grub environment file \
+the environment files might be corrupted. This basic grub script will handle most of \
+the cases, but it doesn't handle all cases as they might be more complicated. Still, \
+it's a good base to start with and build on top of that. \
+\
+This recipe assumes that you're using some default parameters to your local.conf file. \
+An example is the following: \
+\
+    MACHINE ?= 'qemux86' \
+    MACHINE_FEATURES += 'pcbios efi' \
+    IMAGE_FSTYPES += 'wic' \
+    WKS_FILE = 'directdisk-multi-rootfs.wks.in' \
+    EFI_PROVIDER = 'grub-efi' \
+    IMAGE_INSTALL_append = ' grub grub-efi grub-multibootconf-cntr-rst' \
+    EXTRA_IMAGEDEPENDS += 'ovmf' \
+    PREFERRED_RPROVIDER_virtual/grub-bootconf = 'grub-multibootconf' \
+\
+The above are the minimum requirements to build the multiboot image. For more \
+information for the partitioning, read the `poky/scripts/lib/wic/canned-wks/efi-bootdisk.wks.in` \
+file. \
+\
+You can control the grub boot configuration with the GRUB_xxx variables in this recipe. \
+You can also override with a .bbappend and use your own configuration. \
+"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+
+# When changing the virtual/grub-bootconf then you need to -c cleanall the grub-efi recipe
+RPROVIDES_${PN} += "virtual/grub-bootconf"
+DEPENDS += "bash grub-native"
+
+SRC_URI += " \
+    file://grub-multiboot.cfg \
+    file://bootcntr-rst.service \
+    "
+
+GRUB_CFG ?= "${S}/grub-multiboot.cfg"
+GRUB_BOOTCNTR_ENV ?= "${S}/bootcntr.env"
+GRUB_ENV ?= "${S}/grub.env"
+GRUB_BOOT_TRIES ?= "3"
+GRUB_KERNEL_IMAGE ?= "${KERNEL_IMAGETYPE}"
+GRUB_DEBUG ?= "0"
+GRUB_ROOTFS ?= "/dev/sda2"
+GRUB_RESCUE ?= "/dev/sda3"
+# You can add any other boot options here, like the console
+GRUB_OPTS ?= "rootwait"
+
+S = "${WORKDIR}"
+
+do_install[depends] = "virtual/kernel:do_deploy"
+do_configure[vardeps] += "IMAGE_ROOTFS"
+
+create_env_files() {
+    # Boot counter env file
+    grub-editenv ${GRUB_BOOTCNTR_ENV} set lock=0
+    grub-editenv ${GRUB_BOOTCNTR_ENV} set bootcntr=0
+
+    # Create the grub environment file
+    grub-editenv ${GRUB_ENV} set lock=0
+    grub-editenv ${GRUB_ENV} set rootfs_fail=0
+}
+
+do_configure() {
+    set -x
+    if [ -f "${GRUB_CFG}.tmp" ]; then
+        rm "${GRUB_CFG}.tmp"
+    fi
+    cp ${GRUB_CFG} ${GRUB_CFG}.tmp
+    
+    # Use ':' as delimiter because of /dev/xxx
+    sed -e 's:GRUB_ROOTFS=.*:GRUB_ROOTFS="${GRUB_ROOTFS}":g' \
+		-e 's:GRUB_RESCUE=.*:GRUB_RESCUE="${GRUB_RESCUE}":g' \
+		-e 's:GRUB_OPTS=.*:GRUB_OPTS="${GRUB_OPTS}":g' \
+		-e 's:GRUB_BOOT_TRIES=.*:GRUB_BOOT_TRIES="${GRUB_BOOT_TRIES}":g' \
+		-e 's:GRUB_KERNEL_IMAGE=.*:GRUB_KERNEL_IMAGE="${GRUB_KERNEL_IMAGE}":g' \
+		-e 's:GRUB_DEBUG=.*:GRUB_DEBUG="${GRUB_DEBUG}":g' \
+		-i ${GRUB_CFG}.tmp
+
+#    sed -e 's:IMAGE_ROOTFS:${IMAGE_ROOTFS}:g' \
+#        -i ${WKS_FILE}
+
+    create_env_files
+}
+
+do_install() {
+	install -d ${D}/boot
+	install -d ${D}/boot/EFI
+	install -d ${D}/boot/EFI/BOOT
+	install ${GRUB_CFG}.tmp ${D}/boot/EFI/BOOT/grub.cfg
+	install ${GRUB_BOOTCNTR_ENV} ${D}/boot/EFI/BOOT/bootcntr.env
+	install ${GRUB_ENV} ${D}/boot/EFI/BOOT/grub.env
+    install ${DEPLOY_DIR_IMAGE}/${GRUB_KERNEL_IMAGE} ${D}/boot/${GRUB_KERNEL_IMAGE}
+}
+
+FILES_${PN} = " \
+        /boot/EFI/BOOT/grub.cfg \
+        /boot/EFI/BOOT/bootcntr.env \
+        /boot/EFI/BOOT/grub.env \
+        /boot/${GRUB_KERNEL_IMAGE} \
+"
+
+RM_WORK_EXCLUDE += "${PN}"
\ No newline at end of file
diff --git a/meta/recipes-bsp/grub/grub_2.02.bb b/meta/recipes-bsp/grub/grub_2.02.bb
index e0973759fb..cedabc7da8 100644
--- a/meta/recipes-bsp/grub/grub_2.02.bb
+++ b/meta/recipes-bsp/grub/grub_2.02.bb
@@ -27,3 +27,5 @@ do_install_append () {
 
 INSANE_SKIP_${PN} = "arch"
 INSANE_SKIP_${PN}-dbg = "arch"
+
+BBCLASSEXTEND = "native"
\ No newline at end of file
diff --git a/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks b/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks
deleted file mode 100644
index f61d941d6d..0000000000
--- a/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks
+++ /dev/null
@@ -1,23 +0,0 @@
-# short-description: Create multi rootfs image using rootfs plugin
-# long-description: Creates a partitioned disk image with two rootfs partitions
-# using rootfs plugin.
-#
-# Partitions can use either
-#   - indirect rootfs references to image recipe(s):
-#     wic create directdisk-multi-indirect-recipes -e core-image-minimal \
-#         --rootfs-dir rootfs1=core-image-minimal
-#         --rootfs-dir rootfs2=core-image-minimal-dev
-#
-#   - or paths to rootfs directories:
-#     wic create directdisk-multi-rootfs \
-#         --rootfs-dir rootfs1=tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/
-#         --rootfs-dir rootfs2=tmp/work/qemux86_64-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/
-#
-#   - or any combinations of -r and --rootfs command line options
-
-part /boot --source bootimg-pcbios --ondisk sda --label boot --active --align 1024
-part / --source rootfs --rootfs-dir=rootfs1 --ondisk sda --fstype=ext4 --label platform --align 1024
-part /rescue --source rootfs --rootfs-dir=rootfs2 --ondisk sda --fstype=ext4 --label secondary --align 1024
-
-bootloader  --timeout=0  --append="rootwait rootfstype=ext4 video=vesafb vga=0x318 console=tty0 console=ttyS0,115200n8"
-
diff --git a/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks.in b/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks.in
new file mode 100644
index 0000000000..d661063257
--- /dev/null
+++ b/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks.in
@@ -0,0 +1,22 @@
+# short-description: Create multi rootfs image using rootfs plugin
+#
+# This wks file is meant to be used when the grub-multibootconf is set as the
+# preferred RPROVIDER for virtual/grub-bootconf. By default the --source for
+# both partitions is set to the same image, but you can change that with any
+# image you wish. Because wic creates its own boot partition which overrides
+# the grub boot files from the grub-multibootconf recipe, you need to used the
+# --rootfs-dir and --exclude-path options.
+#
+# --rootfs-dir: This needs to point to the actual /boot folder in the image.
+#       Usually, this pointed by ${IMAGE_ROOTFS} variable. 
+#
+# --exclude-path: This will force wic tool to exclude the /boot folder in the
+#       rootfs and will not override it.
+#
+# With both options provided, wic tool will use the rootfs/boot folder to creates
+# the boot partition.
+#
+bootloader --ptable gpt
+part /boot --source rootfs --rootfs-dir=${IMAGE_ROOTFS}/boot --fstype=vfat --ondisk sda --label boot --active --align 1024
+part / --source rootfs --ondisk sda --fstype=ext4 --label root --align 1024 --exclude-path boot/
+part /rescue --source rootfs --ondisk sda --fstype=ext4 --label rescue --align 1024 --exclude-path boot/
\ No newline at end of file
-- 
2.17.1


