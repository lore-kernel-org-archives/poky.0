Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 156724C800AB
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 14:29:20 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BKTGA6018378;
	Fri, 11 Feb 2011 12:29:19 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:29:17 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:29:16 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 14:26:47 -0600
Message-Id: <036ec84d411be6ee4d2bb2bf4c0fd2cb5c811cf7.1297455890.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297455890.git.mark.hatle@windriver.com>
References: <cover.1297455890.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297455890.git.mark.hatle@windriver.com>
References: <cover.1297455890.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 11 Feb 2011 20:29:17.0093 (UTC)
	FILETIME=[5ACBBD50:01CBCA2A]
Subject: [PATCH 1/1] busybox: Rework busybox to fix limitations in initscripts
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
X-List-Received-Date: Fri, 11 Feb 2011 20:29:20 -0000

A recent busybox change added a "second" initscript to the main busybox
package.  This however is not supported by the update-rc.d.bbclass.
Instead we split the package so that each initscript gets it's own split.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-core/busybox/busybox.inc |   21 ++++++++++++++-------
 1 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index 55f056c..9f2d64c 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -12,22 +12,25 @@ SECTION = "base"
 PRIORITY = "required"
 
 export EXTRA_CFLAGS = "${CFLAGS}"
-PACKAGES =+ "${PN}-httpd ${PN}-udhcpd"
+PACKAGES =+ "${PN}-httpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog"
 
 FILES_${PN}-httpd = "${sysconfdir}/init.d/busybox-httpd /srv/www"
+FILES_${PN}-syslog = "${sysconfdir}/init.d/syslog* ${sysconfdir}/syslog.conf*"
 FILES_${PN}-udhcpd = "${sysconfdir}/init.d/busybox-udhcpd"
+FILES_${PN}-udhcpc = "${sysconfdir}/udhcpc.d ${datadir}/udhcpc ${sysconfdir}/init.d/busybox-udhcpc"
 
-FILES_${PN} += "${datadir}/udhcpc"
-FILES_${PN} += "${sysconfdir}/init.d/busybox-udhcpc"
+INITSCRIPT_PACKAGES = "${PN}-httpd ${PN}-syslog ${PN}-udhcpd ${PN}-udhcpc"
 
-INITSCRIPT_PACKAGES = "${PN} ${PN}-httpd ${PN}-udhcpd"
 INITSCRIPT_NAME_${PN}-httpd = "busybox-httpd"
+INITSCRIPT_NAME_${PN}-syslog = "syslog"
 INITSCRIPT_NAME_${PN}-udhcpd = "busybox-udhcpd" 
-INITSCRIPT_NAME_${PN} = "syslog busybox-udhcpc"
-CONFFILES_${PN} = "${sysconfdir}/syslog.conf.${PN}"
+INITSCRIPT_NAME_${PN}-udhcpc = "busybox-udhcpc" 
+CONFFILES_${PN}-syslog = "${sysconfdir}/syslog.conf.${PN}"
+
+RRECOMMENDS_${PN} = "${PN}-syslog ${PN}-udhcpc"
 
 # This disables the syslog startup links in slugos (see slugos-init)
-INITSCRIPT_PARAMS_${PN}_slugos = "start 20 ."
+INITSCRIPT_PARAMS_${PN}-syslog_slugos = "start 20 ."
 
 inherit cml1 update-rc.d
 
@@ -116,7 +119,9 @@ pkg_postinst_${PN} () {
 	
 	# This adds the links, remember that this has to work when building an image too, hence the $D
 	while read link; do case "$link" in /*/*/*) to="../../bin/busybox";; /bin/*) to="busybox";; /*/*) to="../bin/busybox";; esac; bn=`basename $link`; update-alternatives --install $link $bn $to 50; done <$D/etc/busybox.links
+}
 
+pkg_postinst_${PN}-syslog () {
 	update-alternatives --install ${sysconfdir}/init.d/syslog syslog-init syslog.${PN} 50
 	update-alternatives --install ${sysconfdir}/syslog.conf syslog-conf syslog.conf.${PN} 50
 }
@@ -150,7 +155,9 @@ pkg_prerm_${PN} () {
 		bn=`basename $link`
 		sh /usr/bin/update-alternatives --remove $bn $to
 	done </etc/busybox.links
+}
 
+pkg_prerm_${PN}-syslog () {
 	# remove syslog
 	if test "x$D" = "x"; then
 		if test "$1" = "upgrade" -o "$1" = "remove"; then
-- 
1.7.3.4


