Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75433E01363
	for <poky@yoctoproject.org>; Wed,  9 Nov 2011 08:18:04 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Nov 2011 08:18:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,484,1315206000"; d="scan'208";a="34918173"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.129])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Nov 2011 08:18:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Nov 2011 16:17:57 +0000
Message-Id: <4ed8c3232bb79f631ed2a9aa81c234d23128a17a.1320855375.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1320855375.git.paul.eggleton@linux.intel.com>
References: <cover.1320855375.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1320855375.git.paul.eggleton@linux.intel.com>
References: <cover.1320855375.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] README.hardware: declare support for BeagleBoard xM rev B
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
X-List-Received-Date: Wed, 09 Nov 2011 16:18:04 -0000

The BeagleBoard xM revision B has been tested (by me, if nobody else.)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/README.hardware b/README.hardware
index 11004c7..f72da94 100644
--- a/README.hardware
+++ b/README.hardware
@@ -142,7 +142,7 @@ faster CPU, more RAM, an ethernet port, more USB ports, microSD, and removes
 the NAND flash. The beagleboard MACHINE is tested on the following platforms:
 
   o Beagleboard C4
-  o Beagleboard xM Rev A
+  o Beagleboard xM rev A & B
 
 The Beagleboard C4 has NAND, while the xM does not. For the sake of simplicity,
 these instructions assume you have erased the NAND on the C4 so its boot
-- 
1.7.5.4


