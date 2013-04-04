Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BDCBE014BB
	for <poky@yoctoproject.org>; Thu,  4 Apr 2013 15:09:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2013 15:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,411,1363158000"; d="scan'208";a="313831815"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2013 15:09:30 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  4 Apr 2013 17:09:19 -0500
Message-Id: <aafc29f20b45ea9d17fb05792e81c4b30b23c02c.1365112661.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
References: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1365112661.git.tom.zanussi@linux.intel.com>
References: <cover.1365112661.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 4/8] yocto-bsp: pass in file object to replace_file()
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
X-List-Received-Date: Thu, 04 Apr 2013 22:09:31 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Pass the file object instead of the filename to replace_file for the
custom template, as now required by replace_file().

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig" | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"
index e544a0a..ceb0ffa 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"	
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"	
@@ -2,4 +2,4 @@
 # Placeholder for custom default kernel configuration.  yocto-bsp will
 # replace this file with a user-specified defconfig.
 #
-{{ if custom_kernel_defconfig: replace_file(current_file, custom_kernel_defconfig) }}
+{{ if custom_kernel_defconfig: replace_file(of, custom_kernel_defconfig) }}
-- 
1.7.11.4


