Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A883E00C5F; Wed,  9 Jan 2019 01:41:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08E83E00BED
	for <poky@yoctoproject.org>; Wed,  9 Jan 2019 01:41:13 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jan 2019 01:41:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,456,1539673200"; d="scan'208";a="134317545"
Received: from andromeda02.png.intel.com ([10.221.183.11])
	by fmsmga004.fm.intel.com with ESMTP; 09 Jan 2019 01:41:12 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Jan 2019 17:09:52 +0800
Message-Id: <1547024992-25233-1-git-send-email-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-yocto-bsp][PATCH] linux-yocto: update genericx86* SRCREV for 4.18
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
X-List-Received-Date: Wed, 09 Jan 2019 09:41:15 -0000

Bump to kernel release v4.18.22

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index e8eaa3b..ea414f9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "9eddc793f95f4e7e283996a007e205622c633539"
-SRCREV_machine_genericx86-64 ?= "9eddc793f95f4e7e283996a007e205622c633539"
+SRCREV_machine_genericx86    ?= "db2d813869a0501782469ecdb17e277a501c9f57"
+SRCREV_machine_genericx86-64 ?= "db2d813869a0501782469ecdb17e277a501c9f57"
 SRCREV_machine_edgerouter ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
 SRCREV_machine_beaglebone-yocto ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
 SRCREV_machine_mpc8315e-rdb ?= "20be2231bb047b02248d7f965c1c3af0c6be3a5e"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.18.21"
-LINUX_VERSION_genericx86-64 = "4.18.21"
+LINUX_VERSION_genericx86 = "4.18.22"
+LINUX_VERSION_genericx86-64 = "4.18.22"
 LINUX_VERSION_edgerouter = "4.18.9"
 LINUX_VERSION_beaglebone-yocto = "4.18.9"
 LINUX_VERSION_mpc8315e-rdb = "4.18.9"
-- 
2.7.4


