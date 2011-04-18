Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 149754C800A2
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 09:23:33 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id CE1AE16602D2; Mon, 18 Apr 2011 08:23:32 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8EB9D16602BA;
	Mon, 18 Apr 2011 08:23:27 -0600 (MDT)
Message-ID: <4DAC495F.2040406@mlbassoc.com>
Date: Mon, 18 Apr 2011 08:23:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH v2] Control over when package init scripts are run
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
X-List-Received-Date: Mon, 18 Apr 2011 14:23:33 -0000
X-Groupsio-MsgNum: 5378
Content-Type: multipart/mixed; boundary="------------040008010008080505060007"

--------------040008010008080505060007
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

When a package is built, some installation scripts must be
performed on the target.  In the case of a complete image,
these scripts are run by a separate step at init time, but
only during the first boot (other package install scripts
can just be run when the package is installed on the target).

This patch lets the distribution (or user) decide when these
postponed install scripts should run.  The default is normally
near the end of init, but there may be times when it's beneficial
to run them earlier so the "when" can be overridden.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------040008010008080505060007
Content-Type: text/x-patch;
 name="0001-Control-over-when-package-init-scripts-are-run.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Control-over-when-package-init-scripts-are-run.patch"

From c0996c57cd3a6c87e277272058057b7d2212038a Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 18 Apr 2011 08:17:26 -0600
Subject: [PATCH] Control over when package init scripts are run

When a package is built, some installation scripts must be
performed on the target.  In the case of a complete image,
these scripts are run by a separate step at init time, but
only during the first boot (other package install scripts 
can just be run when the package is installed on the target).

This patch lets the distribution (or user) decide when these
postponed install scripts should run.  The default is normally
near the end of init, but there may be times when it's beneficial
to run them earlier so the "when" can be overridden.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/rootfs_rpm.bbclass          |   11 ++++++++---
 meta/recipes-devtools/opkg/opkg.inc      |    4 ++++
 meta/recipes-devtools/opkg/opkg_0.1.8.bb |   13 ++++---------
 meta/recipes-devtools/opkg/opkg_svn.bb   |   13 ++++---------
 4 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 04ccabd..887b894 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -26,6 +26,11 @@ RPM_POSTPROCESS_COMMANDS = ""
 #
 #IMAGE_LOCALES="en-gb"
 
+# 
+# Allow distributions to alter when [postponed] package install scripts are run
+#
+POSTINSTALL_INITPOSITION ?= "98"
+
 rpmlibdir = "/var/lib/rpm"
 opkglibdir = "${localstatedir}/lib/opkg"
 
@@ -116,7 +121,7 @@ EOF
 	install -d ${IMAGE_ROOTFS}/${sysconfdir}/rcS.d
 	# Stop $i getting expanded below...
 	i=\$i
