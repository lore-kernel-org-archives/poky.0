Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EED3DE00E9E; Mon, 19 Feb 2018 16:33:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39034E00EB8
	for <poky@yoctoproject.org>; Mon, 19 Feb 2018 16:33:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 16:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,537,1511856000"; d="scan'208";a="205484331"
Received: from anmitta2-mobl1.png.intel.com ([10.221.20.104])
	by fmsmga006.fm.intel.com with ESMTP; 19 Feb 2018 16:33:55 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Feb 2018 08:33:47 +0800
Message-Id: <1519086827-7192-3-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519086827-7192-1-git-send-email-anuj.mittal@intel.com>
References: <1519086827-7192-1-git-send-email-anuj.mittal@intel.com>
Subject: [meta-yocto][PATCH 3/3] linux-yocto: introduce 4.15 bbappend for genericx86* BSPs
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
X-List-Received-Date: Tue, 20 Feb 2018 00:33:57 -0000

Sync with stable kernel release 4.15.3 in oe-core.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.15.bbappend         | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
new file mode 100644
index 0000000..a30a924
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
@@ -0,0 +1,14 @@
+KBRANCH_genericx86  = "v4.15/standard/base"
+KBRANCH_genericx86-64  = "v4.15/standard/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86    ?= "a6a3a6a73d628798fc6eb6832bf829a9ea43f6bd"
+SRCREV_machine_genericx86-64 ?= "a6a3a6a73d628798fc6eb6832bf829a9ea43f6bd"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+
+LINUX_VERSION_genericx86 = "4.15.3"
+LINUX_VERSION_genericx86-64 = "4.15.3"
-- 
2.7.4


