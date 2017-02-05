Return-Path: <anonumiko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B83EE009A0; Sun,  5 Feb 2017 12:25:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A48C7E00726
	for <poky@yoctoproject.org>; Sun,  5 Feb 2017 12:25:30 -0800 (PST)
Received: by mail-yw0-f195.google.com with SMTP id v73so5644594ywg.1
	for <poky@yoctoproject.org>; Sun, 05 Feb 2017 12:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=hzEX8lceDnKSR/P7NTgzMISS07E11BMEaajPcpnOOUU=;
	b=klhMqSqENzmKSV9TwcArXI37TQdruDYnhW66CCHIQLxcy6zrH4I1eXeqiTAPsjH2No
	sSzeWMtnItog98VBOlRY5U1Y5cfCa3XL1CvQts4AsWQ1mxs91hmbYxxnkpm0cIgdn+KF
	4JTmku1Ue5GG3go3OSUybuYpBaoGAdhPPv0fwsYMJ1UnrZB4yyKi+R35QKop63kXg3uc
	yLZIaufE5/ysxZgQijT9Yi1dNGEMguDl3FlFr9h2ZXKpcr7AevQvhzSyaWHmld1Enyn4
	2l7NRK4HajVUmab3OSFaLX8LD1ukWeRY2B6DuqrqmlPlS/6PdWjzyKiwK3RkphC68Zwk
	99wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=hzEX8lceDnKSR/P7NTgzMISS07E11BMEaajPcpnOOUU=;
	b=VsLmVltm+hpAVn6rdiU8OOSqADP9rxB4FFqbhlIUHfvykJCw4vEqZ+RCEE/4mx/g+r
	Utqx2ar6JOCdGu0kbBEREQbzASXW4JPwRO896GWrLayZ5kQ9cBNIuy/zODn19RajP9mO
	GIvCmSRFZ7XaoAXovxere1SbduN1Fa9S9PYrrbEum2UzNsmbZM34BtwVyyvYDGvnlYYD
	Av1grgWQhFadxy99dCTD0VLB16YH8KceWbQ1OIUjrm39EPACvn6DMI60ySGxgh/JQHIe
	5v8+HsqBKP0w588hzSkbCzQPm/UZDoFajHUwKle4uajXkpKRrG5XQFApelElMcW6gRCX
	B9vQ==
X-Gm-Message-State: AMke39kzMJFiHVLB/5Z1/QXXH6Lxkf4HQkVakzoKek7b9a55WPyuLJObjof2BLtMNEZacSdlna0Dr0L8Q3Jc5g==
X-Received: by 10.129.89.70 with SMTP id n67mr4798756ywb.296.1486326329338;
	Sun, 05 Feb 2017 12:25:29 -0800 (PST)
MIME-Version: 1.0
Sender: anonumiko@gmail.com
Received: by 10.37.173.67 with HTTP; Sun, 5 Feb 2017 12:25:09 -0800 (PST)
From: Niko Mauno <niko.mauno@iki.fi>
Date: Sun, 5 Feb 2017 22:25:09 +0200
X-Google-Sender-Auth: mFFqm6VbJMSAxnqgy9gDK9r10ZQ
Message-ID: <CAN0Cx9MbC+vbvZos6_M1fVUgt1yFmodt=catPa_udJincJCnnw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH 2/2] RFC: add new init system alternative to poky
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
X-List-Received-Date: Sun, 05 Feb 2017 20:25:32 -0000
Content-Type: text/plain; charset=UTF-8

From eef31a740cdb687f6655256a0d515e5da01e9f0b Mon Sep 17 00:00:00 2001
From: Niko Mauno <niko.mauno@iki.fi>
Date: Sat, 4 Feb 2017 20:46:47 +0200
Subject: [PATCH 2/2] openssh: Add openrc support

Source of init, conf files:
https://gitweb.gentoo.org/repo/gentoo.git/plain/net-misc/openssh/files/sshd.rc6.4
https://gitweb.gentoo.org/repo/gentoo.git/plain/net-misc/openssh/files/sshd.confd

Signed-off-by: Niko Mauno <niko.mauno@iki.fi>
---
 .../openssh/openssh/openrc/conf                    | 21 ++++++
 .../openssh/openssh/openrc/init                    | 85 ++++++++++++++++++++++
 meta/recipes-connectivity/openssh/openssh_7.4p1.bb | 20 +++--
 3 files changed, 120 insertions(+), 6 deletions(-)
 create mode 100644 meta/recipes-connectivity/openssh/openssh/openrc/conf
 create mode 100644 meta/recipes-connectivity/openssh/openssh/openrc/init

