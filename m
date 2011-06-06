Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D397F4C8005F
	for <poky@yoctoproject.org>; Mon,  6 Jun 2011 11:21:12 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p56GKaTW021688;
	Mon, 6 Jun 2011 09:20:39 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon,  6 Jun 2011 12:19:23 -0400
Message-Id: <b6c584a887d69cef37a51aff50c29ca72d0446a4.1307377052.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1307377052.git.bruce.ashfield@windriver.com>
References: <cover.1307377052.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1307377052.git.bruce.ashfield@windriver.com>
References: <cover.1307377052.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: make e1000e structure common [commit: bec3f1e8c]
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
X-List-Received-Date: Mon, 06 Jun 2011 16:21:13 -0000

During work on 1.1 BSPs, some driver options changed. The
result was that the upstream fix b1d670f10e8078485884f0cf7e384d890909aeaa
needs to be available for all BSPs.

These SRCREV updates are the result of making that commit common.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
index 1c047dc..84e31e9 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -3,11 +3,11 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow = "eb2a1892c00af7fab33468a517746a8aad77524f"
-SRCREV_machine_atom-pc = "002bf30a72fa11c77094b25bead5297f842263d8"
-SRCREV_machine_routerstationpro = "a210863ce9f16d371ed955d54af97cc41c87bb0e"
-SRCREV_machine_mpc8315e-rdb = "9985e4c7445696dfd5384553b972d191bf672c76"
-SRCREV_machine_beagleboard = "30d267e93a2671718ceeccf3e4ecbae2536902e0"
+SRCREV_machine_emenlow = "7dd88fc03db50b131e4a96e6af8036a836ccc300"
+SRCREV_machine_atom-pc = "1ccece1d42a598fef0f5f9666c9c81315302c129"
+SRCREV_machine_routerstationpro = "8b5f5129292bb218435ac9ffa1fb9943bdc7d456"
+SRCREV_machine_mpc8315e-rdb = "dcf359635969abdbdd15f60b702ab17ed6174892"
+SRCREV_machine_beagleboard = "9cb5c3fb1634e541cacceeb8c8cabe88afa5b080"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.0.4


