Return-Path: <aalonso00@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92C014C81203
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:56 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yx0-f176.google.com with SMTP id 8so2387231yxm.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=+KyQKeCDGexL+XgGKNPcw4wQR93jEToL0upfyTw/6tk=;
	b=L2TiEAkhllOQ7CUeO8FsLflssKYr2HWCPTbmsatPtra+Sv2R7U8/RvJuxKmyUbRSiP
	imSsi2Jt4wJjo0VoIz3Bbgp8I/pk1ngGp1ILvfwfyI+Zdfqc7HFTru8BLMNTTsq221fo
	dUVjXZBbasGcyF3qbww8TRstf1uDg7q8R6Es4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=mzkCmKtbIgjCR1SEONmucyU8qjT7TjEZ9Gd4C/B5vUkSMdSOm5aBc5mUmYOQloXrLw
	29DRQUElXFSQaKlGmlZKZmn4V3PrTqZj+iQYiCS7H2/AWm2n03hxvkGeBn/qPMZY+DIs
	+fQa8mBH7FW0IOu9Vbk0mKkUwi/k+qPQiv2Y4=
Received: by 10.100.205.12 with SMTP id c12mr2760502ang.194.1295295836463;
	Mon, 17 Jan 2011 12:23:56 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.54
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:55 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:24 -0600
Message-Id: <1295296178-18590-11-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 11/25] xilinx-boot: add do_mk_xparam function
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:56 -0000

* do_mk_xparam function enables building i2c, sysace, lltemac
  xilinx drivers based on hardware setting, if hardware modules
  are present in the hwd project then are drivers build is enabled
* Add do_mk_xparam function call in configure_prepend stage

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 classes/xilinx-boot.bbclass |   26 ++++++++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)

diff --git a/classes/xilinx-boot.bbclass b/classes/xilinx-boot.bbclass
index 501734d..39c0c88 100644
--- a/classes/xilinx-boot.bbclass
+++ b/classes/xilinx-boot.bbclass
@@ -71,6 +71,31 @@ else
 fi
 }
 
+do_mk_xparam() {
+oenote "Replacing xparameters.mk configuration file"
+if [ "${TARGET_ARCH}" == "powerpc" ]; then
+	xparam="${XILINX_BSP_PATH}/ppc${TARGET_CPU}_0/include/xparameters.h"
+
+    if grep -qoe XPAR_IIC_0_DEVICE_ID ${xparam}; then
+        echo -e "XPAR_IIC        := y" > ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.mk
+    else
+        echo -e "XPAR_IIC        := n" > ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.mk
+    fi
+
+    if grep -qoe XPAR_LLTEMAC_0_DEVICE_ID ${xparam}; then
+        echo -e "XPAR_LLTEMAC    := y" >> ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.mk
+    else
+        echo -e "XPAR_LLTEMAC    := n" >> ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.mk
+    fi
+
+    if grep -qoe XPAR_SYSACE_0_DEVICE_ID ${xparam}; then
+        echo -e "XPAR_SYSACE     := y" >> ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.mk
+    else
+        echo -e "XPAR_SYSACE     := n" >> ${S}/board/xilinx/${UBOOT_TARGET}/xparameters.mk
+    fi
+fi
+}
+
 do_configure_prepend() {
 #first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in local.conf
 #now depending on the board type and arch do what is nessesary
@@ -78,6 +103,7 @@ if [ -n "${XILINX_BSP_PATH}" ]; then
 	if [ -n "${XILINX_BOARD}" ]; then
         if [ -d "${S}/board/xilinx" ]; then
             do_export_xparam
+            do_mk_xparam
         fi
 	else
 		oefatal "XILINX_BOARD not defined ! Exit"
-- 
1.7.3.4


