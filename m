Return-Path: <aalonso00@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4706A4C80039
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:29 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk4 with SMTP id 4so2387299gxk.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer; bh=R2rrG+THYtSj4NzO8j31ePIORyZKhCAL7CEOsmq8bWc=;
	b=pFffQkOL96WXYfMCHRpbuMaypBwQ+oSLnok2awsM3AqC8eRxTXVHyYK1lZTru2AoYb
	9Aigvt5FC5msCErRdTdzOK0NpU7cAodXBY4SOv8ovBSgfEnGnspk2zp+6Trssse+Swtr
	oQC3u906joVFCzIHboRQzRx3gZMYzFfmeFe/g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	b=B9ZnhMz0MTFZCntWuHjvW3kmq273FV6NvNjDbg275m4VjMh3FEk0VJEVtav0c+hmqd
	F2h6MFOIhzqAdIUj5CSJG44yOzumaxfnKY1Wwp+n/YB0rCAIb6jkfVc+QfVcScRJCC88
	ibsdvUtaGdb/SiP2MaJd40g5Bkgduwlb8f9xo=
Received: by 10.100.229.6 with SMTP id b6mr2736554anh.91.1295295808693;
	Mon, 17 Jan 2011 12:23:28 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.25
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:27 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:14 -0600
Message-Id: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 01/25] xilinx-kernel: bbclass to handle linux kernel hw/sw integration
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:29 -0000

* This class handles the Xilinx hardware project
  introinspection for exporting the device-tree blob
  to match hardware/software co-design in Xilinx FPGA's
* xilinx-bsp class delated to split the kernel/u-boot
  hw/sw introinspection in two separate classes for easier
  maintenance

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 classes/xilinx-bsp.bbclass    |  118 -----------------------------------------
 classes/xilinx-kernel.bbclass |   57 ++++++++++++++++++++
 2 files changed, 57 insertions(+), 118 deletions(-)
 delete mode 100644 classes/xilinx-bsp.bbclass
 create mode 100644 classes/xilinx-kernel.bbclass

