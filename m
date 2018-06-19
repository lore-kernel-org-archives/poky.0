Return-Path: <zhe.he@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF3ACE0174B; Mon, 18 Jun 2018 20:03:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57983E00E84
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 20:03:03 -0700 (PDT)
Received: from ala-blade48.wrs.com (ala-blade48.wrs.com [147.11.105.68])
	by mail.windriver.com (8.15.2/8.15.1) with SMTP id w5J331q9006979;
	Mon, 18 Jun 2018 20:03:01 -0700 (PDT)
Received: by ala-blade48.wrs.com (sSMTP sendmail emulation);
	Mon, 18 Jun 2018 20:03:01 -0700
From: He Zhe <zhe.he@windriver.com>
To: bruce.ashfield@windriver.com, kexin.hao@windriver.com,
	poky@yoctoproject.org
Date: Mon, 18 Jun 2018 20:03:01 -0700
Message-Id: <20180619030301.24897-1-zhe.he@windriver.com>
X-Mailer: git-send-email 2.11.0
Subject: [yocto] [PATCH] meta-yocto-bsp: mpc8315e-rdb: Change kernel provider assignment to a weaker one
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
X-List-Received-Date: Tue, 19 Jun 2018 03:03:03 -0000

Currently mpc8315e-rdb.conf comes after local.conf during parsing. We should
give local.conf a chance to overwrite the kernel provider assignment, like
other BSPs.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 34f12303a1..72f52912eb 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -15,7 +15,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
 PREFERRED_VERSION_linux-yocto ?= "4.15%"
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-- 
2.11.0


