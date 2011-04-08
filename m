Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0D024C80579
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 10:05:08 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5E9B01660596; Fri,  8 Apr 2011 09:05:08 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6FD3D1660362;
	Fri,  8 Apr 2011 09:05:07 -0600 (MDT)
Message-ID: <4D9F2423.7060900@mlbassoc.com>
Date: Fri, 08 Apr 2011 09:05:07 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH] Control over when package init scripts are run
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
X-List-Received-Date: Fri, 08 Apr 2011 15:05:09 -0000
X-Groupsio-MsgNum: 5214
Content-Type: multipart/mixed; boundary="------------070700030802010106080909"

--------------070700030802010106080909
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The script /etc/rcS.d/S98configure is run on the first boot only
to process any postponed package post-install scripts.  The default
position of this (98 == last) can be wrong, so let the distribution
set this (just a matter of ?= assignment).  This patch also removes
some slugos stuff and extends the flexibility to systems which use
RPM packaging as well.

Tested on my PowerPC router, running as S00configure - works a treat.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------070700030802010106080909
Content-Type: text/x-patch;
 name="0001-Allow-target-distribution-to-specify-when-to-run-pac.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Allow-target-distribution-to-specify-when-to-run-pac.pa";
 filename*1="tch"

From cec0432ca3e02a05519d22042434f0c6fc285f37 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 8 Apr 2011 08:59:18 -0600
Subject: [PATCH] Allow target/distribution to specify when to run package init scripts (first boot only)

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/rootfs_rpm.bbclass          |   11 ++++++++---
 meta/recipes-devtools/opkg/opkg_0.1.8.bb |    5 ++---
 meta/recipes-devtools/opkg/opkg_svn.bb   |    5 ++---
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 04ccabd..073bb84 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -26,6 +26,11 @@ RPM_POSTPROCESS_COMMANDS = ""
 #
 #IMAGE_LOCALES="en-gb"
 
+# 
+# Allow distributions to alter when [postponed] package install scripts are run
+#
+RPM_INIT_POSITION ?= "98"
+
 rpmlibdir = "/var/lib/rpm"
 opkglibdir = "${localstatedir}/lib/opkg"
 
@@ -116,7 +121,7 @@ EOF
 	install -d ${IMAGE_ROOTFS}/${sysconfdir}/rcS.d
 	# Stop $i getting expanded below...
 	i=\$i
-	cat > ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S98configure << EOF
+	cat > ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S${RPM_INIT_POSITION}configure << EOF
 #!/bin/sh
 for i in /etc/rpm-postinsts/*.sh; do
 	echo "Running postinst $i..."
@@ -127,9 +132,9 @@ for i in /etc/rpm-postinsts/*.sh; do
 		echo "ERROR: postinst $i failed."
 	fi
 done
-rm -f ${sysconfdir}/rcS.d/S98configure
+rm -f ${sysconfdir}/rcS.d/S${RPM_INIT_POSITION}configure
 EOF
-	chmod 0755 ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S98configure
+	chmod 0755 ${IMAGE_ROOTFS}${sysconfdir}/rcS.d/S${RPM_INIT_POSITION}configure
 
 	install -d ${IMAGE_ROOTFS}/${sysconfdir}
 	echo ${BUILDNAME} > ${IMAGE_ROOTFS}/${sysconfdir}/version
diff --git a/meta/recipes-devtools/opkg/opkg_0.1.8.bb b/meta/recipes-devtools/opkg/opkg_0.1.8.bb
index 6815474..a732def 100644
--- a/meta/recipes-devtools/opkg/opkg_0.1.8.bb
+++ b/meta/recipes-devtools/opkg/opkg_0.1.8.bb
@@ -13,7 +13,7 @@ SRC_URI = "http://opkg.googlecode.com/files/opkg-${PV}.tar.gz \
            file://headerfix.patch \
 "
 
-PR = "r3"
+PR = "r4"
 
 PACKAGES =+ "libopkg${PKGSUFFIX}-dev libopkg${PKGSUFFIX} update-alternatives-cworth${PKGSUFFIX}"
 
@@ -28,8 +28,7 @@ do_install_append() {
 
 # Define a variable to allow distros to run configure earlier.
 # (for example, to enable loading of ethernet kernel modules before networking starts)
-OPKG_INIT_POSITION = "98"
-OPKG_INIT_POSITION_slugos = "41"
+OPKG_INIT_POSITION ?= "98"
 
 pkg_postinst_${PN} () {
 #!/bin/sh
diff --git a/meta/recipes-devtools/opkg/opkg_svn.bb b/meta/recipes-devtools/opkg/opkg_svn.bb
index 76ec838..8bc9793 100644
--- a/meta/recipes-devtools/opkg/opkg_svn.bb
+++ b/meta/recipes-devtools/opkg/opkg_svn.bb
@@ -16,7 +16,7 @@ SRC_URI = "svn://opkg.googlecode.com/svn;module=trunk;proto=http \
 S = "${WORKDIR}/trunk"
 
 PV = "0.1.8+svnr${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 PACKAGES =+ "libopkg${PKGSUFFIX}-dev libopkg${PKGSUFFIX} update-alternatives-cworth${PKGSUFFIX}"
 
@@ -31,8 +31,7 @@ do_install_append() {
 
 # Define a variable to allow distros to run configure earlier.
 # (for example, to enable loading of ethernet kernel modules before networking starts)
-OPKG_INIT_POSITION = "98"
-OPKG_INIT_POSITION_slugos = "41"
+OPKG_INIT_POSITION ?= "98"
 
 pkg_postinst_${PN} () {
 #!/bin/sh
-- 
1.7.3.4


--------------070700030802010106080909--
