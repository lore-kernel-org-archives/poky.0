Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E799E004D6
	for <poky@yoctoproject.org>; Thu, 15 Sep 2011 02:51:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2011 02:51:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,386,1312182000"; d="scan'208";a="51698879"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.100])
	by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2011 02:51:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org,
	rpurdie@rpsys.net
Date: Thu, 15 Sep 2011 10:51:08 +0100
Message-Id: <70240b8a97d735f6dc9d0fc228b4e1b148d6005a.1316013940.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1316013940.git.paul.eggleton@linux.intel.com>
References: <cover.1316013940.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1316013940.git.paul.eggleton@linux.intel.com>
References: <cover.1316013940.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/3] local.conf.sample: remove emenlow from example machines
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
X-List-Received-Date: Thu, 15 Sep 2011 09:51:19 -0000

emenlow is now supported within meta-intel.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 644d548..f6951b0 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -44,7 +44,6 @@
 #
 #MACHINE ?= "atom-pc"
 #MACHINE ?= "beagleboard"
-#MACHINE ?= "emenlow"
 #MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "routerstationpro"
 #
-- 
1.7.4.1


