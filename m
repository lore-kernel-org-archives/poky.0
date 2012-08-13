Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39203E00718
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:26 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id DC0AD3042F
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:18 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:47 -0700
Message-Id: <47eaa4d71452769dea26e8536bd33941d8264bf2.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: DC0AD3042F.E7C03
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 21/57] sysvinit-inittab_2.88dsf.bb: Allow multiple serial port consoles to be defined
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:26 -0000

From: Matthew McClintock <msm@freescale.com>

Set SERIAL_CONSOLES if you want to define multiple serial consoles, also if
you need to check for the presence of the serial consoles you can also define
SERIAL_CONSOLES_CHECK to determine if these are present when you boot. This
will prevent error message that pop up when the serial port is not present.

SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1 115200;ttyEHV0"
SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"

The above lines in machine.conf or elsewhere will have the effect of having
two serial consoles and removing any that are not present at boot

(From OE-Core rev: eecd65f188ba2c924626b7e1bf5c8e2eb51e9b59)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../sysvinit/sysvinit-inittab_2.88dsf.bb           |   22 ++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb b/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb
index 9bd087c..1089edb 100644
--- a/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb
+++ b/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Inittab for sysvinit"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
-PR = "r6"
+PR = "r7"
 
 SRC_URI = "file://inittab"
 
@@ -26,7 +26,8 @@ do_install() {
     for i in $tmp
     do
 	j=`echo ${i} | sed s/\;/\ /g`
-        echo "${idx}:2345:respawn:${base_sbindir}/getty ${j}" >> ${D}${sysconfdir}/inittab
+	echo "${idx}:12345:respawn:${base_sbindir}/getty ${j}" >> ${D}${sysconfdir}/inittab
+
 	idx=`expr $idx + 1`
     done
 
@@ -51,6 +52,23 @@ EOF
     fi
 }
 
+pkg_postinst_${PN} () {
+# run this on the target
+if [ "x$D" == "x" ]; then
+	tmp="${SERIAL_CONSOLES_CHECK}"
+	for i in $tmp
+	do
+		j=`echo ${i} | sed s/^.*\;//g`
+		if [ -z "`cat /proc/consoles | grep ${j}`" ]; then
+			sed -i /^.*${j}$/d /etc/inittab
+		fi
+	done
+	kill -HUP 1
+else
+	exit 1
+fi
+}
+
 # USE_VT and SERIAL_CONSOLE are generally defined by the MACHINE .conf.
 # Set PACKAGE_ARCH appropriately.
 PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
1.7.9.5


