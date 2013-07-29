Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B332EE0044E
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 01:40:53 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Jul 2013 01:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,768,1367996400"; d="scan'208";a="338341310"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.206])
	by azsmga001.ch.intel.com with ESMTP; 29 Jul 2013 01:40:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 09:40:36 +0100
Message-Id: <9184e1b61ec0f2add76dc32a5bc8d1e9d39edfc0.1375087195.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1375087195.git.paul.eggleton@linux.intel.com>
References: <cover.1375087195.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1375087195.git.paul.eggleton@linux.intel.com>
References: <cover.1375087195.git.paul.eggleton@linux.intel.com>
Subject: [dylan][PATCH 1/1] linux-yocto: Fix SRCREVs in linux-yocto_3.2
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
X-List-Received-Date: Mon, 29 Jul 2013 08:40:53 -0000

From: Paul Barker <paul@paulbarker.me.uk>

The KERNEL_VERSION set by linux-yocto_3.2.bb in openembedded-core is 3.2.32 but
the SRCREVs in the bbappend in meta-yocto-bsp referred to version 3.2.18. These
SRCREVs are updated to the correct values.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
index fa160f8..6aa0add 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/default/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/default/beagleboard"
 
-SRCREV_machine_atom-pc ?= "41074a778d251a77e036fd8a99915cd4da6cd8f7"
-SRCREV_machine_routerstationpro ?= "94abc0d75d0a99c40c53402570cd9c569539fee9"
-SRCREV_machine_mpc8315e-rdb ?= "a04e94f4dae9cf6d32d059cf9e0308abe7341a3a"
-SRCREV_machine_beagleboard ?= "40bde7a43ef3cd85729ab02464a7ecdf71e522a6"
+SRCREV_machine_atom-pc ?= "4e22c5593a355ab6f21f29895b68ee432df49f22"
+SRCREV_machine_routerstationpro ?= "06264be5913f2984aad07fe31a27fd8ef8e15782"
+SRCREV_machine_mpc8315e-rdb ?= "f906a896696d98c1e651bcef17631f1096cd6c31"
+SRCREV_machine_beagleboard ?= "cdc1e64b1cec2f93a1ea656e358b8bb8d2926954"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.8.1.2


