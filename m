Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B1774C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 09:33:54 -0500 (CDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id C8CCE1B10C0D
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 14:43:48 +0000 (UTC)
Message-ID: <4E3021D0.70802@freyther.de>
Date: Wed, 27 Jul 2011 16:33:52 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.1.1
Subject: [PATCH] busybox-udhcpd patches
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
X-List-Received-Date: Wed, 27 Jul 2011 14:33:56 -0000
X-Groupsio-MsgNum: 6812
Content-Type: multipart/mixed; boundary="------------000703050502060109090701"

--------------000703050502060109090701
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

first patch switches busybox to INC_PR, second creates udhcp.leases directory
so udhcpd can start up.

holger

--------------000703050502060109090701
Content-Type: text/x-patch;
 name="0001-busybox-Use-the-INC_PR-scheme-known-from-OE.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-busybox-Use-the-INC_PR-scheme-known-from-OE.patch"

From 947d9e092ee782dd75014823ad2178be88e9b737 Mon Sep 17 00:00:00 2001
From: Holger Hans Peter Freyther <zecke@selfish.org>
Date: Wed, 27 Jul 2011 22:03:09 +0800
Subject: [PATCH 1/3] busybox: Use the INC_PR scheme known from OE

Signed-off-by: Holger Hans Peter Freyther <holger@moiji-mobile.com>
---
 meta/recipes-core/busybox/busybox.inc       |    2 ++
 meta/recipes-core/busybox/busybox_1.18.4.bb |    2 +-
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index 341c5c4..0867f1b 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -3,6 +3,8 @@ DESCRIPTION = "BusyBox combines tiny versions of many common UNIX utilities into
 HOMEPAGE = "http://www.busybox.net"
 BUGTRACKER = "https://bugs.busybox.net/"
 
+INC_PR = "r1"
+
 # bzip2 applet in busybox is based on lightly-modified bzip2 source
 # the GPL is version 2 only
 LICENSE = "GPLv2 & bzip2"
diff --git a/meta/recipes-core/busybox/busybox_1.18.4.bb b/meta/recipes-core/busybox/busybox_1.18.4.bb
index cf37650..c16ebcc 100644
--- a/meta/recipes-core/busybox/busybox_1.18.4.bb
+++ b/meta/recipes-core/busybox/busybox_1.18.4.bb
@@ -1,5 +1,5 @@
 require busybox.inc
-PR = "r1"
+PR = "${INC_PR}.0"
 
 SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://udhcpscript.patch \
-- 
1.7.4.1


--------------000703050502060109090701
Content-Type: text/x-patch;
 name="0002-busybox-udhcpd-wants-to-write-to-this-directory-crea.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0002-busybox-udhcpd-wants-to-write-to-this-directory-crea.pa";
 filename*1="tch"

From f79816d6f4284111efd07c88dc1889299874cdc6 Mon Sep 17 00:00:00 2001
From: Holger Hans Peter Freyther <zecke@selfish.org>
Date: Wed, 27 Jul 2011 22:03:40 +0800
Subject: [PATCH 2/3] busybox: udhcpd wants to write to this directory, create it

Create the ${D}${localstatedir}/lib/misc/udhcpd.leases directory

Signed-off-by: Holger Hans Peter Freyther <holger@moiji-mobile.com>
---
 meta/recipes-core/busybox/busybox.inc |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index 0867f1b..53f2d0d 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -3,7 +3,7 @@ DESCRIPTION = "BusyBox combines tiny versions of many common UNIX utilities into
 HOMEPAGE = "http://www.busybox.net"
 BUGTRACKER = "https://bugs.busybox.net/"
 
-INC_PR = "r1"
+INC_PR = "r4"
 
 # bzip2 applet in busybox is based on lightly-modified bzip2 source
 # the GPL is version 2 only
@@ -19,7 +19,7 @@ PACKAGES =+ "${PN}-httpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog ${PN}-mdev"
 FILES_${PN}-httpd = "${sysconfdir}/init.d/busybox-httpd /srv/www"
 FILES_${PN}-syslog = "${sysconfdir}/init.d/syslog* ${sysconfdir}/syslog.conf*"
 FILES_${PN}-mdev = "${sysconfdir}/init.d/mdev ${sysconfdir}/mdev.conf"
-FILES_${PN}-udhcpd = "${sysconfdir}/init.d/busybox-udhcpd"
+FILES_${PN}-udhcpd = "${sysconfdir}/init.d/busybox-udhcpd ${localstatedir}/lib/misc/udhcpd.leases"
 FILES_${PN}-udhcpc = "${sysconfdir}/udhcpc.d ${datadir}/udhcpc ${sysconfdir}/init.d/busybox-udhcpc"
 
 INITSCRIPT_PACKAGES = "${PN}-httpd ${PN}-syslog ${PN}-udhcpd ${PN}-udhcpc ${PN}-mdev"
@@ -87,6 +87,7 @@ do_install () {
 		mv ${D}/busybox${sbindir}/udhcpd ${D}${sbindir}/
 
 		install -m 0755 ${WORKDIR}/busybox-udhcpd ${D}${sysconfdir}/init.d/
+		install -d ${D}${localstatedir}/lib/misc/udhcpd.leases
 	fi
 	if grep "CONFIG_HWCLOCK=y" ${WORKDIR}/defconfig; then
 		# Move hwclock back to /sbin/hwclock
-- 
1.7.4.1


--------------000703050502060109090701--
