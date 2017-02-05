Return-Path: <anonumiko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 455C2E00995; Sun,  5 Feb 2017 12:24:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f194.google.com (mail-yb0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5CACE00726
	for <poky@yoctoproject.org>; Sun,  5 Feb 2017 12:24:12 -0800 (PST)
Received: by mail-yb0-f194.google.com with SMTP id w194so2820207ybe.1
	for <poky@yoctoproject.org>; Sun, 05 Feb 2017 12:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=dvhgNIC+fLtG/40CsV3irr3ccLl7VK8gl/30zBffFsU=;
	b=rua4aihZ5AXpuv9oXbfFE7hHIMXbdH3HxVguCjrgp8HSamldRzqVykutWcViWx5EqH
	f72wsWvCYm/5L6CPiT6ngfUahn1pF+OehTc7s8mL4zAKPHVnuc2qQQT//hVHkC9DhBiR
	1nYFH8djb80nnzCn0/J+SbMROtXpEpgT7y5dKpSIzlzLZz4VMx83PSbr1QNCXcKekbWh
	rUNrPLcf6SZu07QcEs6EMTXYITn4fpRfWpj97Omf7KXjC+L9nI7D/hwdYcJKMFTc4YoQ
	cCcOpfL+5MMmIIGwFJmswWPiUERTSCXmVJ8sNwiwaWItf/UVzhb+n//jNIdaKp/5qbQB
	t8kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=dvhgNIC+fLtG/40CsV3irr3ccLl7VK8gl/30zBffFsU=;
	b=HU6pqxDWKRij07RF4Gf/xSNeXJmL5WNh8b2ByHj1Mg0//JGOytTFzpe7sx07sqrxga
	we4klXTWYK0MhSKhM46Q3UMNx3X022/ssaI1cHbp6wHhV9a3a7dVdgk/weXeQTgNfx/R
	LpkDzOpvEBTW2oacI9/jK76t3xPdstRynp59A5IAn53Zpq49j3ahp1+t/US7LSVbjhIy
	Nd9GqQ75DAlDg50Mp0wPfOGCb+4Oup5dSM/0Ey2Wsn4FfzUVzdyeuI97xt/Bd/2V4xXO
	xXHVQInHrJCF2hp9F/DIFxPkdqwhQTToh1LQo8y5gGc2hYp7ylkNhf3r+OYEYNAHYMoW
	OMzQ==
X-Gm-Message-State: AMke39nFg9m7TEyf0ZIkqcSOU77M6mGyv/MlcmHVFjzsIYIUJZOYyhqkAEWTdhjRp7KnJCoWdeDXh0XbdRWBJg==
X-Received: by 10.37.222.195 with SMTP id v186mr3943853ybg.187.1486326251483; 
	Sun, 05 Feb 2017 12:24:11 -0800 (PST)
MIME-Version: 1.0
Sender: anonumiko@gmail.com
Received: by 10.37.173.67 with HTTP; Sun, 5 Feb 2017 12:23:51 -0800 (PST)
From: Niko Mauno <niko.mauno@iki.fi>
Date: Sun, 5 Feb 2017 22:23:51 +0200
X-Google-Sender-Auth: yHIS6ESBsNsyxO8VYw4psmMPDDM
Message-ID: <CAN0Cx9NS4MKQqTqWk=d3aydhRui7BB-S8vp8RiYtnz7x_q7KFQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH 1/2] RFC: add new init system alternative to poky
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
X-List-Received-Date: Sun, 05 Feb 2017 20:24:16 -0000
Content-Type: text/plain; charset=UTF-8

From ab4b44dce2751cf2ead098b4bc237bafcaadf6f9 Mon Sep 17 00:00:00 2001
From: Niko Mauno <niko.mauno@iki.fi>
Date: Sat, 4 Feb 2017 20:45:01 +0200
Subject: [PATCH 1/2] openrc: Add initial support

This commit adds preliminary support for modern init system named OpenRC.
It currently relies on /sbin/init from SysVinit.

To deploy, append 'openrc' to DISTRO_FEATURES.

