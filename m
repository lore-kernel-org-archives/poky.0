Return-Path: <yin.thong.choong@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 099EFE00BC4; Wed, 21 Jun 2017 01:44:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7634BE00BBF
	for <poky@yoctoproject.org>; Wed, 21 Jun 2017 01:43:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 21 Jun 2017 01:43:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,368,1493708400"; d="scan'208";a="1162949578"
Received: from echidna.jf.intel.com ([10.54.77.34])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2017 01:43:58 -0700
From: Choong YinThong <yin.thong.choong@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Jun 2017 18:34:26 -0700
Message-Id: <1498008866-168770-1-git-send-email-yin.thong.choong@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] script/yocto-bsp: Fail to add kernel feature in custom linux kernel
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
X-List-Received-Date: Wed, 21 Jun 2017 08:44:01 -0000

Missing file {machine}-user-feature.scc on
yocto-bsp custom linux kernel creation
and causes failure in yocto-kernel feature add.

[YOCTO #11585]

Signed-off-by: Choong YinThong <yin.thong.choong@intel.com>
---
 .../target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb        | 1 +
 .../recipes-kernel/linux/linux-yocto-custom/machine-user-features.scc    | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-features.scc

diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
index fda955b..3ba4226 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
@@ -42,6 +42,7 @@ SRC_URI += "file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 {{ if kernel_choice == "custom" and custom_kernel_need_kbranch == "y" and custom_kernel_kbranch and custom_kernel_kbranch != "master": }}
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-features.scc b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-features.scc
new file mode 100644
index 0000000..85be26d
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-features.scc
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-features.scc
\ No newline at end of file
-- 
2.7.4


