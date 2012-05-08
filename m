Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9FCE01206
	for <poky@yoctoproject.org>; Tue,  8 May 2012 07:52:35 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(yow-bashfiel-l1.corp.ad.wrs.com [128.224.145.171])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q48EqWsU018399;
	Tue, 8 May 2012 07:52:33 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue,  8 May 2012 10:52:30 -0400
Message-Id: <8ace3005d974562b7a5f52e8f683cebd2337a4af.1336488562.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1336488562.git.bruce.ashfield@windriver.com>
References: <cover.1336488562.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1336488562.git.bruce.ashfield@windriver.com>
References: <cover.1336488562.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] meta-yocto/linux-yocto-3.0: update branch mappings for new tools
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 May 2012 14:52:35 -0000

Updates to the kern-tools to be more flexible and support multiple
upstream repository formats means that KMACHINE should really only
map to a machine and that KBRANCH should specify branch information.

To adapt to this change, we split the hardware reference boards into
KMACHINE and KBRANCH mappings.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 ++++++----
 1 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 68c7cad..4c483ca 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,8 +1,10 @@
-KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
-KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
-KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "yocto/standard/beagleboard"
+KBRANCH_atom-pc  = "yocto/standard/common-pc/atom-pc"
+KBRANCH_routerstationpro = "yocto/standard/routerstationpro"
+KBRANCH_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
+KBRANCH_beagleboard = "yocto/standard/beagleboard"
 
+# temporary until 3.0 tree is updated to have machine mapping
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 
 SRCREV_machine_atom-pc ?= "afdda882f902dd28693cd8701a7d497958290f09"
 SRCREV_machine_routerstationpro ?= "220d89fcf345ee28fb0cdcf0f33f83b3dc7c460f"
-- 
1.7.5.4


