Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail7.windriver.com (mail7.windriver.com [128.224.252.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 718FEE0122C
	for <poky@yoctoproject.org>; Sat, 24 Aug 2013 22:21:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail7.windriver.com (8.14.5/8.14.3) with ESMTP id r7P5L5C4008632
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 25 Aug 2013 01:21:06 -0400 (EDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sat, 24 Aug 2013 22:21:05 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sun, 25 Aug 2013 01:20:57 -0400
Message-ID: <07074e41f89bfd1b2c3d9f3f9d58b10ce6ee73eb.1377407870.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377407870.git.bruce.ashfield@windriver.com>
References: <cover.1377407870.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] yocto-bsp: add 3.10 bbappend and update routerstationpro's preferred version
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
X-List-Received-Date: Sun, 25 Aug 2013 05:21:10 -0000
Content-Type: text/plain

Now that the 3.10 yocto kernel tree is available, meta-yocto-bsp needs a
bbappend with the relevant SRCREVs defined.

Note: that only the routerstationpro is updated to 3.10, and the other reference
BSPs continue to use their existing preferred versions.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/routerstationpro.conf  |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   20 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend

diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
index d9575eb..281d3f6 100644
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.8%"
+PREFERRED_VERSION_linux-yocto ?= "3.10%"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
new file mode 100644
index 0000000..1ac014e
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -0,0 +1,20 @@
+KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
+KBRANCH_genericx86  = "standard/common-pc/atom-pc"
+KBRANCH_routerstationpro = "standard/routerstationpro"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
+KBRANCH_beagleboard = "standard/beagleboard"
+
+SRCREV_machine_atom-pc ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
+SRCREV_machine_genericx86 ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
+SRCREV_machine_routerstationpro ?= "3991d03bd450e9363d5b6e97ede0628ba073db79"
+SRCREV_machine_mpc8315e-rdb ?= "8d8339af518104db03f9c36b82f4372569e55b0a"
+SRCREV_machine_beagleboard ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
+
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+
+# routerstationpro has a flash size of 16mb
+KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
-- 
1.7.10.4


