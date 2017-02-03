Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0643DE004A0; Fri,  3 Feb 2017 10:29:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F9C0E00510
	for <poky@yoctoproject.org>; Fri,  3 Feb 2017 10:29:12 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 03 Feb 2017 10:29:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,329,1477983600"; d="scan'208";a="929876412"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga003.jf.intel.com with ESMTP; 03 Feb 2017 10:29:11 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  3 Feb 2017 18:25:24 +0000
Message-Id: <1486146324-12587-4-git-send-email-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <1486146324-12587-1-git-send-email-alejandro.hernandez@linux.intel.com>
References: <1486146324-12587-1-git-send-email-alejandro.hernandez@linux.intel.com>
Subject: [PATCH 4/4] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
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
X-List-Received-Date: Fri, 03 Feb 2017 18:29:15 -0000

Updates to Linux 4.9.6

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 4024bc1..405bce0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -4,11 +4,11 @@ KBRANCH_genericx86-64  = "standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "6fdf2bca12625c67b64f39e08b1b4ae7c610f8bd"
-SRCREV_machine_genericx86-64 ?= "6fdf2bca12625c67b64f39e08b1b4ae7c610f8bd"
+SRCREV_machine_genericx86    ?= "4700f2f8b9dbaad5ae441b682d04b09e811135fc"
+SRCREV_machine_genericx86-64 ?= "4700f2f8b9dbaad5ae441b682d04b09e811135fc"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 
-LINUX_VERSION_genericx86 = "4.9.4"
-LINUX_VERSION_genericx86-64 = "4.9.4"
+LINUX_VERSION_genericx86 = "4.9.6"
+LINUX_VERSION_genericx86-64 = "4.9.6"
-- 
2.6.6


