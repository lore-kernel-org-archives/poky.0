Return-Path: <aalonso00@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 287344C81199
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo7 with SMTP id 7so2084365ywo.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=tm7lM0CZg/3NCKuDEg2kAAz++o9DpW7HAu7LM3oNBRI=;
	b=gy3xFVac09A5z4btvKSrWIg2quBexexUBdqNGMqsgv7xY6kp8d8wPquc05Bjve1SeJ
	EnEd9SdEF9+T/ATR8pBVv7+l6+mLylM4Q2fecyateYpd+DbrCthQn5+/JSS9AzXOKJR2
	4h2lF4VVROOl0vjfVQMnAbMW/40bmTt/WOWKQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=EXeERyNw8RwRpT04fWBznKqYBZr9rxEiXL0M5irvl5QaCa4Il3vIl1yEJ6WpHwEAUP
	V5hXqETVNuIpCRHAw8CFgdSi0+kNXsTQc2dLZpemMeO7SmQ0GLQywlALXjmC4MN4+1+C
	5UWXspmC3mqSt4hgS+YPGDihzo10WzaNZgjOk=
Received: by 10.101.194.7 with SMTP id w7mr2825054anp.128.1295295811600;
	Mon, 17 Jan 2011 12:23:31 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.28
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:30 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:15 -0600
Message-Id: <1295296178-18590-2-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 02/25] xilinx-boot: bbclass to handle u-boot hw/sw integration
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:32 -0000

* xilinx-boot handles the hw/sw codesign integration
  from Xilinx XPS hardware project importing from hw
  project the 'xparameters' header; file used in u-boot
  to find platform attributes
* Simplify the configure target options for several
  Xilinx target boards using u-boot generic support
  for similar targets
* Only tested on ml405, ml507 targets

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 classes/xilinx-boot.bbclass |   90 +++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 90 insertions(+), 0 deletions(-)
 create mode 100644 classes/xilinx-boot.bbclass

diff --git a/classes/xilinx-boot.bbclass b/classes/xilinx-boot.bbclass
new file mode 100644
index 0000000..03b4512
--- /dev/null
+++ b/classes/xilinx-boot.bbclass
@@ -0,0 +1,90 @@
+# Copyright (C) 2007, Stelios Koroneos - Digital OPSiS, All Rights Reserved
+# Copyright (C) 2010, Adrian Alonso <aalonso00@gmail.com>
+# Released under the MIT license (see packages/COPYING)
+#
+#This class handles all the intricasies of getting the required files from the
+#ISE/EDK/project to the kernel and prepare u-boot bootloader for compilation.
+#The Xilinx EDK supports 2 different architectures : PowerPC (ppc 405,440) and Microblaze
+#Only the PowerPC BSP has been tested so far
+#For this to work correctly you need to add XILINX_BSP_PATH and XILINX_BOARD to your
+#local.conf
+#XILINX_BSP_PATH should have the complete path to your project dir
+#XILINX_BOARD should have the board type i.e ML403
+#
+#Currently tested on
+#Xilinx ML405
+#Xilinx ML507
+#More to come soon ;)
+
+def uboot_machine(a, d):
+    import re
+
+    board = bb.data.getVar('XILINX_BOARD', d, 1)
+    target = bb.data.getVar('TARGET_CPU', d, 1)
+    if re.match('powerpc', a):
+        if board == 'ml507':
+            return 'ml507_config'
+        else:
+            return 'xilinx-ppc' + target + '-generic_config'
+    else:
+        return 'microblaze-generic_config'
+
+def uboot_target(a, d):
+    import re
+
+    board = bb.data.getVar('XILINX_BOARD', d, 1)
+    target = bb.data.getVar('TARGET_CPU', d, 1) + '-generic'
+    if re.match('powerpc', a):
+        if board == 'ml507':
+            return 'ml507'
+        else:
+            return 'ppc' + target
+    else:
+        return target
+
+do_configure_prepend() {
+#first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in local.conf
+#now depending on the board type and arch do what is nessesary
+if [ -n "${XILINX_BSP_PATH}" ]; then
+	if [ -n "${XILINX_BOARD}" ]; then
+		if [ -d "${S}/board/xilinx" ]; then
+			oenote "Replacing xparameters header to match hardware model"
+			if [ "${TARGET_ARCH}" == "powerpc" ]; then
+				xparam="${XILINX_BSP_PATH}/ppc${TARGET_CPU}_0/include/xparameters.h"
+				cpu="PPC`echo ${TARGET_CPU} | tr '[:lower:]' '[:upper:]'`"
+			else
+				xparam="${XILINX_BSP_PATH}/${TARGET_CPU}_0/include/xparameters.h"
+				cpu=`echo ${TARGET_CPU} | tr '[:lower:]' '[:upper:]'`
+			fi
+			if [ -e "$xparam" ]; then
+				cp ${xparam} ${S}/board/xilinx/${UBOOT_TARGET}
+				echo "/*** Cannonical definitions ***/
+#define XPAR_PLB_CLOCK_FREQ_HZ XPAR_PROC_BUS_0_FREQ_HZ
+#define XPAR_CORE_CLOCK_FREQ_HZ XPAR_CPU_${cpu}_CORE_CLOCK_FREQ_HZ
+#ifndef XPAR_DDR2_SDRAM_MEM_BASEADDR
+# define XPAR_DDR2_SDRAM_MEM_BASEADDR XPAR_DDR_SDRAM_MPMC_BASEADDR
+#endif
+#define XPAR_PCI_0_CLOCK_FREQ_HZ    0" >> ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.h
+			else
+				oefatal "No xparameters header file found, missing hardware ref design?"
+                exit 1
+			fi
+		fi
+	else
+		oefatal "XILINX_BOARD not defined ! Exit"
+		exit 1
+	fi
+else
+	oefatal "XILINX_BSP_PATH not defined ! Exit"
+	exit 1
+fi
+}
+
+do_deploy_prepend() {
+# Install u-boot elf image
+if [ -d "${XILINX_BSP_PATH}" ]; then
+	if [ -e "${S}/u-boot" ]; then
+		install ${S}/u-boot ${XILINX_BSP_PATH}
+	fi
+fi
+}
-- 
1.7.3.4


