Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0730E00B9A
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 11:30:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2RIU4C5016415
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Mar 2014 11:30:04 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Thu, 27 Mar 2014 11:30:04 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Mar 2014 14:29:56 -0400
Message-ID: <7893fd996924c0f82cefc26bcb755749f34fb93c.1395944862.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395944862.git.bruce.ashfield@windriver.com>
References: <cover.1395944862.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 3/6] yocto-bsps: Add a new BSP to support edgerouter
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
X-List-Received-Date: Thu, 27 Mar 2014 18:30:06 -0000
Content-Type: text/plain

From: Yang Wei <Wei.Yang@windriver.com>

  The EdgeRouter Lite is part of the EdgeMax series. It is an MIPS64 router(Cavium Octeon)
  with 512MB of RAM, which uses a USB pendrive for storage.

  Setup instructions
  ------------------

  You will need the following:
  * NFS root setup on your workstation
  * TFTP server installed on your workstation
  * Straight-thru 9-conductor serial cable (DB9, M/F) connected from your
    PC to UART1
  * Ethernet connected to the first ethernet port on the board

The rest of the details can be found in the BSP kernel config, and README.hardware.

Signed-off-by: Yang Wei <Wei.Yang@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/edgerouter.conf | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 meta-yocto-bsp/conf/machine/edgerouter.conf

diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
new file mode 100644
index 000000000000..f3ea33bb0d6b
--- /dev/null
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -0,0 +1,21 @@
+#@TYPE: Machine
+#@NAME: Edgerouter
+#@DESCRIPTION: Edgerouter
+
+require conf/machine/include/tune-mips64.inc
+
+MACHINE_FEATURES = "pci ext2 ext3 serial"
+
+KERNEL_IMAGETYPE = "vmlinux"
+KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
+KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+USE_VT ?= "0"
+
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+
+IMAGE_FSTYPES ?= "jffs2 tar.bz2"
+JFFS2_ERASEBLOCK = "0x10000"
-- 
1.8.1.2