Signed-off-by: Niko Mauno <niko.mauno@iki.fi>
---
 meta/classes/openrc.bbclass                        | 40 ++++++++++++++
 meta/classes/rootfs-postcommands.bbclass           | 15 ++++++
 meta/classes/update-rc.d.bbclass                   | 10 +++-
 .../0001-drop-redundant-lib-from-rpath.patch       | 12 +++++
 .../0002-bootmisc-mkdir-through-symlink.patch      | 11 ++++
 meta/recipes-core/openrc/openrc.inc                | 62 ++++++++++++++++++++++
 meta/recipes-core/openrc/openrc_0.22.4.bb          |  9 ++++
 .../packagegroups/packagegroup-core-boot.bb        |  4 +-
 meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb     |  9 ++--
 meta/recipes-extended/lsb/lsb_4.1.bb               |  4 +-
 .../packagegroup-core-full-cmdline.bb              |  4 +-
 11 files changed, 167 insertions(+), 13 deletions(-)
 create mode 100644 meta/classes/openrc.bbclass
 create mode 100644
meta/recipes-core/openrc/openrc-0.22.4/0001-drop-redundant-lib-from-rpath.patch
 create mode 100644
meta/recipes-core/openrc/openrc-0.22.4/0002-bootmisc-mkdir-through-symlink.patch
 create mode 100644 meta/recipes-core/openrc/openrc.inc
 create mode 100644 meta/recipes-core/openrc/openrc_0.22.4.bb