diff --git a/meta/recipes-connectivity/openssh/openssh/openrc/conf
b/meta/recipes-connectivity/openssh/openssh/openrc/conf
new file mode 100644
index 0000000..28952b4
--- /dev/null
+++ b/meta/recipes-connectivity/openssh/openssh/openrc/conf
@@ -0,0 +1,21 @@
+# /etc/conf.d/sshd: config file for /etc/init.d/sshd
+
+# Where is your sshd_config file stored?
+
+SSHD_CONFDIR="/etc/ssh"
+
+
+# Any random options you want to pass to sshd.
+# See the sshd(8) manpage for more info.
+
+SSHD_OPTS=""
+
+
+# Pid file to use (needs to be absolute path).
+
+#SSHD_PIDFILE="/var/run/sshd.pid"
+
+
+# Path to the sshd binary (needs to be absolute path).
+
+#SSHD_BINARY="/usr/sbin/sshd"
diff --git a/meta/recipes-connectivity/openssh/openssh/openrc/init
b/meta/recipes-connectivity/openssh/openssh/openrc/init
new file mode 100644
index 0000000..95cf424
--- /dev/null
+++ b/meta/recipes-connectivity/openssh/openssh/openrc/init
@@ -0,0 +1,85 @@
+#!/sbin/openrc-run
+# Copyright 1999-2015 Gentoo Foundation
+# Distributed under the terms of the GNU General Public License v2
+# $Id$
+
+extra_commands="checkconfig"
+extra_started_commands="reload"
+
+: ${SSHD_CONFDIR:=/etc/ssh}
+: ${SSHD_CONFIG:=${SSHD_CONFDIR}/sshd_config}
+: ${SSHD_PIDFILE:=/var/run/${SVCNAME}.pid}
+: ${SSHD_BINARY:=/usr/sbin/sshd}
+
+depend() {
+ use logger dns
+ if [ "${rc_need+set}" = "set" ] ; then
+ : # Do nothing, the user has explicitly set rc_need
+ else
+ local x warn_addr
+ for x in $(awk '/^ListenAddress/{ print $2 }' "$SSHD_CONFIG" 2>/dev/null) ; do
+ case "${x}" in
+ 0.0.0.0|0.0.0.0:*) ;;
+ ::|\[::\]*) ;;
+ *) warn_addr="${warn_addr} ${x}" ;;
+ esac
+ done
+ if [ -n "${warn_addr}" ] ; then
+ need net
+ ewarn "You are binding an interface in ListenAddress statement in
your sshd_config!"
+ ewarn "You must add rc_need=\"net.FOO\" to your /etc/conf.d/sshd"
+ ewarn "where FOO is the interface(s) providing the following address(es):"
+ ewarn "${warn_addr}"
+ fi
+ fi
+}
+
+checkconfig() {
+ if [ ! -d /var/run/sshd ] ; then
+ mkdir /var/run/sshd || return 1
+ fi
+
+ if [ ! -e "${SSHD_CONFIG}" ] ; then
+ eerror "You need an ${SSHD_CONFIG} file to run sshd"
+ eerror "There is a sample file in /usr/share/doc/openssh"
+ return 1
+ fi
+
+ ssh-keygen -A || return 1
+
+ [ "${SSHD_PIDFILE}" != "/var/run/sshd.pid" ] \
+ && SSHD_OPTS="${SSHD_OPTS} -o PidFile=${SSHD_PIDFILE}"
+ [ "${SSHD_CONFIG}" != "/etc/ssh/sshd_config" ] \
+ && SSHD_OPTS="${SSHD_OPTS} -f ${SSHD_CONFIG}"
+
+ "${SSHD_BINARY}" -t ${SSHD_OPTS} || return 1
+}
+
+start() {
+ checkconfig || return 1
+
+ ebegin "Starting ${SVCNAME}"
+ start-stop-daemon --start --exec "${SSHD_BINARY}" \
+    --pidfile "${SSHD_PIDFILE}" \
+    -- ${SSHD_OPTS}
+ eend $?
+}
+
+stop() {
+ if [ "${RC_CMD}" = "restart" ] ; then
+ checkconfig || return 1
+ fi
+
+ ebegin "Stopping ${SVCNAME}"
+ start-stop-daemon --stop --exec "${SSHD_BINARY}" \
+    --pidfile "${SSHD_PIDFILE}" --quiet
+ eend $?
+}
+
+reload() {
+ checkconfig || return 1
+ ebegin "Reloading ${SVCNAME}"
+ start-stop-daemon --signal HUP \
+    --exec "${SSHD_BINARY}" --pidfile "${SSHD_PIDFILE}"
+ eend $?
+}
diff --git a/meta/recipes-connectivity/openssh/openssh_7.4p1.bb
b/meta/recipes-connectivity/openssh/openssh_7.4p1.bb
index 3b3d667..d5e49fe 100644
--- a/meta/recipes-connectivity/openssh/openssh_7.4p1.bb
+++ b/meta/recipes-connectivity/openssh/openssh_7.4p1.bb
@@ -22,6 +22,8 @@ SRC_URI =
"http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${PV}.tar
            file://volatiles.99_sshd \
            file://add-test-support-for-busybox.patch \
            file://run-ptest \
