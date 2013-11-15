Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C00CE015D3
	for <poky@yoctoproject.org>; Fri, 15 Nov 2013 04:00:01 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Nov 2013 04:00:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,707,1378882800"; d="scan'208";a="434001632"
Received: from paulonei-mobl.ger.corp.intel.com (HELO
	helios.ger.corp.intel.com) ([10.252.121.149])
	by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2013 03:59:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 15 Nov 2013 11:59:34 +0000
Message-Id: <1384516774-17980-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] genericx86-common.inc: add eee-acpi-scripts to MACHINE_EXTRA_RRECOMMENDS
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
X-List-Received-Date: Fri, 15 Nov 2013 12:00:07 -0000

Add this back here after removing it from ia32-base.inc in OE-Core.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 67a880f..c5ef358 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -13,7 +13,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
             ${XSERVER_IA32_MODESETTING} \
            "
 
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d eee-acpi-scripts"
 
 GLIBC_ADDONS = "nptl"
 
-- 
1.8.1.2