diff --git a/meta/classes/openrc.bbclass b/meta/classes/openrc.bbclass
new file mode 100644
index 0000000..c009047
--- /dev/null
+++ b/meta/classes/openrc.bbclass
@@ -0,0 +1,40 @@
+# openrc.bbclass: an inheritable bbclass providing helper functions
+# to integrate packages into openrc init system.
+#
+# openrc_add_to_runlevel(): Add an initscript to a runlevel
+# openrc_install_confd(): Install an initscript configuration file
+# openrc_install_initd(): Install an executable initscript file
+# openrc_install_locald(): Install an executable local.d file
+# openrc_install_sysctld(): Install a sysctl.d file
+
+openrc_add_to_runlevel() {
+ [ $# -eq 2 ] || bbfatal "Usage: openrc_add_to_runlevel [runlevel
name] [initscript name]"
+ install -d ${D}${sysconfdir}/runlevels/${1}
+ ln -sf ${sysconfdir}/init.d/${2} ${D}${sysconfdir}/runlevels/${1}/${2}
+}
+
+openrc_install_confd() {
+ [ $# -eq 2 ] || bbfatal "Usage: openrc_install_confd [source file]
[destination filename]"
+ install -d ${D}${sysconfdir}/conf.d
+ install -m 0644 ${1} ${D}${sysconfdir}/conf.d/${2}
+}
+
+openrc_install_initd() {
+ [ $# -eq 2 ] || bbfatal "Usage: openrc_install_initd [source file]
[destination filename]"
+ install -d ${D}${sysconfdir}/init.d
+ install -m 0755 ${1} ${D}${sysconfdir}/init.d/${2}
+}
+
+openrc_install_locald() {
+ [ $# -eq 2 ] || bbfatal "Usage: openrc_install_locald [source file]
[destination filename]"
+ echo ${2} | grep -qE '\.start$|\.stop$' || bbfatal "local.d
destination filename lacks .start or .stop suffix"
+ install -d ${D}${sysconfdir}/local.d
+ install -m 0755 ${1} ${D}${sysconfdir}/local.d/${2}
+}
+
+openrc_install_sysctld() {
+ [ $# -eq 2 ] || bbfatal "Usage: openrc_install_sysctld [source file]
[destination filename]"
+ echo ${2} | grep -q '\.conf$' || bbfatal "sysctl.d destination
filename lacks .conf suffix"
+ install -d ${D}${sysconfdir}/sysctl.d
+ install -m 0644 ${1} ${D}${sysconfdir}/sysctl.d/${2}
+}
diff --git a/meta/classes/rootfs-postcommands.bbclass
b/meta/classes/rootfs-postcommands.bbclass
index c42829d..e6fd251 100644
--- a/meta/classes/rootfs-postcommands.bbclass
+++ b/meta/classes/rootfs-postcommands.bbclass
@@ -17,6 +17,9 @@ ROOTFS_POSTPROCESS_COMMAND +=
'${@bb.utils.contains("IMAGE_FEATURES", "read-only
 # Generates test data file with data store variables expanded in json format
 ROOTFS_POSTPROCESS_COMMAND += "write_image_test_data ; "

+# Warn about openrc incompatible initscripts when openrc is enabled
+ROOTFS_POSTPROCESS_COMMAND +=
'${@bb.utils.contains("DISTRO_FEATURES", "openrc",
"check_openrc_initscripts; ", "", d)}'
+
 # Write manifest
 IMAGE_MANIFEST = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.manifest"
 ROOTFS_POSTUNINSTALL_COMMAND =+ "write_image_manifest ; "
@@ -122,6 +125,18 @@ read_only_rootfs_hook () {
  fi
 }

+check_openrc_initscripts () {
+ for i in rc0.d rc1.d rc2.d rc3.d rc4.d rc5.d rc6.d rcS.d
default/volatiles ; do
+ if test -d "${IMAGE_ROOTFS}${sysconfdir}/${i}" ; then
+ bbwarn "check_openrc_initscripts: rootfs contains redundant $(find
${IMAGE_ROOTFS}${sysconfdir}/${i} | sort)"
+ fi
+ done
+ for i in "${IMAGE_ROOTFS}${sysconfdir}"/init.d/* ; do
+ head -n1 "${i}" | grep -qE
"^#\!/sbin/openrc-run$|^#\!/sbin/runscript$" || [ "$(basename ${i})" =
"functions.sh" ] && continue
+ bbwarn "check_openrc_initscripts: non-openrc initscript ${i}"
+ done
+}
+
 #
 # This function is intended to disallow empty root password if
'debug-tweaks' is not in IMAGE_FEATURES.
 #
diff --git a/meta/classes/update-rc.d.bbclass b/meta/classes/update-rc.d.bbclass
index 36f9009..a992c7e 100644
--- a/meta/classes/update-rc.d.bbclass
+++ b/meta/classes/update-rc.d.bbclass
@@ -1,6 +1,12 @@
 UPDATERCPN ?= "${PN}"

-DEPENDS_append_class-target =
"${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', ' update-rc.d
initscripts', '', d)}"
+DEPENDS_append_class-target = "
${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit',
bb.utils.contains('DISTRO_FEATURES', 'openrc', 'openrc', 'update-rc.d
initscripts', d), '', d)}"
+
+python() {
+    if bb.utils.contains('DISTRO_FEATURES', 'sysvinit', True, False, d):
+        if bb.utils.contains('DISTRO_FEATURES', 'openrc', True, False, d):
+            d.setVar("INHIBIT_UPDATERCD_BBCLASS", "1")
+}

 UPDATERCD = "update-rc.d"
 UPDATERCD_class-cross = ""
@@ -34,7 +40,7 @@ if ${@use_updatercd(d)} && type update-rc.d
>/dev/null 2>/dev/null; then
 fi
 }

-PACKAGE_WRITE_DEPS += "update-rc.d-native"
+PACKAGE_WRITE_DEPS += "${@bb.utils.contains('DISTRO_FEATURES',
'openrc', '', 'update-rc.d-native', d)}"

 updatercd_postinst() {
 # Begin section update-rc.d
diff --git a/meta/recipes-core/openrc/openrc-0.22.4/0001-drop-redundant-lib-from-rpath.patch
b/meta/recipes-core/openrc/openrc-0.22.4/0001-drop-redundant-lib-from-rpath.patch
new file mode 100644
index 0000000..a33c61c
--- /dev/null
+++ b/meta/recipes-core/openrc/openrc-0.22.4/0001-drop-redundant-lib-from-rpath.patch
@@ -0,0 +1,12 @@
+--- a/mk/prog.mk 2016-10-16 13:35:26.698424208 +0300
++++ b/mk/prog.mk 2016-10-16 13:37:31.204898236 +0300
+@@ -24,7 +24,9 @@
+ fi
+ _DYNLINK:= $(shell ${_DYNLINK_SH})
+ LDFLAGS+= ${_DYNLINK}
++ifneq ($(PREFIX)/$(LIBNAME),/)
+ LDFLAGS+= -Wl,-rpath=${PREFIX}/${LIBNAME}
++endif
+ LDFLAGS+= ${PROGLDFLAGS}
+
+ CLEANFILES+= ${OBJS} ${PROG}
diff --git a/meta/recipes-core/openrc/openrc-0.22.4/0002-bootmisc-mkdir-through-symlink.patch
b/meta/recipes-core/openrc/openrc-0.22.4/0002-bootmisc-mkdir-through-symlink.patch
new file mode 100644
index 0000000..c0d88d8
--- /dev/null
+++ b/meta/recipes-core/openrc/openrc-0.22.4/0002-bootmisc-mkdir-through-symlink.patch
@@ -0,0 +1,11 @@
+--- a/init.d/bootmisc.in 2016-12-25 16:29:30.505868660 +0200
++++ b/init.d/bootmisc.in 2016-12-25 16:29:49.774250124 +0200
+@@ -173,7 +173,7 @@
+ fi
+ for x in /var/log /tmp $extra; do
+ if ! [ -d $x ]; then
+- if ! mkdir -p $x; then
++ if ! mkdir -p $(readlink -f $x); then
+ eend 1 "failed to create needed directory $x"
+ return 1
+ fi
diff --git a/meta/recipes-core/openrc/openrc.inc
b/meta/recipes-core/openrc/openrc.inc
new file mode 100644
index 0000000..7d68b05
--- /dev/null
+++ b/meta/recipes-core/openrc/openrc.inc
@@ -0,0 +1,62 @@
+
+
+# Usage: add 'openrc' to DISTRO_FEATURES in your configuration
+#
+# Sample approach to amend default configuration files:
+#
+#   do_install_append() {
+#       echo 'keymap="fi"' >> ${D}${sysconfdir}/conf.d/keymaps
+#       echo 'rc_logger="YES"' >> ${D}${sysconfdir}/rc.conf
+#   }
+
+SUMMARY = "OpenRC manages the services, startup and shutdown of a host"
+DESCRIPTION = "OpenRC is a dependency-based init system that works with the \
+system-provided init program, normally /sbin/init. Currently, it does
not have \
+an init program of its own."
+HOMEPAGE = "https://github.com/openrc/openrc/"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=2307fb28847883ac2b0b110b1c1f36e0"
+
+INC_PR = "r0"
+
+SRC_URI = "https://github.com/${PN}/${PN}/archive/${PV}.tar.gz"
+
+RCONFLICTS_${PN} = "initscripts lsbinitscripts systemd
sysvinit-inittab sysvinit-rcscripts"
+RCONFLICTS_${PN}-initscripts = "initscripts"
+
+RDEPENDS_${PN}_class-target = "sysvinit ( >= 2.86 ) sysvinit-pidof
${PN}-inittab util-linux-agetty"
+RDEPENDS_${PN}-initscripts_class-target = "${PN} kbd kbd-keymaps"
+
+PACKAGES =+ "${PN}-inittab ${PN}-openvpn"
+PACKAGES += "${PN}-initscripts"
+
+FILES_${PN} += "/libexec/rc ${sysconfdir}/init.d/functions.sh"
+FILES_${PN}-inittab = "${sysconfdir}/inittab"
+FILES_${PN}-openvpn = "${sysconfdir}/openvpn"
+FILES_${PN} = "${base_bindir} ${base_sbindir} ${base_libdir} /libexec/rc \
+${sysconfdir}/init.d/functions.sh ${sysconfdir}/inittab ${sysconfdir}/rc.conf \
+${sysconfdir}/local.d/README ${sysconfdir}/sysctl.d/README"
+FILES_${PN}-initscripts = "${sysconfdir}"
+
+do_install() {
+ oe_runmake DESTDIR="${D}" install
+
+ install -d ${D}${sysconfdir}
+ install -m 0644 ${B}/support/sysvinit/inittab ${D}${sysconfdir}/
+ for i in $(echo "${SERIAL_CONSOLES}" | tr '\t ' '\n' | sort -r) ; do
+ line="$(echo "${i}" | sed 's#.*;tty##'):12345:respawn:/sbin/agetty
$(echo "${i}" | tr ';' ' ') vt100"
+ sed -i "/^# SERIAL CONSOLES$/a ${line}" ${D}${sysconfdir}/inittab
+ if ! grep -q "^${line}$" ${D}${sysconfdir}/inittab ; then
+ bbfatal "Failed to insert line: '${line}' in ${D}${sysconfdir}/inittab"
+ fi
+ done
+
+ install -d ${D}${sysconfdir}/openvpn
+ install -m 0755 ${B}/support/openvpn/down.sh ${D}${sysconfdir}/openvpn/
+ install -m 0755 ${B}/support/openvpn/up.sh ${D}${sysconfdir}/openvpn/
+}
+
+inherit distro_features_check
+
+CONFLICT_DISTRO_FEATURES = "systemd"
+REQUIRED_DISTRO_FEATURES = "sysvinit"
diff --git a/meta/recipes-core/openrc/openrc_0.22.4.bb
b/meta/recipes-core/openrc/openrc_0.22.4.bb
new file mode 100644
index 0000000..1f0faa7
--- /dev/null
+++ b/meta/recipes-core/openrc/openrc_0.22.4.bb
@@ -0,0 +1,9 @@
+require openrc.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI[md5sum] = "09d1fae31031647b65f56a8ae51f4133"
+SRC_URI[sha256sum] =
"d428890c12936b502d79018667dc6094d0e801c558f118b49e44c5f34636073b"
+SRC_URI_append = "\
+ file://0001-drop-redundant-lib-from-rpath.patch \
+ file://0002-bootmisc-mkdir-through-symlink.patch"
diff --git a/meta/recipes-core/packagegroups/packagegroup-core-boot.bb
b/meta/recipes-core/packagegroups/packagegroup-core-boot.bb
index 04bc0f2..b509217 100644
--- a/meta/recipes-core/packagegroups/packagegroup-core-boot.bb
+++ b/meta/recipes-core/packagegroups/packagegroup-core-boot.bb
@@ -4,7 +4,7 @@

 SUMMARY = "Minimal boot requirements"
 DESCRIPTION = "The minimal set of packages required to boot the system"
-PR = "r17"
+PR = "r18"

 PACKAGE_ARCH = "${MACHINE_ARCH}"

@@ -20,7 +20,7 @@ MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?= ""
 VIRTUAL-RUNTIME_dev_manager ?= "udev"
 VIRTUAL-RUNTIME_login_manager ?= "busybox"
 VIRTUAL-RUNTIME_init_manager ?= "sysvinit"
-VIRTUAL-RUNTIME_initscripts ?= "initscripts"
+VIRTUAL-RUNTIME_initscripts ?=
"${@bb.utils.contains('DISTRO_FEATURES', 'openrc',
'openrc-initscripts', 'initscripts', d)}"
 VIRTUAL-RUNTIME_keymaps ?= "keymaps"

 SYSVINIT_SCRIPTS = "${@bb.utils.contains('MACHINE_FEATURES', 'rtc',
'${VIRTUAL-RUNTIME_base-utils-hwclock}', '', d)} \
diff --git a/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb
b/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb
index 884857a..1ba95d0 100644
--- a/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb
+++ b/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb
@@ -5,9 +5,9 @@ SECTION = "base"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \

file://COPYRIGHT;endline=15;md5=349c872e0066155e1818b786938876a4"
-PR = "r14"
+PR = "r15"

-RDEPENDS_${PN} = "${PN}-inittab"
+RDEPENDS_${PN} = "${@bb.utils.contains('DISTRO_FEATURES', 'openrc',
'', 'initscripts-functions sysvinit-inittab sysvinit-pidof
sysvinit-rcscripts', d)}"

 SRC_URI = "${SAVANNAH_GNU_MIRROR}/sysvinit/sysvinit-${PV}.tar.bz2 \
            file://install.patch \
@@ -63,13 +63,12 @@ ALTERNATIVE_LINK_NAME[sulogin.8] =
"${mandir}/man8/sulogin.8"
 ALTERNATIVE_LINK_NAME[utmpdump.1] = "${mandir}/man1/utmpdump.1"
 ALTERNATIVE_LINK_NAME[wall.1] = "${mandir}/man1/wall.1"

-PACKAGES =+ "sysvinit-pidof sysvinit-sulogin"
+PACKAGES =+ "sysvinit-pidof sysvinit-rcscripts sysvinit-sulogin"
 FILES_${PN} += "${base_sbindir}/* ${base_bindir}/*"
 FILES_sysvinit-pidof = "${base_bindir}/pidof.sysvinit ${base_sbindir}/killall5"
+FILES_sysvinit-rcscripts = "${sysconfdir}"
 FILES_sysvinit-sulogin = "${base_sbindir}/sulogin.sysvinit"

-RDEPENDS_${PN} += "sysvinit-pidof initscripts-functions"
-
 CFLAGS_prepend = "-D_GNU_SOURCE "
 export LCRYPT = "-lcrypt"
 EXTRA_OEMAKE += "'base_bindir=${base_bindir}' \
diff --git a/meta/recipes-extended/lsb/lsb_4.1.bb
b/meta/recipes-extended/lsb/lsb_4.1.bb
index ece0eab..6acdf52 100644
--- a/meta/recipes-extended/lsb/lsb_4.1.bb
+++ b/meta/recipes-extended/lsb/lsb_4.1.bb
@@ -2,7 +2,7 @@ SUMMARY = "LSB support for OpenEmbedded"
 SECTION = "console/utils"
 HOMEPAGE = "http://prdownloads.sourceforge.net/lsb"
 LICENSE = "GPLv2+"
-PR = "r2"
+PR = "r3"

 LSB_CORE = "lsb-core-${TARGET_ARCH}"
 LSB_CORE_x86 = "lsb-core-ia32"
@@ -10,7 +10,7 @@ LSB_CORE_x86-64 = "lsb-core-amd64"
 RPROVIDES_${PN} += "${LSB_CORE}"

 # lsb_release needs getopt, lsbinitscripts
-RDEPENDS_${PN} += "${VIRTUAL-RUNTIME_getopt} lsbinitscripts"
+RDEPENDS_${PN} += "${VIRTUAL-RUNTIME_getopt}
${@bb.utils.contains('DISTRO_FEATURES', 'openrc', '',
'lsbinitscripts', d)}"

 LIC_FILES_CHKSUM = "file://README;md5=12da544b1a3a5a1795a21160b49471cf"

diff --git a/meta/recipes-extended/packagegroups/packagegroup-core-full-cmdline.bb
b/meta/recipes-extended/packagegroups/packagegroup-core-full-cmdline.bb
index d8975f2..2107ca5 100644
--- a/meta/recipes-extended/packagegroups/packagegroup-core-full-cmdline.bb
+++ b/meta/recipes-extended/packagegroups/packagegroup-core-full-cmdline.bb
@@ -4,7 +4,7 @@

 SUMMARY = "Standard full-featured Linux system"
 DESCRIPTION = "Package group bringing in packages needed for a more
traditional full-featured Linux system"
-PR = "r6"
+PR = "r7"

 inherit packagegroup

@@ -117,7 +117,7 @@ RDEPENDS_packagegroup-core-full-cmdline-dev-utils = "\
     patch \
     "

-VIRTUAL-RUNTIME_initscripts ?= "initscripts"
+VIRTUAL-RUNTIME_initscripts ?=
"${@bb.utils.contains('DISTRO_FEATURES', 'openrc',
'openrc-initscripts', 'initscripts', d)}"
 VIRTUAL-RUNTIME_init_manager ?= "sysvinit"
 VIRTUAL-RUNTIME_login_manager ?= "busybox"
 VIRTUAL-RUNTIME_syslog ?= "sysklogd"
-- 
2.1.4

