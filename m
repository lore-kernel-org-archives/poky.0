Return-Path: <aalonso00@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75CD54C8120D
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:59 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yx0-f176.google.com with SMTP id 8so2387231yxm.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=MrLAREACOKCkqV9dpMVmvxr6T/mtHDrrmoq94TKzT6w=;
	b=tIaurC660dFj0MNHMfXFK+wM/rkPdsSKc04OOjqKqz2/4WGqeL9fKoQeqBzfNjp4js
	RMWthvOtY3JweAzLqhbyDbpTi6xmOHDYvHMW0CD5nM0L8DNgwPj99UP4BlO0FC5pENCZ
	9OkGbLXuk7uVEn6BamOAEKecxLvig+U2UuYx8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=MQgzAtsDuqLs+eArSG+aZOZuI2GmPAYFsqM7Pt6UrFPyiAhU37x3/o45kwXubsYN+M
	QMeKAYrm63zs51Si1kcQ45vBDkJz6vS3NO9WwEmmjSiBp8KPDdyxNyD8U+q4yPUBJqmO
	xB7Rtbh6fISatGYFQmHFVPVRAf05hqdU41L8o=
Received: by 10.100.136.2 with SMTP id j2mr2735905and.243.1295295839271;
	Mon, 17 Jan 2011 12:23:59 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.56
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:58 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:25 -0600
Message-Id: <1295296178-18590-12-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 12/25] u-boot-xilinx: ml507 uartlite support
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:59 -0000

* Add u-boot ml507 uartlite support
* Fix hardcodded macros for uartns550 setting uart and
  PLB bus frequency for ml507 target board
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../files/ml507-add-uartlite-config-options.patch  |   51 ++++++++++++++++++++
 ...507-replace-hardcode-macros-for-uartns550.patch |   35 +++++++++++++
 recipes-bsp/uboot/u-boot-xilinx_git.bb             |    4 +-
 3 files changed, 89 insertions(+), 1 deletions(-)
 create mode 100644 recipes-bsp/uboot/files/ml507-add-uartlite-config-options.patch
 create mode 100644 recipes-bsp/uboot/files/ml507-replace-hardcode-macros-for-uartns550.patch

diff --git a/recipes-bsp/uboot/files/ml507-add-uartlite-config-options.patch b/recipes-bsp/uboot/files/ml507-add-uartlite-config-options.patch
new file mode 100644
index 0000000..cdde911
--- /dev/null
+++ b/recipes-bsp/uboot/files/ml507-add-uartlite-config-options.patch
@@ -0,0 +1,51 @@
+From 6e3db4846a393558324733a1d18fdf9858d543fe Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso00@gmail.com>
+Date: Fri, 17 Dec 2010 15:56:45 -0600
+Subject: [PATCH 1/2] ml507: add uartlite config options
+
+* Add CONFIG_XILINX_UARTLITE options
+* From xparameters find out which serial module
+  is included in the hardware project and configure
+  accord the available device
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ include/configs/ml507.h |   16 +++++++++++++++-
+ 1 files changed, 15 insertions(+), 1 deletions(-)
+
+diff --git a/include/configs/ml507.h b/include/configs/ml507.h
+index 6454ef5..be429b6 100644
+--- a/include/configs/ml507.h
++++ b/include/configs/ml507.h
+@@ -172,7 +172,18 @@
+
+ #define CFG_MEMTEST_START	0x0400000	/* memtest works on	*/
+ #define CFG_MEMTEST_END		0x0C00000	/* 4 ... 12 MB in DRAM	*/
+-
++/*
++ *  * Serial port
++ *   * uartLite
++ *    */
++#ifdef XPAR_UARTLITE_0_BASEADDR
++#define CONFIG_XILINX_UARTLITE
++#define CONFIG_SERIAL_BASE      XPAR_UARTLITE_0_BASEADDR
++#define CONFIG_BAUDRATE         XPAR_UARTLITE_0_BAUDRATE
++#define CONFIG_SYS_BAUDRATE_TABLE   { CONFIG_BAUDRATE }
++#define XPAR_UART_0_CLOCK_FREQ_HZ XPAR_PLB_CLOCK_FREQ_HZ
++#else
++#ifdef XPAR_UARTNS550_0_BASEADDR
+ /*
+  * 16550 UART and console
+  */
+@@ -183,6 +194,9 @@
+ #define CFG_NS16550_REG_SIZE	-4
+ #define CFG_NS16550_CLK		XPAR_XUARTNS550_CLOCK_HZ
+ #define CFG_NS16550_COM1	(XPAR_UARTNS550_0_BASEADDR + 0x1003)
++#define XPAR_UART_0_CLOCK_FREQ_HZ   XPAR_XUARTNS550_CLOCK_HZ
++#endif
++#endif
+
+ #define CFG_BAUDRATE_TABLE	\
+ 	{300, 600, 1200, 2400, 4800, 9600, 19200, 38400,115200}
+--
+1.7.3.3
diff --git a/recipes-bsp/uboot/files/ml507-replace-hardcode-macros-for-uartns550.patch b/recipes-bsp/uboot/files/ml507-replace-hardcode-macros-for-uartns550.patch
new file mode 100644
index 0000000..8a94618
--- /dev/null
+++ b/recipes-bsp/uboot/files/ml507-replace-hardcode-macros-for-uartns550.patch
@@ -0,0 +1,35 @@
+From 9d8a9331156dcba4fe1aefb066a28f67c46468b4 Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso00@gmail.com>
+Date: Fri, 17 Dec 2010 15:58:53 -0600
+Subject: [PATCH 2/2] ml507: replace hardcode macros for uartns550
+
+* Replace hardcoded macros for setting PLB and uart
+  frecuency
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ board/xilinx/ml507/ml507.c |    4 ++--
+ 1 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/board/xilinx/ml507/ml507.c b/board/xilinx/ml507/ml507.c
+index 8e6970e..0ef81c3 100644
+--- a/board/xilinx/ml507/ml507.c
++++ b/board/xilinx/ml507/ml507.c
+@@ -137,13 +137,13 @@ get_sys_info(sys_info_t * sysInfo)
+ {
+ 	sysInfo->freqProcessor = XPAR_CORE_CLOCK_FREQ_HZ;
+
+-	sysInfo->freqPLB = XPAR_UARTNS550_0_CLOCK_FREQ_HZ;
++	sysInfo->freqPLB = XPAR_UART_0_CLOCK_FREQ_HZ;
+ 	sysInfo->freqPCI = 0;
+
+ 	/* setup the uart clock frequency in the global data otherwise the 
+ 	 * fdt fixups on the device tree hoses it up
+ 	 */
+-	gd->uart_clk = XPAR_UARTNS550_0_CLOCK_FREQ_HZ;
++	gd->uart_clk = XPAR_UART_0_CLOCK_FREQ_HZ;
+ }
+
+ /*-----------------------------------------------------------------------------
+--
+1.7.3.3
diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index 0a30602..c972311 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,5 +1,5 @@
 require ../meta/recipes-bsp/uboot/u-boot.inc
-PR = "r4"
+PR = "r5"
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
 
@@ -10,6 +10,8 @@ SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
            file://uboot-remove-inline-qualifier-from-show_boot_progres.patch \
            file://ml405-add-uartlite-config-options.patch \
            file://ml405-replace-hardcode-macros-for-uartns550.patch \
+           file://ml507-add-uartlite-config-options.patch \
+           file://ml507-replace-hardcode-macros-for-uartns550.patch \
           "
 SRCREV = "${TAG}"
 
-- 
1.7.3.4


