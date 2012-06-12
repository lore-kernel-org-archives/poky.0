Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0710CE0070B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:52:39 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5CKqZxA026766;
	Tue, 12 Jun 2012 13:52:36 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue, 12 Jun 2012 16:52:15 -0400
Message-Id: <35ca6c5c7f4f85aa808f7704e47b67edfaea9258.1339534218.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339534218.git.bruce.ashfield@windriver.com>
References: <cover.1339534218.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339534218.git.bruce.ashfield@windriver.com>
References: <cover.1339534218.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] meta-yocto/linux-yocto: fix routerstationpro build
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
X-List-Received-Date: Tue, 12 Jun 2012 20:52:40 -0000

The update from v3.0.24 to v3.0.32 removed a lock that the routerstationpro
BSP was using, and broke the build.

Updating the SRCREV to pickup a fix for the new lock and fix the board
build.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index d0608bc..6de9def 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,7 +4,7 @@ KBRANCH_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "yocto/standard/beagleboard"
 
 SRCREV_machine_atom-pc ?= "45d64709c00fce6e9b76a638c4ca6f30a8e9d25a"
-SRCREV_machine_routerstationpro ?= "21bd4a0a3b0f061e4640dd1011ebc94d122b5e40"
+SRCREV_machine_routerstationpro ?= "af74f58ef6ffdc68cc77d314ad31bd6a322309d3"
 SRCREV_machine_mpc8315e-rdb ?= "0c781e306559d5e9816e202a60aa2543f4eea39e"
 SRCREV_machine_beagleboard ?= "567c989c90ce5f2c62f6ef788be763150b65a0fb"
 
-- 
1.7.5.4