+           file://openrc/conf \
+           file://openrc/init \
            file://openssh-7.1p1-conditional-compile-des-in-cipher.patch \
            file://openssh-7.1p1-conditional-compile-des-in-pkcs11.patch \
            file://fix-potential-signed-overflow-in-pointer-arithmatic.patch \
@@ -32,7 +34,7 @@ PAM_SRC_URI = "file://sshd"
 SRC_URI[md5sum] = "b2db2a83caf66a208bb78d6d287cdaa3"
 SRC_URI[sha256sum] =
"1b1fc4a14e2024293181924ed24872e6f2e06293f3e8926a376b8aec481f19d1"

-inherit useradd update-rc.d update-alternatives systemd
+inherit useradd update-rc.d update-alternatives systemd openrc

 USERADD_PACKAGES = "${PN}-sshd"
 USERADD_PARAM_${PN}-sshd = "--system --no-create-home --home-dir
/var/run/sshd --shell /bin/false --user-group sshd"
@@ -101,11 +103,17 @@ do_install_append () {
  fi

  install -d ${D}${sysconfdir}/init.d
- install -m 0755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/sshd
+ if [ "${@bb.utils.contains('DISTRO_FEATURES', 'openrc', 'openrc',
'', d)}" = "openrc" ]; then
+ openrc_install_initd ${WORKDIR}/openrc/init sshd
+ openrc_install_confd ${WORKDIR}/openrc/conf sshd
+ openrc_add_to_runlevel default sshd
+ else
+ install -m 0755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/sshd
+ install -d ${D}/${sysconfdir}/default/volatiles
+ install -m 644 ${WORKDIR}/volatiles.99_sshd
${D}/${sysconfdir}/default/volatiles/99_sshd
+ fi
  rm -f ${D}${bindir}/slogin ${D}${datadir}/Ssh.bin
  rmdir ${D}${localstatedir}/run/sshd ${D}${localstatedir}/run
${D}${localstatedir}
- install -d ${D}/${sysconfdir}/default/volatiles
- install -m 644 ${WORKDIR}/volatiles.99_sshd
${D}/${sysconfdir}/default/volatiles/99_sshd
  install -m 0755 ${S}/contrib/ssh-copy-id ${D}${bindir}

  # Create config files for read-only rootfs
@@ -137,7 +145,7 @@ ALLOW_EMPTY_${PN} = "1"
 PACKAGES =+ "${PN}-keygen ${PN}-scp ${PN}-ssh ${PN}-sshd ${PN}-sftp
${PN}-misc ${PN}-sftp-server"
 FILES_${PN}-scp = "${bindir}/scp.${BPN}"
 FILES_${PN}-ssh = "${bindir}/ssh.${BPN} ${sysconfdir}/ssh/ssh_config"
-FILES_${PN}-sshd = "${sbindir}/sshd ${sysconfdir}/init.d/sshd
${systemd_unitdir}/system"
+FILES_${PN}-sshd = "${sbindir}/sshd ${sysconfdir}/init.d/sshd
${sysconfdir}/conf.d/sshd ${sysconfdir}/runlevels/default/sshd
${systemd_unitdir}/system"
 FILES_${PN}-sshd += "${sysconfdir}/ssh/moduli
${sysconfdir}/ssh/sshd_config ${sysconfdir}/ssh/sshd_config_readonly
${sysconfdir}/default/volatiles/99_sshd ${sysconfdir}/pam.d/sshd"
 FILES_${PN}-sftp = "${bindir}/sftp"
 FILES_${PN}-sftp-server = "${libexecdir}/sftp-server"
@@ -145,7 +153,7 @@ FILES_${PN}-misc = "${bindir}/ssh* ${libexecdir}/ssh*"
 FILES_${PN}-keygen = "${bindir}/ssh-keygen"

 RDEPENDS_${PN} += "${PN}-scp ${PN}-ssh ${PN}-sshd ${PN}-keygen"
-RDEPENDS_${PN}-sshd += "${PN}-keygen
${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'pam-plugin-keyinit
pam-plugin-loginuid', '', d)}"
+RDEPENDS_${PN}-sshd += "${PN}-keygen
${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'pam-plugin-keyinit
pam-plugin-loginuid', '', d)} ${@bb.utils.contains('DISTRO_FEATURES',
'openrc', 'openrc', '', d)}"
 RDEPENDS_${PN}-ptest += "${PN}-sftp ${PN}-misc ${PN}-sftp-server make"

 RPROVIDES_${PN}-ssh = "ssh"
-- 
2.1.4

