Return-Path: <aalonso00@gmail.com>
Received: from mail-yi0-f54.google.com (mail-yi0-f54.google.com
	[209.85.218.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id EAAEF4C811D2
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:51 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f54.google.com with SMTP id 19so2880643yie.13
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=MGSWwabIBaP4g4Wqvnpt1Zj4iYF9u1ahsg1TCslQzO0=;
	b=PMgRKvnXS7sEZ/V/auFpqQTs0OlSERM7sY1CjsZ3HhA1riGpLuZRlZeKNKILBhOgKr
	uVdLsrJ7BW/t/ts2GyUuMA1EL+9uUvMbQLgu+5sGWsuDp8Yw0awZJ2dWIVn9SUjDPxEd
	xdQpo+s6e6PPBvXnTKArybseR+wY/JtV6BJU0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=J/2ifV4KGdCfw7rDVUt12YgiAhHXg9q43Kd3NdWjYj6DwzebTei9wwOVI8wuNTVDMH
	SFhf+mUnwjMjkBAnb5JYnVANzkcAf8NhI8bNzccfLxmCD/v6DOuGUo8v5MuDyyWRfHk8
	f/jnZ7ur2crTO+3QUCBo/H9zHVCF/bhEBFzvY=
Received: by 10.100.125.18 with SMTP id x18mr2737746anc.242.1295295831065;
	Mon, 17 Jan 2011 12:23:51 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.48
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:50 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:22 -0600
Message-Id: <1295296178-18590-9-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 09/25] u-boot-xilinx: ml405 uartlite support
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:52 -0000

* Add ML405 Uartlite support, find out which uart module is
  used based on xparameters header file
* Fix hardcodded macros for uartns550 setting uart and
  PLB bus frequency
* Fix inline qualifier from
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../files/ml405-add-uartlite-config-options.patch  |   63 ++++++++++++++++++++
 ...405-replace-hardcode-macros-for-uartns550.patch |   36 +++++++++++
 ...e-inline-qualifier-from-show_boot_progres.patch |   31 ++++++++++
 recipes-bsp/uboot/u-boot-xilinx_git.bb             |    5 +-
 4 files changed, 134 insertions(+), 1 deletions(-)
 create mode 100644 recipes-bsp/uboot/files/ml405-add-uartlite-config-options.patch
 create mode 100644 recipes-bsp/uboot/files/ml405-replace-hardcode-macros-for-uartns550.patch
 create mode 100644 recipes-bsp/uboot/files/uboot-remove-inline-qualifier-from-show_boot_progres.patch

diff --git a/recipes-bsp/uboot/files/ml405-add-uartlite-config-options.patch b/recipes-bsp/uboot/files/ml405-add-uartlite-config-options.patch
new file mode 100644
index 0000000..8edd12a
--- /dev/null
+++ b/recipes-bsp/uboot/files/ml405-add-uartlite-config-options.patch
@@ -0,0 +1,63 @@
+From f2e7ecde205d88d28536e8454f58ba2b1ef4cc81 Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso@secretlab.ca>
+Date: Thu, 16 Dec 2010 17:34:13 -0600
+Subject: [PATCH 1/2] ml405: add uartlite config options
+
+* Add CONFIG_XILINX_UARTLITE options
+* From xparameters find out which serial module
+  is included in the hardware project and configure
+  accord the available device
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ include/configs/ml405.h |   19 +++++++++++++++++--
+ 1 files changed, 17 insertions(+), 2 deletions(-)
+
+diff --git a/include/configs/ml405.h b/include/configs/ml405.h
+index d6f4832..86f093e 100644
+--- a/include/configs/ml405.h
++++ b/include/configs/ml405.h
+@@ -115,7 +115,6 @@
+ //#define CFG_MONITOR_BASE	0xFFFC0000
+ #endif
+ 
+-#define CONFIG_BAUDRATE         9600
+ #define CONFIG_BOOTDELAY        5       /* autoboot after 5 seconds	*/
+
+ #define CONFIG_BOOTCOMMAND      "" /* autoboot command	*/
+@@ -181,6 +180,18 @@
+ #define CFG_MEMTEST_END		0x0C00000	/* 4 ... 12 MB in DRAM	*/
+
+ /*
++ * Serial port
++ * uartLite
++ */
++#ifdef XPAR_UARTLITE_0_BASEADDR
++#define CONFIG_XILINX_UARTLITE
++#define CONFIG_SERIAL_BASE      XPAR_UARTLITE_0_BASEADDR
++#define CONFIG_BAUDRATE         XPAR_UARTLITE_0_BAUDRATE
++#define CONFIG_SYS_BAUDRATE_TABLE   { CONFIG_BAUDRATE }
++#define XPAR_UART_0_CLOCK_FREQ_HZ XPAR_PLB_CLOCK_FREQ_HZ
++#else
++#ifdef XPAR_UARTNS550_0_BASEADDR
++/*
+  * 16550 UART and console
+  */
+ #define CONFIG_CONS_INDEX	1
+@@ -188,8 +199,12 @@
+ #define CFG_NS16550
+ #define CFG_NS16550_SERIAL
+ #define CFG_NS16550_REG_SIZE	-4
+-#define CFG_NS16550_CLK		XPAR_XUARTNS550_CLOCK_HZ
++#define CFG_NS16550_CLK		        XPAR_XUARTNS550_CLOCK_HZ
++#define XPAR_UART_0_CLOCK_FREQ_HZ   XPAR_XUARTNS550_CLOCK_HZ
+ #define CFG_NS16550_COM1	(XPAR_UARTNS550_0_BASEADDR + 0x1003)
++#define CONFIG_BAUDRATE         9600
++#endif
++#endif
+
+ #define CFG_BAUDRATE_TABLE	\
+ 	{300, 600, 1200, 2400, 4800, 9600, 19200, 38400,115200}
+--
+1.7.2.3
+
diff --git a/recipes-bsp/uboot/files/ml405-replace-hardcode-macros-for-uartns550.patch b/recipes-bsp/uboot/files/ml405-replace-hardcode-macros-for-uartns550.patch
new file mode 100644
index 0000000..3e8ce92
--- /dev/null
+++ b/recipes-bsp/uboot/files/ml405-replace-hardcode-macros-for-uartns550.patch
@@ -0,0 +1,36 @@
+From 111cbbadbf09b6570567b22962de4a80180aabe1 Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso@secretlab.ca>
+Date: Thu, 16 Dec 2010 17:39:35 -0600
+Subject: [PATCH 2/2] ml405: replace hardcode macros for uartns550
+
+* Replace hardcoded macros for setting PLB and uart
+  frecuency
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ board/xilinx/ml405/ml405.c |    4 ++--
+ 1 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/board/xilinx/ml405/ml405.c b/board/xilinx/ml405/ml405.c
+index 76dd5e5..0800b10 100755
+--- a/board/xilinx/ml405/ml405.c
++++ b/board/xilinx/ml405/ml405.c
+@@ -138,13 +138,13 @@ get_sys_info(sys_info_t * sysInfo)
+ 	sysInfo->freqProcessor = XPAR_CORE_CLOCK_FREQ_HZ;
+ 
+ 	/* only correct if the PLB and OPB run at the same frequency */
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
+1.7.2.3
+
diff --git a/recipes-bsp/uboot/files/uboot-remove-inline-qualifier-from-show_boot_progres.patch b/recipes-bsp/uboot/files/uboot-remove-inline-qualifier-from-show_boot_progres.patch
new file mode 100644
index 0000000..56d26ea
--- /dev/null
+++ b/recipes-bsp/uboot/files/uboot-remove-inline-qualifier-from-show_boot_progres.patch
@@ -0,0 +1,31 @@
+From 4537cc92b5c149fbcb204d8e904a7ee20b8f4b1c Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso@secretlab.ca>
+Date: Mon, 6 Dec 2010 23:01:03 -0600
+Subject: [PATCH 2/2] uboot: remove inline qualifier from show_boot_progress
+
+* Remove inline qualifier from show_boot_progress
+* Gcc 4.5.1 complains about
+  main.c:51:13: error: inline function 'show_boot_progress'
+  cannot be declared weak
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ common/main.c |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+diff --git a/common/main.c b/common/main.c
+index 187ef8a..e2f8bb2 100644
+--- a/common/main.c
++++ b/common/main.c
+@@ -48,7 +48,7 @@ DECLARE_GLOBAL_DATA_PTR;
+  * Board-specific Platform code can reimplement show_boot_progress () if needed
+  */
+ void inline __show_boot_progress (int val) {}
+-void inline show_boot_progress (int val) __attribute__((weak, alias("__show_boot_progress")));
++void show_boot_progress (int val) __attribute__((weak, alias("__show_boot_progress")));
+ 
+ #if defined(CONFIG_BOOT_RETRY_TIME) && defined(CONFIG_RESET_TO_RETRY)
+ extern int do_reset (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[]);		/* for do_reset() prototype */
+-- 
+1.7.2.3
+
diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index 3b35ae5..0a30602 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,5 +1,5 @@
 require ../meta/recipes-bsp/uboot/u-boot.inc
-PR = "r3"
+PR = "r4"
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
 
@@ -7,6 +7,9 @@ BRANCH="master"
 TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
 SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
            file://uboot-do-not-use-Os-option.patch \
+           file://uboot-remove-inline-qualifier-from-show_boot_progres.patch \
+           file://ml405-add-uartlite-config-options.patch \
+           file://ml405-replace-hardcode-macros-for-uartns550.patch \
           "
 SRCREV = "${TAG}"
 
-- 
1.7.3.4


