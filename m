Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FD3AE00A6C; Thu, 20 Aug 2015 01:18:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB7E3E00A5B
	for <poky@yoctoproject.org>; Thu, 20 Aug 2015 01:18:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2015 01:18:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,714,1432623600"; d="scan'208";a="752057588"
Received: from ljegan-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.8.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2015 01:18:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 20 Aug 2015 09:18:10 +0100
Message-Id: <e1eca6b2375895ba9e26cf1de40bdd1dbfb30e4f.1440058596.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1440058596.git.paul.eggleton@linux.intel.com>
References: <cover.1440058596.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1440058596.git.paul.eggleton@linux.intel.com>
References: <cover.1440058596.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] yocto-bsp / yocto-layer: fix template recipes
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
X-List-Received-Date: Thu, 20 Aug 2015 08:18:23 -0000

* Drop PR = "r0"
* Use SUMMARY instead of DESCRIPTION

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb      | 1 -
 .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb    | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
index 80a52e7c..fda955b 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
@@ -52,7 +52,6 @@ LINUX_VERSION_EXTENSION ?= "{{=custom_kernel_linux_version_extension}}"
 
 SRCREV="{{=custom_kernel_srcrev}}"
 
-PR = "r0"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 
 COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
index ba1ccb1..5fbf594 100644
--- a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
@@ -4,11 +4,10 @@
 # Yocto Project Development Manual.
 #
 
-DESCRIPTION = "Simple helloworld application"
+SUMMARY = "Simple helloworld application"
 SECTION = "examples"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
-PR = "r0"
 
 SRC_URI = "file://helloworld.c"
 
-- 
2.1.0


