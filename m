Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B950E00A94; Mon, 17 Aug 2015 08:53:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51CF3E0097F
	for <poky@yoctoproject.org>; Mon, 17 Aug 2015 08:53:24 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 17 Aug 2015 08:53:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,695,1432623600"; d="scan'208";a="627075279"
Received: from unknown (HELO swold-mobl.amr.corp.intel.com) ([10.254.181.93])
	by orsmga003.jf.intel.com with ESMTP; 17 Aug 2015 08:53:23 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 17 Aug 2015 08:53:22 -0700
Message-Id: <1439826802-10019-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Cc: dvhart@linux.intel.com
Subject: [PATCH] genericx86*: Update BSPs to use 4.1 Kernel
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
X-List-Received-Date: Mon, 17 Aug 2015 15:53:28 -0000

This adds the initial bbappend to meta-yocto-bsp for the 4.1 kernel
It also sets up the PREFERRED_VERSION for the X86 and X86-64 Generic
BSPs to the 4.1 kernel.

This has been tested on MinnowBoard (32bit) MinnowBoard Max (64bit)
along with both 32 and 64 bit versions of the NUC.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc    |  2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 11 +++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 840cc10..7c10b56 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86-base.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.19%"
+PREFERRED_VERSION_linux-yocto ?= "4.1%"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
             ${XSERVER_X86_EXT} \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
new file mode 100644
index 0000000..a5fe0e6
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -0,0 +1,11 @@
+KBRANCH_genericx86  = "standard/base"
+KBRANCH_genericx86-64  = "standard/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86 ?= "4e30e64c44df9e59bd13239951bb8d2b5b276e6f"
+SRCREV_machine_genericx86-64 ?= "4e30e64c44df9e59bd13239951bb8d2b5b276e6f"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.1.0


