Return-Path: <fw@javox-solutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2148FE009B9; Fri, 17 Mar 2017 08:42:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.67.31.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 491 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Mar 2017 08:42:09 PDT
Received: from smtprelay05.ispgateway.de (smtprelay05.ispgateway.de
	[80.67.31.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0348E0097C
	for <poky@yoctoproject.org>; Fri, 17 Mar 2017 08:42:09 -0700 (PDT)
Received: from [87.79.86.159] (helo=javoxdev2.fritz.box)
	by smtprelay05.ispgateway.de with esmtpa (Exim 4.84)
	(envelope-from <fw@javox-solutions.com>)
	id 1cott7-000141-15; Fri, 17 Mar 2017 16:33:57 +0100
From: Florian Wickert <fw@javox-solutions.com>
To: poky@yoctoproject.org
Date: Fri, 17 Mar 2017 16:33:03 +0100
Message-Id: <1489764783-11522-1-git-send-email-fw@javox-solutions.com>
X-Mailer: git-send-email 2.1.4
X-Df-Sender: ZndAamF2b3gtc29sdXRpb25zLmNvbQ==
Subject: [PATCH] kernel-fitimage: dtb sections named by their filenames and one config section for each dtb
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
X-List-Received-Date: Fri, 17 Mar 2017 15:42:13 -0000

Before this, dtb sections were named by their position index in KERNEL_DEVICETREE. Also there was only one item in the config section, so only the first dtb was seen by the bootloader.
This patch adds a config section for each dtb named by the dtb filename. This is what bootloaders usually know about the machine they run on.

Signed-off-by: Florian Wickert <fw@javox-solutions.com>
---
 meta/classes/kernel-fitimage.bbclass | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/meta/classes/kernel-fitimage.bbclass b/meta/classes/kernel-fitimage.bbclass
index 1c3b4b7..9c998cc 100644
--- a/meta/classes/kernel-fitimage.bbclass
+++ b/meta/classes/kernel-fitimage.bbclass
@@ -229,9 +229,10 @@ EOF
 #
 # $1 ... .its filename
 # $2 ... Linux kernel ID
-# $3 ... DTB image ID
+# $3 ... DTB image name
 # $4 ... ramdisk ID
 # $5 ... config ID
+# $6 ... default flag
 fitimage_emit_section_config() {
 
 	conf_csum="sha1"
@@ -244,6 +245,8 @@ fitimage_emit_section_config() {
 	kernel_line="kernel = \"kernel@${2}\";"
 	fdt_line=""
 	ramdisk_line=""
+	setup_line=""
+	default_line=""
 
 	if [ -n "${3}" ]; then
 		conf_desc="${conf_desc}, FDT blob"
@@ -260,10 +263,14 @@ fitimage_emit_section_config() {
 		setup_line="setup = \"setup@${5}\";"
 	fi
 
+	if [ "${6}" = "1" ]; then
+		default_line="default = \"conf@${3}\";"
+	fi
+
 	cat << EOF >> ${1}
-                default = "conf@1";
-                conf@1 {
-                        description = "${conf_desc}";
+                ${default_line}
+                conf@${3} {
+			description = "${6} ${conf_desc}";
 			${kernel_line}
 			${fdt_line}
 			${ramdisk_line}
@@ -314,6 +321,7 @@ EOF
 fitimage_assemble() {
 	kernelcount=1
 	dtbcount=""
+	DTBS=""
 	ramdiskcount=${3}
 	setupcount=""
 	rm -f ${1} arch/${ARCH}/boot/${2}
@@ -343,8 +351,8 @@ fitimage_assemble() {
 				DTB_PATH="arch/${ARCH}/boot/${DTB}"
 			fi
 
-			fitimage_emit_section_dtb ${1} ${dtbcount} ${DTB_PATH}
-			dtbcount=`expr ${dtbcount} + 1`
+			DTBS="${DTBS} ${DTB}"
+			fitimage_emit_section_dtb ${1} ${DTB} ${DTB_PATH}
 		done
 	fi
 
@@ -384,7 +392,13 @@ fitimage_assemble() {
 	#
 	fitimage_emit_section_maint ${1} confstart
 
-	fitimage_emit_section_config ${1} "${kernelcount}" "${dtbcount}" "${ramdiskcount}" "${setupcount}"
+	if test -n "${DTBS}"; then
+		i=1
+		for DTB in ${DTBS}; do
+			fitimage_emit_section_config ${1} "${kernelcount}" "${DTB}" "${ramdiskcount}" "${setupcount}" "`expr ${i} = ${dtbcount}`"
+			i=`expr ${i} + 1`
+		done
+	fi
 
 	fitimage_emit_section_maint ${1} sectend
 
-- 
2.1.4


