Return-Path: <zhe.he@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7A40E0169C; Mon, 18 Jun 2018 20:02:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B02BFE010A5
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 20:02:09 -0700 (PDT)
Received: from ala-blade48.wrs.com (ala-blade48.wrs.com [147.11.105.68])
	by mail.windriver.com (8.15.2/8.15.1) with SMTP id w5J327oe006865;
	Mon, 18 Jun 2018 20:02:07 -0700 (PDT)
Received: by ala-blade48.wrs.com (sSMTP sendmail emulation);
	Mon, 18 Jun 2018 20:02:07 -0700
From: He Zhe <zhe.he@windriver.com>
To: bruce.ashfield@windriver.com, kexin.hao@windriver.com,
	poky@yoctoproject.org
Date: Mon, 18 Jun 2018 20:02:07 -0700
Message-Id: <20180619030207.23381-1-zhe.he@windriver.com>
X-Mailer: git-send-email 2.11.0
Subject: [yocto] [PATCH] meta-yocto-bsp: Let yocto BSPs be able to build with linux-yocto-dev
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
X-List-Received-Date: Tue, 19 Jun 2018 03:02:10 -0000

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto-dev.bbappend         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
new file mode 100644
index 0000000000..f044dafb4d
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -0,0 +1,15 @@
+KBRANCH_genericx86  = "standard/base"
+KBRANCH_genericx86-64  = "standard/base"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone-yocto = "standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-- 
2.11.0


