Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BCDBE0092E; Sun, 29 Mar 2015 10:16:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7951E00477
	for <poky@yoctoproject.org>; Sun, 29 Mar 2015 10:16:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Mar 2015 10:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,489,1422950400"; d="scan'208";a="672255591"
Received: from rkmodi-mobl1.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.142.84])
	by orsmga001.jf.intel.com with ESMTP; 29 Mar 2015 10:16:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun, 29 Mar 2015 18:16:11 +0100
Message-Id: <1427649371-21833-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH] README.hardware: clarify NFS requirements for edgerouter
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
X-List-Received-Date: Sun, 29 Mar 2015 17:16:16 -0000

You don't need NFS/TFTP for a plain USB setup.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/README.hardware b/README.hardware
index a97f104..0a34b21 100644
--- a/README.hardware
+++ b/README.hardware
@@ -352,19 +352,22 @@ Setup instructions
 ------------------
 
 You will need the following:
-* NFS root setup on your workstation
-* TFTP server installed on your workstation
 * RJ45 -> serial ("rollover") cable connected from your PC to the CONSOLE
-  port on the board
+  port on the device
 * Ethernet connected to the first ethernet port on the board
 
+If using NFS as part of the setup process, you will also need:
+* NFS root setup on your workstation
+* TFTP server installed on your workstation (if fetching the kernel from
+  TFTP, see below).
+
 --- Preparation ---
 
 Build an image (e.g. core-image-minimal) using "edgerouter" as the MACHINE.
 In the following instruction it is based on core-image-minimal. Another target
 may be similiar with it.
 
---- Booting from NFS root ---
+--- Booting from NFS root / kernel via TFTP ---
 
 Load the kernel, and boot the system as follows:
 
-- 
2.1.0


