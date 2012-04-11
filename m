Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0664DE013A8
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 18:37:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152180208"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.159])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 10 Apr 2012 18:37:49 -0700
Message-Id: <09d3804c347e550e4a314f6dff6dc279791d74b4.1334108211.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1334108211.git.sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
In-Reply-To: <cover.1334108211.git.sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
Subject: [meta-yocto CONSOLIDATED PULL (for RC3) 3/3] linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
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
X-List-Received-Date: Wed, 11 Apr 2012 01:37:51 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

The meta-yocto hardware reference boards missed a SRCREV update when the
base recipe when to v3.0.24. This updates the SRCREVs to ensure that the
kernel that is built and booted matches the version information conveyed
from the base recipe.

Fixes [YOCTO #2265]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 2a9ad7b..5277a69 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,10 +4,10 @@ KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
-SRCREV_machine_atom-pc ?= "b42d0d016af36d0bbbb619c424200d4b5bc9ba28"
-SRCREV_machine_routerstationpro ?= "f1bc894b09bd9b048df99e53fd6559c5d84e4871"
-SRCREV_machine_mpc8315e-rdb ?= "7ba6d6853b6e7cf00a742baeba1503c80fc05314"
-SRCREV_machine_beagleboard ?= "fccd4e4041454f16f1e7a25569ec530eaa1bf89e"
+SRCREV_machine_atom-pc ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
+SRCREV_machine_routerstationpro ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
+SRCREV_machine_mpc8315e-rdb ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
+SRCREV_machine_beagleboard ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.7.6


