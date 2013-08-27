Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8179DE0158A
	for <poky@yoctoproject.org>; Tue, 27 Aug 2013 13:16:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Aug 2013 13:13:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,970,1367996400"; d="scan'208";a="394318736"
Received: from dvhart-mobl4.jf.intel.com (HELO localhost) ([10.7.201.55])
	by orsmga002.jf.intel.com with ESMTP; 27 Aug 2013 13:16:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>,
	Ross Burton <ross.burton@intel.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 27 Aug 2013 13:16:14 -0700
Message-Id: <cae988ac3343b32e4db87453c37af6561e2f95c5.1377634165.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1377634165.git.dvhart@linux.intel.com>
References: <cover.1377634165.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1377634165.git.dvhart@linux.intel.com>
References: <cover.1377634165.git.dvhart@linux.intel.com>
Subject: [PATCH 2/3] local.conf.sample: Add genericx86-64 machine to machine list
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
X-List-Received-Date: Tue, 27 Aug 2013 20:16:37 -0000

local.conf.sample lists all core BSPs. Add the new genericx86-64
machine, removing the duplicate entry of the genericx86 machine.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 6f71a9f..81fc121 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -42,9 +42,9 @@
 # There are also the following hardware board target machines included for 
 # demonstration purposes:
 #
-#MACHINE ?= "genericx86"
 #MACHINE ?= "beagleboard"
 #MACHINE ?= "genericx86"
+#MACHINE ?= "genericx86-64"
 #MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "routerstationpro"
 #
-- 
1.8.3.1


