Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F8B5E00BD6; Wed,  7 Jun 2017 05:23:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0273CE00BCC
	for <poky@yoctoproject.org>; Wed,  7 Jun 2017 05:23:49 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jun 2017 05:23:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,311,1493708400"; d="scan'208";a="271275878"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 07 Jun 2017 05:23:48 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 2FB205800C1;
	Wed,  7 Jun 2017 05:23:46 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  7 Jun 2017 15:22:46 +0300
Message-Id: <1496838166-24881-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] README.hardware: update flashing instructions for MPC8315
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
X-List-Received-Date: Wed, 07 Jun 2017 12:23:53 -0000

Using 1000000 memory address for kernel and a00000 for dtb
can cause kernel image to overwrite dtb when uncompressing
and u-boot crashing with:
    ERROR: image is not a fdt - must RESET the board to recover.

Updated flashing instructions for the board to use addresses
1000000 and 2000000 to avoid this error.

Got rid of resetting loadaddr and ftdaddr u-boot variables.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 README.hardware | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/README.hardware b/README.hardware
index e6ccf78..dc6a08d 100644
--- a/README.hardware
+++ b/README.hardware
@@ -255,21 +255,16 @@ Reset the board
 
     and flash it to NOR flash as described above.
 
- 6. Set fdtaddr and loadaddr. This is not necessary if you set them before.
-
- => setenv fdtaddr a00000
- => setenv loadaddr 1000000
-
- 7. Load the kernel and dtb from first partition of the USB disk:
+ 6. Load the kernel and dtb from the first partition of the USB disk:
 
  => usb start
- => ext2load usb 0:1 $loadaddr uImage
- => ext2load usb 0:1 $fdtaddr dtb
+ => ext2load usb 0:1 1000000 uImage
+ => ext2load usb 0:1 2000000 dtb
 
- 8. Set bootargs and boot up the device
+ 7. Set bootargs and boot up the device
 
  => setenv bootargs root=/dev/sdb2 rw rootwait console=ttyS0,115200
- => bootm $loadaddr - $fdtaddr
+ => bootm 1000000 - 2000000
 
 
 --- Booting from NFS root ---
-- 
2.1.4


