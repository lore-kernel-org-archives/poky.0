Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 178D9E00301
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960401"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:29 -0700
Message-Id: <b9e1563e042bddcdfe0ad66fb28deb0b0044954c.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 17/17] linux-yocto-stable: update SRCREVs to v2.6.34.10
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:33 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Updating the SRCREVs to pick up the -longterm updates to v2.6.34.10

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   22 ++++++++++----------
 1 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 0521fe5..ddd5a36 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -86,17 +86,17 @@ SRCREV_pn-linux-omap-zoomsync ??= "015cbaf1035cd9a61d33a27de2a22902555db3c5"
 SRCREV_pn-linux-omap2 ??= "d3b3ae0fe6c71641da19c8de466ec366d39847e3"
 SRCREV_pn-linux-omap3 ??= "de1121fdb899f762b9e717f44eaf3fae7c00cd3e"
 SRCREV_pn-linux-omap3-pm ??= "totallybroken"
-SRCREV_machine_pn-linux-yocto-stable_qemuarm ?= "a2fb081b44d6368eff8d28e2fdb991c61b1f428e"
-SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "c32d40f960e3c89d07f079bec4c96dcbfc749f0b"
-SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "96d6bc31d3caaf62a966255479cc5cee0e76b1e9"
-SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "49745cd45c92a89e70c6e2334caa80818c134562"
-SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
-SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ef7f944e773950d4016b7643f9ecf052bbe250cd"
-SRCREV_machine_pn-linux-yocto-stable ?= "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
+SRCREV_machine_pn-linux-yocto-stable_qemuarm ?= "24305dfe5a7c4eadb0160b565442991c2a4598e6"
+SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "872453662305b0c14cc87480f7c96168ff36481e"
+SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "11affb88242d373b5bf4039b771e3872b428e3d2"
+SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "adea8c9cce0ffff0f10abe3257382c1190f0f569"
+SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "adea8c9cce0ffff0f10abe3257382c1190f0f569"
+SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "adea8c9cce0ffff0f10abe3257382c1190f0f569"
+SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "4e8cefebccb235de37199a7644a89ead1fc0b2fa"
+SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "9bf8e1497b853a5d556e94febf8185c380e6a2d3"
+SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "f3e11c02c4d62d9a3c00abd2048c0b6cf007d988"
+SRCREV_machine_pn-linux-yocto-stable ?= "adea8c9cce0ffff0f10abe3257382c1190f0f569"
+SRCREV_meta_pn-linux-yocto-stable ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm ?= "233213a1e09eae3de7047ff406b156608788ec17"
 SRCREV_machine_pn-linux-yocto_qemumips ?= "54bb956f70349923af29f28a4f9471f5658e1787"
-- 
1.7.7


