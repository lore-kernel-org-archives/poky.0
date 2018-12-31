Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13155E00A54; Sun, 30 Dec 2018 18:04:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B9BE0097C
	for <poky@yoctoproject.org>; Sun, 30 Dec 2018 18:04:14 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Dec 2018 18:04:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,420,1539673200"; d="scan'208";a="130281435"
Received: from andromeda02.png.intel.com ([10.221.183.11])
	by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2018 18:04:14 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: poky@yoctoproject.org
Date: Mon, 31 Dec 2018 09:32:53 +0800
Message-Id: <1546219973-28826-1-git-send-email-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-yocto-bsp][PATCH V2 1/2] linux-yocto: update genericx86* SRCREV for 4.18
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
X-List-Received-Date: Mon, 31 Dec 2018 02:04:17 -0000

Bump kernel version to v4.18.21.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index bb599d8..e8eaa3b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "33859b3077c83d8a024946ba06a59990546fcbc7"
-SRCREV_machine_genericx86-64 ?= "33859b3077c83d8a024946ba06a59990546fcbc7"
+SRCREV_machine_genericx86    ?= "9eddc793f95f4e7e283996a007e205622c633539"
+SRCREV_machine_genericx86-64 ?= "9eddc793f95f4e7e283996a007e205622c633539"
 SRCREV_machine_edgerouter ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
 SRCREV_machine_beaglebone-yocto ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
 SRCREV_machine_mpc8315e-rdb ?= "20be2231bb047b02248d7f965c1c3af0c6be3a5e"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.18.14"
-LINUX_VERSION_genericx86-64 = "4.18.14"
+LINUX_VERSION_genericx86 = "4.18.21"
+LINUX_VERSION_genericx86-64 = "4.18.21"
 LINUX_VERSION_edgerouter = "4.18.9"
 LINUX_VERSION_beaglebone-yocto = "4.18.9"
 LINUX_VERSION_mpc8315e-rdb = "4.18.9"
-- 
2.7.4