diff --git a/classes/xilinx-bsp.bbclass b/classes/xilinx-bsp.bbclass
deleted file mode 100644
index ea8e0bf..0000000
--- a/classes/xilinx-bsp.bbclass
+++ /dev/null
@@ -1,118 +0,0 @@
-# Copyright (C) 2007, Stelios Koroneos - Digital OPSiS, All Rights Reserved
-# Copyright (C) 2010, Adrian Alonso <aalonso00@gmail.com>
-# Released under the MIT license (see packages/COPYING)
-#
-#This class handles all the intricasies of getting the required files from the
-#ISE/EDK/project to the kernel and prepare the kernel for compilation.
-#The Xilinx EDK supports 2 different architectures : PowerPC (ppc 405,440) and Microblaze
-#Only the PowerPC BSP has been tested so far
-#For this to work correctly you need to add XILINX_BSP_PATH and XILINX_BOARD to your
-#local.conf
-#XILINX_BSP_PATH should have the complete path to your project dir
-#XILINX_BOARD should have the board type i.e ML403
-#
-#Currently tested on
-#Xilinx ML405
-#Xilinx ML507
-#More to come soon ;)
-
-def map_target(a, d):
-	import re
-	board = bb.data.getVar('XILINX_BOARD', d, 1)
-	cpu = bb.data.getVar('TARGET_CPU', d, 1)
-
-	if re.match('powerpc', a):
-		return 'ppc' + cpu + '-' + board
-	else:
-		return 'system'
-
-def uboot_machine(a, d):
-    import re
-
-    board = bb.data.getVar('XILINX_BOARD', d, 1)
-    if board in ['ml300', 'ml401', 'ml403', 'ml405', 'ml507', 'ml510']:
-        if re.match('powerpc', a):
-            if board == 'ml403':
-                return 'ml401_config'
-            elif board == 'ml510':
-                return 'ml507_config'
-            else:
-                return board + '_config'
-        else:
-            return 'microblaze-generic_config'
-
-def uboot_target(a, d):
-    import re
-
-    board = bb.data.getVar('XILINX_BOARD', d, 1)
-    target = bb.data.getVar('TARGET_CPU', d, 1) + '-generic'
-    if board in ['ml300', 'ml401', 'ml403', 'ml405', 'ml507', 'ml510']:
-        if re.match('powerpc', a):
-            if board == 'ml403':
-                return 'ml401'
-            elif board == 'ml510':
-                return 'ml507'
-            else:
-                return board
-        else:
-            return target
-
-do_configure_prepend() {
-#first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in local.conf
-#now depending on the board type and arch do what is nessesary
-if [ -n "${XILINX_BSP_PATH}" ]; then
-	if [ -n "${XILINX_BOARD}" ]; then
-		if [ -d "${S}/arch/${TARGET_ARCH}/boot" ]; then
-			dts=`find "${XILINX_BSP_PATH}" -name *.dts -print`
-			if [ -e "$dts" ]; then
-				oenote "Replacing device tree to match hardware model"
-				if [ "${TARGET_ARCH}" == "powerpc" ]; then
-					cp -pP ${dts} ${S}/arch/powerpc/boot/dts/virtex${TARGET_BOARD}.dts
-				else
-					cp -pP ${dts} ${S}/arch/microblaze/platform/generic/${TARGET_BOARD}.dts
-				fi
-			else
-				oefatal "No device tree found, missing hardware ref design?"
-				exit 1
-			fi
-		elif [ -d "${S}/board/xilinx" ]; then
-			oenote "Replacing xparameters header to match hardware model"
-			if [ "${TARGET_ARCH}" == "powerpc" ]; then
-				xparam="${XILINX_BSP_PATH}/ppc${TARGET_CPU}_0/include/xparameters.h"
-				cpu="PPC`echo ${TARGET_CPU} | tr '[:lower:]' '[:upper:]'`"
-			else
-				xparam="${XILINX_BSP_PATH}/${TARGET_CPU}_0/include/xparameters.h"
-				cpu=`echo ${TARGET_CPU} | tr '[:lower:]' '[:upper:]'`
-			fi
-			if [ -e "$xparam" ]; then
-				cp ${xparam} ${S}/board/xilinx/${UBOOT_TARGET}
-				echo "/*** Cannonical definitions ***/
-#define XPAR_PLB_CLOCK_FREQ_HZ XPAR_PROC_BUS_0_FREQ_HZ
-#define XPAR_CORE_CLOCK_FREQ_HZ XPAR_CPU_${cpu}_CORE_CLOCK_FREQ_HZ
-#ifndef XPAR_DDR2_SDRAM_MEM_BASEADDR
-# define XPAR_DDR2_SDRAM_MEM_BASEADDR XPAR_DDR_SDRAM_MPMC_BASEADDR
-#endif
-#define XPAR_PCI_0_CLOCK_FREQ_HZ    0" >> ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.h
-			else
-				oefatal "No xparameters header file found, missing hardware ref design?"
-                exit 1
-			fi
-		fi
-	else
-		oefatal "XILINX_BOARD not defined ! Exit"
-		exit 1
-	fi
-else
-	oefatal "XILINX_BSP_PATH not defined ! Exit"
-	exit 1
-fi
-}
-
-do_deploy_prepend() {
-# Install u-boot elf image
-if [ -d "${XILINX_BSP_PATH}" ]; then
-	if [ -e "${S}/u-boot" ]; then
-		install ${S}/u-boot ${XILINX_BSP_PATH}
-	fi
-fi
-}
diff --git a/classes/xilinx-kernel.bbclass b/classes/xilinx-kernel.bbclass
new file mode 100644
index 0000000..decf570
--- /dev/null
+++ b/classes/xilinx-kernel.bbclass
@@ -0,0 +1,57 @@
+# Copyright (C) 2007, Stelios Koroneos - Digital OPSiS, All Rights Reserved
+# Copyright (C) 2010, Adrian Alonso <aalonso00@gmail.com>
+# Released under the MIT license (see packages/COPYING)
+#
+#This class handles all the intricasies of getting the required files from the
+#ISE/EDK/project to the kernel and prepare the kernel for compilation.
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
+def map_target(a, d):
+	import re
+	board = bb.data.getVar('XILINX_BOARD', d, 1)
+	cpu = bb.data.getVar('TARGET_CPU', d, 1)
+
+	if re.match('powerpc', a):
+		return cpu + '-' + board
+	else:
+		return 'system'
+
+
+do_configure_prepend() {
+#first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in local.conf
+#now depending on the board type and arch do what is nessesary
+if [ -n "${XILINX_BSP_PATH}" ]; then
+	if [ -n "${XILINX_BOARD}" ]; then
+		if [ -d "${S}/arch/${TARGET_ARCH}/boot" ]; then
+			dts=`find "${XILINX_BSP_PATH}" -name *.dts -print`
+			if [ -e "$dts" ]; then
+				oenote "Replacing device tree to match hardware model"
+				if [ "${TARGET_ARCH}" == "powerpc" ]; then
+					cp -pP ${dts} ${S}/arch/powerpc/boot/dts/virtex${TARGET_BOARD}.dts
+				else
+					cp -pP ${dts} ${S}/arch/microblaze/platform/generic/${TARGET_BOARD}.dts
+				fi
+			else
+				oefatal "No device tree found, missing hardware ref design?"
+				exit 1
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
-- 
1.7.3.4


