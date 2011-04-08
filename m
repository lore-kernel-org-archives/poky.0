Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A8654C80044
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 12:28:03 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Apr 2011 10:28:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,324,1299484800"; d="scan'208";a="907279554"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2011 10:28:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  8 Apr 2011 10:27:52 -0700
Message-Id: <a463a33c7a4aec3b46b7bf9f7b0731869b271e0b.1302283672.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: paul.eggleton@linux.intel.com, Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] README.hardware: automate boot process for router station pro
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
X-List-Received-Date: Fri, 08 Apr 2011 17:28:03 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 README.hardware |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)

diff --git a/README.hardware b/README.hardware
index 025c678..b2ce146 100644
--- a/README.hardware
+++ b/README.hardware
@@ -392,3 +392,25 @@ To boot the flashed kernel perform the following steps.
 (-e means 'elf', -d 'decompress')
 
 2) Execute the kernel using the exec command as above.
+
+--- Automating the boot process ---
+
+After writing the kernel to flash and testing the load and exec commands
+manually, you can automate the boot process with a boot script.
+
+1) RedBoot> fconfig
+   (Answer the questions not specified here as they pertain to your environment)
+2) Run script at boot: true
+  Boot script: 
+  .. fis load -d -e kernel
+  .. exec
+  Enter script, terminate with empty line
+  >> fis load -d -e kernel
+  >> exec -c "console=ttyS0,115200 root=/dev/sda1 rw rootdelay=2 board=UBNT-RSPRO"
+  >> 
+3) Answer the remaining questions and write the changes to flash:
+  Update RedBoot non-volatile configuration - continue (y/n)? y
+  ... Erase from 0xbfff0000-0xc0000000: .
+  ... Program from 0x87ff0000-0x88000000 at 0xbfff0000: .
+4) Power cycle the board.
+
-- 
1.7.1


