Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 528F44C800BC
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:47:49 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p143lnIc024663
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 19:47:49 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:48 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:48 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 21:44:27 -0600
Message-Id: <2eb067e68ac867d5cb0def31447dddce20ff52a0.1296790992.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296790992.git.mark.hatle@windriver.com>
References: <cover.1296790992.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296790992.git.mark.hatle@windriver.com>
References: <cover.1296790992.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 04 Feb 2011 03:47:48.0660 (UTC)
	FILETIME=[4A683F40:01CBC41E]
Subject: [PATCH 1/4] busybox: Support DHCP refresh without restarting the interface
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
X-List-Received-Date: Fri, 04 Feb 2011 03:47:49 -0000

When the kernel is started using ip=dhcp, we want a way to be able to run
the udhcp client within busybox and not reset the interface.

When using the '-D' option to udhcpc, the defconfig script will be skipped
allowing the refresh without changing the network settings.

Also provide an initscript that can be used to detect ip=dhcp on the
kernel command line, if detected it will refresh the lease and set the
proper resolve.conf and related files, but not reset the interface.

Original code in Wind River Linux by Greg Moffatt <greg.moffat@windriver.com>

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../busybox-udhcpc-no_deconfig.patch               |  110 ++++++++++++++++++++
 meta/recipes-core/busybox/busybox.inc              |    4 +-
 meta/recipes-core/busybox/busybox_1.17.3.bb        |    4 +-
 meta/recipes-core/busybox/files/busybox-udhcpc     |   25 +++++
 4 files changed, 141 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch
 create mode 100755 meta/recipes-core/busybox/files/busybox-udhcpc

diff --git a/meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch b/meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch
new file mode 100644
index 0000000..cdf56b8
--- /dev/null
+++ b/meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch
@@ -0,0 +1,110 @@
+Add a new option -D to the udhcpc client that allows for
+dhcp renewal to occur without having to down the interface
+in the process.
+
+Signed-off-by: Greg Moffatt <greg.moffatt@windriver.com>
+
+Updated to latest Busybox 1.17.3
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+diff -ur busybox-1.17.3.orig/networking/udhcp/dhcpc.c busybox-1.17.3/networking/udhcp/dhcpc.c
+--- busybox-1.17.3.orig/networking/udhcp/dhcpc.c
++++ busybox-1.17.3/networking/udhcp/dhcpc.c
+@@ -35,6 +35,9 @@
+ #endif
+ #include <linux/filter.h>
+ 
++/* option whether to down the interface when reconfiguring */
++static int allow_deconfig = 1;
++
+ /* struct client_config_t client_config is in bb_common_bufsiz1 */
+ 
+ 
+@@ -709,7 +712,8 @@
+ 		state = RENEW_REQUESTED;
+ 		break;
+ 	case RENEW_REQUESTED: /* impatient are we? fine, square 1 */
+-		udhcp_run_script(NULL, "deconfig");
++		if (allow_deconfig)
++			udhcp_run_script(NULL, "deconfig");
+ 	case REQUESTING:
+ 	case RELEASED:
+ 		change_listen_mode(LISTEN_RAW);
+@@ -733,7 +737,8 @@
+ 		bb_info_msg("Unicasting a release of %s to %s",
+ 				inet_ntoa(temp_addr), buffer);
+ 		send_release(server_addr, requested_ip); /* unicast */
+-		udhcp_run_script(NULL, "deconfig");
++		if (allow_deconfig)
++			udhcp_run_script(NULL, "deconfig");
+ 	}
+ 	bb_info_msg("Entering released state");
+ 
+@@ -836,6 +841,7 @@
+ 		OPT_o = 1 << 18,
+ 		OPT_x = 1 << 19,
+ 		OPT_f = 1 << 20,
++		OPT_D = 1 << 21,
+ /* The rest has variable bit positions, need to be clever */
+ 		OPTBIT_f = 20,
+ 		USE_FOR_MMU(             OPTBIT_b,)
+@@ -861,7 +867,7 @@
+ #endif
+ 		;
+ 	IF_LONG_OPTS(applet_long_options = udhcpc_longopts;)
+-	opt = getopt32(argv, "c:CV:H:h:F:i:np:qRr:s:T:t:SA:O:ox:f"
++	opt = getopt32(argv, "c:CV:H:h:F:i:np:qRr:s:T:t:SA:O:ox:fD"
+ 		USE_FOR_MMU("b")
+ 		IF_FEATURE_UDHCPC_ARPING("a")
+ 		IF_FEATURE_UDHCP_PORT("P:")
+@@ -950,6 +956,9 @@
+ 		logmode |= LOGMODE_SYSLOG;
+ 	}
+ 
++	if (opt & OPT_D)
++		allow_deconfig = 0;
++
+ 	/* Make sure fd 0,1,2 are open */
+ 	bb_sanitize_stdio();
+ 	/* Equivalent of doing a fflush after every \n */
+@@ -964,7 +973,8 @@
+ 	srand(monotonic_us());
+ 
+ 	state = INIT_SELECTING;
+-	udhcp_run_script(NULL, "deconfig");
++	if (allow_deconfig)
++		udhcp_run_script(NULL, "deconfig");
+ 	change_listen_mode(LISTEN_RAW);
+ 	packet_num = 0;
+ 	timeout = 0;
+@@ -1100,7 +1110,8 @@
+ 				}
+ 				/* Timed out, enter init state */
+ 				bb_info_msg("Lease lost, entering init state");
+-				udhcp_run_script(NULL, "deconfig");
++				if (allow_deconfig)
++					udhcp_run_script(NULL, "deconfig");
+ 				state = INIT_SELECTING;
+ 				/*timeout = 0; - already is */
+ 				packet_num = 0;
+@@ -1246,7 +1257,8 @@
+ 						send_decline(xid, server_addr, packet.yiaddr);
+ 
+ 						if (state != REQUESTING)
+-							udhcp_run_script(NULL, "deconfig");
++							if (allow_deconfig)
++								udhcp_run_script(NULL, "deconfig");
+ 						change_listen_mode(LISTEN_RAW);
+ 						state = INIT_SELECTING;
+ 						requested_ip = 0;
+@@ -1292,7 +1304,8 @@
+ 				bb_info_msg("Received DHCP NAK");
+ 				udhcp_run_script(&packet, "nak");
+ 				if (state != REQUESTING)
+-					udhcp_run_script(NULL, "deconfig");
++					if (allow_deconfig)
++						udhcp_run_script(NULL, "deconfig");
+ 				change_listen_mode(LISTEN_RAW);
+ 				sleep(3); /* avoid excessive network traffic */
+ 				state = INIT_SELECTING;
diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index 142c72f..55f056c 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -18,11 +18,12 @@ FILES_${PN}-httpd = "${sysconfdir}/init.d/busybox-httpd /srv/www"
 FILES_${PN}-udhcpd = "${sysconfdir}/init.d/busybox-udhcpd"
 
 FILES_${PN} += "${datadir}/udhcpc"
