Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66F23E00BC2; Thu, 18 Oct 2018 19:57:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05F75E00994
	for <poky@yoctoproject.org>; Thu, 18 Oct 2018 19:57:09 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Oct 2018 19:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,398,1534834800"; d="scan'208";a="79910184"
Received: from anmitta2-mobl1.png.intel.com ([10.221.22.60])
	by fmsmga008.fm.intel.com with ESMTP; 18 Oct 2018 19:57:08 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Fri, 19 Oct 2018 10:57:04 +0800
Message-Id: <20181019025704.8762-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20181019025704.8762-1-anuj.mittal@intel.com>
References: <20181019025704.8762-1-anuj.mittal@intel.com>
Subject: [meta-yocto-bsp][PATCH 2/2] linux-yocto: update genericx86* SRCREV for 4.18
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
X-List-Received-Date: Fri, 19 Oct 2018 02:57:09 -0000

Bump to kernel release v4.18.14.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index 9910c05186..bb599d8c5e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
-SRCREV_machine_genericx86-64 ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
+SRCREV_machine_genericx86    ?= "33859b3077c83d8a024946ba06a59990546fcbc7"
+SRCREV_machine_genericx86-64 ?= "33859b3077c83d8a024946ba06a59990546fcbc7"
 SRCREV_machine_edgerouter ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
 SRCREV_machine_beaglebone-yocto ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
 SRCREV_machine_mpc8315e-rdb ?= "20be2231bb047b02248d7f965c1c3af0c6be3a5e"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.18.9"
-LINUX_VERSION_genericx86-64 = "4.18.9"
+LINUX_VERSION_genericx86 = "4.18.14"
+LINUX_VERSION_genericx86-64 = "4.18.14"
 LINUX_VERSION_edgerouter = "4.18.9"
 LINUX_VERSION_beaglebone-yocto = "4.18.9"
 LINUX_VERSION_mpc8315e-rdb = "4.18.9"
-- 
2.17.1


