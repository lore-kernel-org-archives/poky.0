Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11AF8E013BB
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:06 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C3019543;
	Thu, 7 Jun 2012 13:04:02 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:42 -0400
Message-Id: <7df6f87492955f64a6d9ff580d488bdc5be2d4f6.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/7] linux-yocto/meta-yocto: update to v3.2.18
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
X-List-Received-Date: Thu, 07 Jun 2012 20:04:06 -0000

Updating the 3.2 linux-yocto SRCREVs to pick up the v3.2.18
-stable release.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
index 589904f..815650a 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -8,10 +8,10 @@ KBRANCH_routerstationpro = "standard/default/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/default/beagleboard"
 
-SRCREV_machine_atom-pc ?= "f29531a41df15d74be5ad47d958e4117ca9e489e"
-SRCREV_machine_routerstationpro ?= "a6755fa847a9362470d31a6d71d08069ece749ff"
-SRCREV_machine_mpc8315e-rdb ?= "818339ef5a53e281e28fdcf10aca1183c4ff71e0"
-SRCREV_machine_beagleboard ?= "90e3138c5a2a390dd6ddf2ed84fe5a9756d43397"
+SRCREV_machine_atom-pc ?= "624509ef194d14aa498ed6f1620093b8e40e3a30"
+SRCREV_machine_routerstationpro ?= "6eb6f908bbca493bbce4b7c460f8bf07272a78a9"
+SRCREV_machine_mpc8315e-rdb ?= "bd08c2cdee3c980060ee6d3206ece374570f74d2"
+SRCREV_machine_beagleboard ?= "ab826acad523e8858dcf867847a732c7288b5dc7"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


