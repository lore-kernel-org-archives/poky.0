Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B9AEE004E5
	for <poky@yoctoproject.org>; Thu, 15 Sep 2011 02:51:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2011 02:51:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,386,1312182000"; d="scan'208";a="51698903"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.100])
	by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2011 02:51:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org,
	rpurdie@rpsys.net
Date: Thu, 15 Sep 2011 10:51:10 +0100
Message-Id: <67ffaa5253aaee7589526ff69bb71d119b089043.1316013940.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1316013940.git.paul.eggleton@linux.intel.com>
References: <cover.1316013940.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1316013940.git.paul.eggleton@linux.intel.com>
References: <cover.1316013940.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 3/3] linux-yocto: remove emenlow from meta-yocto bbappend (2.6.37 version)
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
X-List-Received-Date: Thu, 15 Sep 2011 09:51:21 -0000

The emenlow BSP is now contained in the meta-intel layer.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index 56c3d18..24b6cea 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -3,7 +3,6 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow = "398d5adac19cb411cd80753e177769f6a666a7e7"
 SRCREV_machine_atom-pc = "fce17f046d3756045e4dfb49221d1cf60fcae329"
 SRCREV_machine_routerstationpro = "8f84c1aec0907766ab6d6ac79fcc3b7b9ce79b70"
 SRCREV_machine_mpc8315e-rdb = "bda049366dad5fc3c7ba229cd4633992581e7a1f"
-- 
1.7.4.1


