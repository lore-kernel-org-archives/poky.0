Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCA42E00A9B; Mon, 24 Sep 2018 00:01:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00E0E0090C
	for <poky@yoctoproject.org>; Mon, 24 Sep 2018 00:01:27 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2018 00:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,296,1534834800"; d="scan'208";a="75408427"
Received: from andromeda02.png.intel.com ([10.221.183.11])
	by orsmga007.jf.intel.com with ESMTP; 23 Sep 2018 23:55:25 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Mon, 24 Sep 2018 14:40:08 +0800
Message-Id: <1537771208-57698-2-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1537771208-57698-1-git-send-email-anuj.mittal@intel.com>
References: <1537771208-57698-1-git-send-email-anuj.mittal@intel.com>
Subject: [meta-yocto-bsp][PATCH 2/2] linux-yocto: update genericx86* SRCREV for 4.14
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
X-List-Received-Date: Mon, 24 Sep 2018 07:01:28 -0000

Bump to kernel release v4.14.71.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 52af7f8..3918cab 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
-SRCREV_machine_genericx86-64 ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
+SRCREV_machine_genericx86    ?= "78a16a4d8cfd58f91be412797aac248e811d083b"
+SRCREV_machine_genericx86-64 ?= "78a16a4d8cfd58f91be412797aac248e811d083b"
 SRCREV_machine_edgerouter ?= "04043b48eb792c8baa310840307d480a28a43053"
 SRCREV_machine_beaglebone-yocto ?= "d62ddfa26a59c83f6128790b7aa2baadc04d2960"
 SRCREV_machine_mpc8315e-rdb ?= "80a106ecf737b69864e07b955eccb62f809cf120"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.48"
-LINUX_VERSION_genericx86-64 = "4.14.48"
+LINUX_VERSION_genericx86 = "4.14.71"
+LINUX_VERSION_genericx86-64 = "4.14.71"
 LINUX_VERSION_edgerouter = "4.14.48"
 LINUX_VERSION_beaglebone-yocto = "4.14.48"
 LINUX_VERSION_mpc8315e-rdb = "4.14.48"
-- 
2.7.4