-	cat > ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S98configure << EOF
+	cat > ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure << EOF
 #!/bin/sh
 for i in /etc/rpm-postinsts/*.sh; do
 	echo "Running postinst $i..."
@@ -127,9 +132,9 @@ for i in /etc/rpm-postinsts/*.sh; do
 		echo "ERROR: postinst $i failed."
 	fi
 done
-rm -f ${sysconfdir}/rcS.d/S98configure
+rm -f ${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
 EOF
-	chmod 0755 ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S98configure
+	chmod 0755 ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
 
 	install -d ${IMAGE_ROOTFS}/${sysconfdir}
 	echo ${BUILDNAME} > ${IMAGE_ROOTFS}/${sysconfdir}/version
diff --git a/meta/recipes-devtools/opkg/opkg.inc b/meta/recipes-devtools/opkg/opkg.inc
index c317491..50f1afc 100644
--- a/meta/recipes-devtools/opkg/opkg.inc
+++ b/meta/recipes-devtools/opkg/opkg.inc
@@ -34,3 +34,7 @@ BBCLASSEXTEND = "native nativesdk"
 
 PKGSUFFIX = ""
 PKGSUFFIX_virtclass-nativesdk = "-nativesdk"
+
+# Define a variable to allow distros to run configure earlier.
+# (for example, to enable loading of ethernet kernel modules before networking starts)
+POSTINSTALL_INITPOSITION ?= "98"
diff --git a/meta/recipes-devtools/opkg/opkg_0.1.8.bb b/meta/recipes-devtools/opkg/opkg_0.1.8.bb
index 6815474..18cf042 100644
--- a/meta/recipes-devtools/opkg/opkg_0.1.8.bb
+++ b/meta/recipes-devtools/opkg/opkg_0.1.8.bb
@@ -13,7 +13,7 @@ SRC_URI = "http://opkg.googlecode.com/files/opkg-${PV}.tar.gz \
            file://headerfix.patch \
 "
 
-PR = "r3"
+PR = "r4"
 
 PACKAGES =+ "libopkg${PKGSUFFIX}-dev libopkg${PKGSUFFIX} update-alternatives-cworth${PKGSUFFIX}"
 
@@ -26,11 +26,6 @@ do_install_append() {
 	install -d ${D}${localstatedir}/lib/opkg
 }
 
-# Define a variable to allow distros to run configure earlier.
-# (for example, to enable loading of ethernet kernel modules before networking starts)
-OPKG_INIT_POSITION = "98"
-OPKG_INIT_POSITION_slugos = "41"
-
 pkg_postinst_${PN} () {
 #!/bin/sh
 if [ "x$D" != "x" ]; then
@@ -38,9 +33,9 @@ if [ "x$D" != "x" ]; then
 	# this happens at S98 where our good 'ole packages script used to run
 	echo "#!/bin/sh
 opkg-cl configure
-rm -f /${sysconfdir}/rcS.d/S${OPKG_INIT_POSITION}configure
-" > $D${sysconfdir}/rcS.d/S${OPKG_INIT_POSITION}configure
-	chmod 0755 $D${sysconfdir}/rcS.d/S${OPKG_INIT_POSITION}configure
+rm -f /${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
+" > $D${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
+	chmod 0755 $D${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
 fi
 
 update-alternatives --install ${bindir}/opkg opkg ${bindir}/opkg-cl 100
diff --git a/meta/recipes-devtools/opkg/opkg_svn.bb b/meta/recipes-devtools/opkg/opkg_svn.bb
index 76ec838..d8af823 100644
--- a/meta/recipes-devtools/opkg/opkg_svn.bb
+++ b/meta/recipes-devtools/opkg/opkg_svn.bb
@@ -16,7 +16,7 @@ SRC_URI = "svn://opkg.googlecode.com/svn;module=trunk;proto=http \
 S = "${WORKDIR}/trunk"
 
 PV = "0.1.8+svnr${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 PACKAGES =+ "libopkg${PKGSUFFIX}-dev libopkg${PKGSUFFIX} update-alternatives-cworth${PKGSUFFIX}"
 
@@ -29,11 +29,6 @@ do_install_append() {
 	install -d ${D}${localstatedir}/lib/opkg
 }
 
-# Define a variable to allow distros to run configure earlier.
-# (for example, to enable loading of ethernet kernel modules before networking starts)
-OPKG_INIT_POSITION = "98"
-OPKG_INIT_POSITION_slugos = "41"
-
 pkg_postinst_${PN} () {
 #!/bin/sh
 if [ "x$D" != "x" ]; then
@@ -41,9 +36,9 @@ if [ "x$D" != "x" ]; then
 	# this happens at S98 where our good 'ole packages script used to run
 	echo "#!/bin/sh
 opkg-cl configure
-rm -f /${sysconfdir}/rcS.d/S${OPKG_INIT_POSITION}configure
-" > $D${sysconfdir}/rcS.d/S${OPKG_INIT_POSITION}configure
-	chmod 0755 $D${sysconfdir}/rcS.d/S${OPKG_INIT_POSITION}configure
+rm -f /${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
+" > $D${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
+	chmod 0755 $D${sysconfdir}/rcS.d/S${POSTINSTALL_INITPOSITION}configure
 fi
 
 update-alternatives --install ${bindir}/opkg opkg ${bindir}/opkg-cl 100
-- 
1.7.3.4


--------------040008010008080505060007--
