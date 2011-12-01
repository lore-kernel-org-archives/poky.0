Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3510FE0059F
	for <poky@yoctoproject.org>; Thu,  1 Dec 2011 15:52:43 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2011 15:52:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,281,1320652800"; d="scan'208";a="97665217"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.15.251])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2011 15:52:42 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  1 Dec 2011 15:52:41 -0800
Message-Id: <1322783561-4324-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 2/3] linux-yocto_2.6.34: remove bbappend
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
X-List-Received-Date: Thu, 01 Dec 2011 23:52:43 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../linux/linux-yocto_2.6.34.bbappend              |   12 ------------
 1 files changed, 0 insertions(+), 12 deletions(-)
 delete mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
deleted file mode 100644
index ea0287d..0000000
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
+++ /dev/null
@@ -1,12 +0,0 @@
-KMACHINE_atom-pc  = "atom-pc"
-KMACHINE_routerstationpro = "routerstationpro"
-KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "beagleboard"
-
-SRCREV_machine_atom-pc = "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_machine_routerstationpro = "49745cd45c92a89e70c6e2334caa80818c134562"
-SRCREV_machine_mpc8315e-rdb = "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
-SRCREV_machine_beagleboard = "ef7f944e773950d4016b7643f9ecf052bbe250cd"
-
-COMPATIBLE_MACHINE += "(atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
-
-- 
1.7.6.4


