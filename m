Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73BEDE00D46; Wed, 25 May 2016 11:33:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB68E00D44
	for <poky@yoctoproject.org>; Wed, 25 May 2016 11:33:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2016 11:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,364,1459839600"; d="scan'208";a="974465755"
Received: from spmorimo-mobl3.amr.corp.intel.com (HELO localhost)
	([10.254.125.102])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2016 11:33:01 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	alejandro.hernandez@intel.com
Date: Wed, 25 May 2016 13:32:48 -0500
Message-Id: <2f0429d7bc055e5007f73755ae646801d2e425a2.1464119315.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <c0baa496ca22df97c145543192b836869fcb99df.1464119315.git.tom.zanussi@linux.intel.com>
References: <c0baa496ca22df97c145543192b836869fcb99df.1464119315.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1464119315.git.tom.zanussi@linux.intel.com>
References: <cover.1464119315.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 3/4] linux-yocto/4.1: Make standard/intel branches available
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
X-List-Received-Date: Wed, 25 May 2016 18:33:04 -0000

meta-yocto-bsp BSPs inherit SRCREV_meta - update it to include some
new branches for the BSPs there.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 meta/recipes-kernel/linux/linux-yocto_4.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto_4.1.bb b/meta/recipes-kernel/linux/linux-yocto_4.1.bb
index 5d6bd3d..801a2c0 100644
--- a/meta/recipes-kernel/linux/linux-yocto_4.1.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_4.1.bb
@@ -19,7 +19,7 @@ SRCREV_machine_qemux86 ?= "d03753ddb28a1141e550a67c99ac95789a424fc5"
 SRCREV_machine_qemux86-64 ?= "d03753ddb28a1141e550a67c99ac95789a424fc5"
 SRCREV_machine_qemumips64 ?= "351bc6968f63ea6f27cbd7f1678ddc53a9168fd1"
 SRCREV_machine ?= "d03753ddb28a1141e550a67c99ac95789a424fc5"
-SRCREV_meta ?= "2bdebd11f1a0bc00071ec1467289a7feb5418dde"
+SRCREV_meta ?= "0b74ce56549e915237c35965e13aa3c034236180"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto-4.1.git;name=machine;branch=${KBRANCH}; \
            git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-4.1;destsuffix=${KMETA}"
-- 
1.9.3


