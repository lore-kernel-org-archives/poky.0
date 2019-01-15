Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF93E00CFD; Tue, 15 Jan 2019 00:54:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 404DDE00CF4
	for <poky@yoctoproject.org>; Tue, 15 Jan 2019 00:54:45 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jan 2019 00:54:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,481,1539673200"; d="scan'208";a="118588329"
Received: from andromeda02.png.intel.com ([10.221.183.11])
	by orsmga003.jf.intel.com with ESMTP; 15 Jan 2019 00:54:43 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: poky@yoctoproject.org
Date: Tue, 15 Jan 2019 16:23:28 +0800
Message-Id: <1547540608-20979-1-git-send-email-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-yocto-bsp][PATCH] linux-yocto: update genericx86* SRCREV for 4.19
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
X-List-Received-Date: Tue, 15 Jan 2019 08:54:47 -0000

Bump to kernel release v4.19.14

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index f105c21..757f611 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -4,11 +4,11 @@ KBRANCH_genericx86-64  = "v4.19/standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "e727c70583a78cf1dc53e8e219722e2f9d1bc858"
-SRCREV_machine_genericx86-64 ?= "e727c70583a78cf1dc53e8e219722e2f9d1bc858"
+SRCREV_machine_genericx86    ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_genericx86-64 ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 
-LINUX_VERSION_genericx86 = "4.19.8"
-LINUX_VERSION_genericx86-64 = "4.19.8"
+LINUX_VERSION_genericx86 = "4.19.14"
+LINUX_VERSION_genericx86-64 = "4.19.14"
-- 
2.7.4


