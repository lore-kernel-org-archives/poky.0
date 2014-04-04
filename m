Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67494E00A13
	for <poky@yoctoproject.org>; Fri,  4 Apr 2014 07:26:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2014 07:26:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,795,1389772800"; d="scan'208";a="514498804"
Received: from davidllo-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2014 07:26:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Apr 2014 15:26:24 +0100
Message-Id: <1620231932994dbe2e2b37697a19a52ca44a37f2.1396621532.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/4] local.conf.sample: drop routerstationpro in favour of edgerouter
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
X-List-Received-Date: Fri, 04 Apr 2014 14:26:46 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 539a1a4..0111801 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -52,7 +52,7 @@ PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"
 #MACHINE ?= "genericx86"
 #MACHINE ?= "genericx86-64"
 #MACHINE ?= "mpc8315e-rdb"
-#MACHINE ?= "routerstationpro"
+#MACHINE ?= "edgerouter"
 #
 # This sets the default machine to be qemux86 if no other machine is selected:
 MACHINE ??= "qemux86"
-- 
1.9.0


