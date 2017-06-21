Return-Path: <yin.thong.choong@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D962E00C5B; Wed, 21 Jun 2017 19:14:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 739BAE00C6B
	for <poky@yoctoproject.org>; Wed, 21 Jun 2017 19:13:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP; 21 Jun 2017 19:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,371,1493708400"; d="scan'208";a="1163288211"
Received: from echidna.jf.intel.com ([10.54.77.34])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2017 19:13:55 -0700
From: Choong YinThong <yin.thong.choong@intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Jun 2017 12:04:17 -0700
Message-Id: <1498071857-173033-1-git-send-email-yin.thong.choong@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH v2] linux-yocto-custom: include a user feature description file
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
X-List-Received-Date: Thu, 22 Jun 2017 02:14:11 -0000

Missing user feature description file
when select linux-yocto-custom in script/yocto-bsp
and causes failure in script/yocto-kernel feature add.

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


