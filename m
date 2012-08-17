Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1015AE0027E;
	Fri, 17 Aug 2012 08:24:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7HFOXBU004825
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Aug 2012 08:24:33 -0700 (PDT)
Received: from yow-pgortmak-d2.corp.ad.wrs.com (128.224.146.165) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Fri, 17 Aug 2012 08:24:32 -0700
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 17 Aug 2012 11:24:19 -0400
Message-ID: <1345217059-10448-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.12.rc2
In-Reply-To: <502D73D4.6090408@linux.intel.com>
References: <502D73D4.6090408@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH v2] routerstationpro: move board off 3.0 and onto the 3.4 kernel
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
X-List-Received-Date: Fri, 17 Aug 2012 15:24:34 -0000
Content-Type: text/plain

The updated patch series to support this target is in place
on the BSP specific branch in the 3.4 kernel tree now[1], so
we can move it ahead off of the old 3.0 kernel.

[1] https://lists.yoctoproject.org/pipermail/linux-yocto/2012-July/000023.html

Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Saul Wold <sgw@linux.intel.com>
Acked-by: Darren Hart <dvhart@linux.intel.com>
Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---

[v2: update to the SRCREV-of-the-day.  Note that if anyone sees
 build failures with this, you are also missing the meta SRCREV
 update in linux-yocto_3.4.bb from Bruce.  Yay SRCREV. ]

 meta-yocto/conf/machine/routerstationpro.conf            | 2 +-
 meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index 3c2f56f..adf36a9 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -10,7 +10,7 @@ KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
 
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 2ff467b..fe8e97c 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -4,11 +4,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
 SRCREV_machine_atom-pc ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
-SRCREV_machine_routerstationpro ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
+SRCREV_machine_routerstationpro ?= "2c4707476e4295ee58c3e7963b9028ab98bf41e5"
 SRCREV_machine_mpc8315e-rdb ?= "47d3076aa7e2a640a1dab8d663529a784709f697"
 SRCREV_machine_beagleboard ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 # COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.12.rc2