+FILES_${PN} += "${sysconfdir}/init.d/busybox-udhcpc"
 
 INITSCRIPT_PACKAGES = "${PN} ${PN}-httpd ${PN}-udhcpd"
 INITSCRIPT_NAME_${PN}-httpd = "busybox-httpd"
 INITSCRIPT_NAME_${PN}-udhcpd = "busybox-udhcpd" 
-INITSCRIPT_NAME_${PN} = "syslog"
+INITSCRIPT_NAME_${PN} = "syslog busybox-udhcpc"
 CONFFILES_${PN} = "${sysconfdir}/syslog.conf.${PN}"
 
 # This disables the syslog startup links in slugos (see slugos-init)
@@ -97,6 +98,7 @@ do_install () {
 		install -d ${D}${datadir}/udhcpc
 		install -m 0755 ${S}/examples/udhcp/simple.script ${D}${sysconfdir}/udhcpc.d/50default
 		install -m 0755 ${WORKDIR}/default.script ${D}${datadir}/udhcpc/default.script
+		install -m 0755 ${WORKDIR}/busybox-udhcpc ${D}${sysconfdir}/init.d/
 	fi
 
 	install -m 0644 ${S}/busybox.links ${D}${sysconfdir}
diff --git a/meta/recipes-core/busybox/busybox_1.17.3.bb b/meta/recipes-core/busybox/busybox_1.17.3.bb
index 9ecb36d..c5fbe9c 100644
--- a/meta/recipes-core/busybox/busybox_1.17.3.bb
+++ b/meta/recipes-core/busybox/busybox_1.17.3.bb
@@ -1,5 +1,5 @@
 require busybox.inc
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://udhcpscript.patch \
@@ -9,10 +9,12 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://busybox-appletlib-dependency.patch \
            file://run-parts.in.usr-bin.patch \
            file://make-382-fix.patch \
+           file://busybox-udhcpc-no_deconfig.patch \
            file://find-touchscreen.sh \
            file://busybox-cron \
            file://busybox-httpd \
            file://busybox-udhcpd \
+           file://busybox-udhcpc \
            file://default.script \
            file://simple.script \
            file://hwclock.sh \
diff --git a/meta/recipes-core/busybox/files/busybox-udhcpc b/meta/recipes-core/busybox/files/busybox-udhcpc
new file mode 100755
index 0000000..2c43f8d
--- /dev/null
+++ b/meta/recipes-core/busybox/files/busybox-udhcpc
@@ -0,0 +1,25 @@
+#!/bin/sh
+#
+# (c) 2010-2011 Wind River Systems, Inc.
+#
+# Busybox udhcpc init script
+#
+# script to start the udpchc DHCP client on boots where
+# the parameter 'ip=dhcp' was included in the kernel parameters
+
+# ensure the required binaries are present
+[ -x /sbin/udhcpc ] || exit 1
+[ -x /bin/grep ] || exit 1
+[ -x /bin/mount ] || exit 1
+
+# ensure /proc is mounted
+if ! mount | grep -q "/proc "; then
+	exit 2
+fi
+
+rc=0
+if grep -q -E "\bip=dhcp\b" /proc/cmdline; then
+	/sbin/udhcpc -D -s /usr/share/udhcpc/default.script
+	rc=$?
+fi
+exit $rc
-- 
1.7.3.4


