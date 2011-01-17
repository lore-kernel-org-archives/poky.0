Return-Path: <aalonso00@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA6694C81207
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 4so2387299gxk.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=S9QnzrIzeH9bclsDxk/yYV+LWy/EsbCCE9ygJEQa+yU=;
	b=pt1Vh4L8xpHPGVqpcEipfalJTB35m05/QCyI9VeD8dGJM6CX+g0ZtgnUaXUUfFsWCh
	wb9uoh4FZk2NHr/+5LfVv5hMCW3HxCBqPkPh0L873fdWRIUcYDivuwY+N5BS6sFm2j0t
	TdtMJAFzLtMiinGqkkYNLrTlOacwWTw2B7U4g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=aO52KNINYyQQuXUk7mhvS0Cq7nfB2xZdzq7pg36pvc6kZ0PSsv+iTk+5P70DS0R9r1
	U+GbnzZPefh9xk9pCBODy4iqlJdSkc7p60FlELSTzF6v6L55qNSS22DYonrHQZwkIavQ
	JwphKX0H7UiMVOC92FCxQ03OIASb4qYd1xKOM=
Received: by 10.100.10.13 with SMTP id 13mr2780181anj.116.1295295833815;
	Mon, 17 Jan 2011 12:23:53 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.51
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:53 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:23 -0600
Message-Id: <1295296178-18590-10-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 10/25] xilinx-boot: split configure function
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:54 -0000

* Split configure_prepend function
* New do_export_xparam function handles the export process
  of xparameter header file from hardware project directory
  to u-boot source code

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 classes/xilinx-boot.bbclass |   49 +++++++++++++++++++++++-------------------
 1 files changed, 27 insertions(+), 22 deletions(-)

diff --git a/classes/xilinx-boot.bbclass b/classes/xilinx-boot.bbclass
index 524ae01..501734d 100644
--- a/classes/xilinx-boot.bbclass
+++ b/classes/xilinx-boot.bbclass
@@ -46,34 +46,39 @@ def uboot_target(a, d):
     else:
         return target
 
-do_configure_prepend() {
-#first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in local.conf
-#now depending on the board type and arch do what is nessesary
-if [ -n "${XILINX_BSP_PATH}" ]; then
-	if [ -n "${XILINX_BOARD}" ]; then
-		if [ -d "${S}/board/xilinx" ]; then
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
+
+do_export_xparam() {
+oenote "Replacing xparameters header to match hardware model"
+if [ "${TARGET_ARCH}" == "powerpc" ]; then
+	xparam="${XILINX_BSP_PATH}/ppc${TARGET_CPU}_0/include/xparameters.h"
+	cpu="PPC`echo ${TARGET_CPU} | tr '[:lower:]' '[:upper:]'`"
+else
+	xparam="${XILINX_BSP_PATH}/${TARGET_CPU}_0/include/xparameters.h"
+	cpu=`echo ${TARGET_CPU} | tr '[:lower:]' '[:upper:]'`
+fi
+if [ -e "$xparam" ]; then
+	cp ${xparam} ${S}/board/xilinx/${UBOOT_TARGET}
+	echo "/*** Cannonical definitions ***/
 #define XPAR_PLB_CLOCK_FREQ_HZ XPAR_PROC_BUS_0_FREQ_HZ
 #define XPAR_CORE_CLOCK_FREQ_HZ XPAR_CPU_${cpu}_CORE_CLOCK_FREQ_HZ
 #ifndef XPAR_DDR2_SDRAM_MEM_BASEADDR
 # define XPAR_DDR2_SDRAM_MEM_BASEADDR XPAR_DDR_SDRAM_MPMC_BASEADDR
 #endif
 #define XPAR_PCI_0_CLOCK_FREQ_HZ    0" >> ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.h
-			else
-				oefatal "No xparameters header file found, missing hardware ref design?"
-                exit 1
-			fi
-		fi
+else
+    oefatal "No xparameters header file found, missing hardware ref design?"
+    exit 1
+fi
+}
+
+do_configure_prepend() {
+#first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in local.conf
+#now depending on the board type and arch do what is nessesary
+if [ -n "${XILINX_BSP_PATH}" ]; then
+	if [ -n "${XILINX_BOARD}" ]; then
+        if [ -d "${S}/board/xilinx" ]; then
+            do_export_xparam
+        fi
 	else
 		oefatal "XILINX_BOARD not defined ! Exit"
 		exit 1
-- 
1.7.3.4


