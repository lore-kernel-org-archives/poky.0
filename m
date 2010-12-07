Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2DF14C811DB
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 15:14:27 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 9D27218059CF
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
X-Auth-Info: AtrY9kE1I+MFs8Ovyqew1tgS6yGqvCtD/tc+Us40+/Q=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 7CBED1C0013C
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 4A805333521C
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 3647AD1CA85; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: poky@yoctoproject.org
Date: Tue,  7 Dec 2010 22:14:01 +0100
Message-Id: <1291756443-28767-4-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.3.2
In-Reply-To: <1291756443-28767-1-git-send-email-wd@denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
Subject: [PATCH 3/5] Add support for 40x configuration (kilauea from OE)
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
X-List-Received-Date: Tue, 07 Dec 2010 21:14:28 -0000

Signed-off-by: Wolfgang Denk <wd@denx.de>
---
 meta/conf/machine/include/tune-ppc405.inc |    6 ++++++
 meta/conf/machine/kilauea.conf            |   22 ++++++++++++++++++++++
 2 files changed, 28 insertions(+), 0 deletions(-)
 create mode 100644 meta/conf/machine/include/tune-ppc405.inc
 create mode 100644 meta/conf/machine/kilauea.conf

diff --git a/meta/conf/machine/include/tune-ppc405.inc b/meta/conf/machine/include/tune-ppc405.inc
new file mode 100644
index 0000000..e5edd68
--- /dev/null
+++ b/meta/conf/machine/include/tune-ppc405.inc
@@ -0,0 +1,6 @@
+#default to soft-floats if distro/machine/local.conf don't define anything else
+TARGET_FPU   ?=  "soft"
+TARGET_CC_ARCH = "-mcpu=405"
+BASE_PACKAGE_ARCH = "ppc405"
+FEED_ARCH = "ppc405"
+PACKAGE_EXTRA_ARCHS += "ppc405"
diff --git a/meta/conf/machine/kilauea.conf b/meta/conf/machine/kilauea.conf
new file mode 100644
index 0000000..883448c
--- /dev/null
+++ b/meta/conf/machine/kilauea.conf
@@ -0,0 +1,22 @@
+#@TYPE: Machine
+#@Name: AMCC Kilauea (405EX)
+#@DESCRIPTION: Machine configuration for the AMCC Kilauea (405EX)
+
+TARGET_ARCH = "powerpc"
+
+PREFERRED_PROVIDER_virtual/kernel = "linux"
+
+MACHINE_FEATURES = "kernel26"
+
+KERNEL_IMAGETYPE = "uImage"
+
+PREFERRED_VERSION_u-boot = "v2010.09"
+UBOOT_MACHINE = "kilauea_config"
+UBOOT_ENTRYPOINT = "0"
+UBOOT_LOADADDRESS = "0"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+
+#tune for the 405 cpu
+require conf/machine/include/tune-ppc405.inc
+
-- 
1.7.3.2


