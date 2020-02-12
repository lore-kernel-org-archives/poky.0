Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.21864.1581479937152019235
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 19:58:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: kexin.hao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 01C3vhWc031331
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 11 Feb 2020 19:57:53 -0800
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Tue, 11 Feb 2020
 19:57:32 -0800
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
CC: Anuj Mittal <anuj.mittal@intel.com>,
        Bruce Ashfield
	<bruce.ashfield@gmail.com>,
        Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [PATCH] meta-yocto-bsp: Bump to the v5.4 kernel for the non-x86 boards
Date: Wed, 12 Feb 2020 11:45:02 +0800
Message-ID: <20200212034502.22149-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.25.0.191.gde93cc14ab7e
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Build and boot test for the beaglebone and edgerouter.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf   |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf         |  2 +-
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend   | 13 +++++++++++++
 3 files changed, 15 insertions(+), 2 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 08dd3a5074ee..5b481434bd89 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.2%"
+PREFERRED_VERSION_linux-yocto ?= "5.4%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 6331368f87aa..d6fd934fa583 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.2%"
+PREFERRED_VERSION_linux-yocto ?= "5.4%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
new file mode 100644
index 000000000000..fdcf8a7772ba
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -0,0 +1,13 @@
+KBRANCH_edgerouter = "v5.4/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v5.4/standard/beaglebone"
+
+KMACHINE_beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine_edgerouter ?= "cdda35317561d2741b396efa623ace0bd2212c16"
+SRCREV_machine_beaglebone-yocto ?= "cdda35317561d2741b396efa623ace0bd2212c16"
+
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+
+LINUX_VERSION_edgerouter = "5.4.15"
+LINUX_VERSION_beaglebone-yocto = "5.4.15"
-- 
2.25.0.191.gde93cc14ab7e

