Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4980E01358
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 15:14:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Aug 2013 15:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="368819961"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga001.jf.intel.com with ESMTP; 26 Aug 2013 15:14:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 15:18:10 -0700
Message-Id: <419b58507ef7e4a19f35d6ac6d740edc2d8e432f.1377555271.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
References: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1377555271.git.dvhart@linux.intel.com>
References: <cover.1377555271.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 4/6] local.conf.sample: Replace atom-pc with genericx86
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
X-List-Received-Date: Mon, 26 Aug 2013 22:14:07 -0000

Update the sample local.conf file to reflect the recent replacement of
atom-pc with genericx86.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/local.conf.sample |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index b6c26d5..6f71a9f 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -42,7 +42,7 @@
 # There are also the following hardware board target machines included for 
 # demonstration purposes:
 #
-#MACHINE ?= "atom-pc"
+#MACHINE ?= "genericx86"
 #MACHINE ?= "beagleboard"
 #MACHINE ?= "genericx86"
 #MACHINE ?= "mpc8315e-rdb"
-- 
1.7.9.5


