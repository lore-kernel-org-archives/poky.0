Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2456C4C80ADD
	for <poky@yoctoproject.org>; Tue, 26 Jul 2011 22:58:19 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6R3wFMR016749;
	Tue, 26 Jul 2011 20:58:16 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue, 26 Jul 2011 23:58:13 -0400
Message-Id: <a02b26818337f27c46abaf4c2ab1913337f56bc8.1311738987.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1311738987.git.bruce.ashfield@windriver.com>
References: <cover.1311738987.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1311738987.git.bruce.ashfield@windriver.com>
References: <cover.1311738987.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: create linux-yocto 3.0 bbappend
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
X-List-Received-Date: Wed, 27 Jul 2011 03:58:20 -0000

Creating a 3.0 bbappend to enable work on the hardware yocto targets.
The SRCREV updates in this file are accurate, but compatibility
has been commented out until support can be verified.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..ef580a5
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,15 @@
+KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
+KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
+KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "yocto/standard/beagleboard"
+
+SRCREV_machine_emenlow = "374340f311d7b035451f45e29bab5e1b8c058ce8"
+SRCREV_machine_atom-pc = "fdd23ed909594ba6c32c894ee6536cf823b0377f"
+SRCREV_machine_routerstationpro = "fd6d538850a28413e3c4867b905c56039773df3a"
+SRCREV_machine_mpc8315e-rdb = "5d3c0b06071abd663c7790df141060ae462660a9"
+SRCREV_machine_beagleboard = "32631d785b0b907e5c14435ef7531ed041ab8c64"
+
+# COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+# COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+# COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.4.1


