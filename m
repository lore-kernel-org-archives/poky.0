Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C769E00C88; Wed, 28 Mar 2018 03:09:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 035B6E00B52
	for <poky@yoctoproject.org>; Wed, 28 Mar 2018 03:09:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w2SA9JmJ016855
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 28 Mar 2018 03:09:19 -0700 (PDT)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 28 Mar 2018 03:09:18 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 28 Mar 2018 18:12:08 +0800
Message-ID: <20180328101209.7407-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH 1/2] meta-yocto-bsp: bump to the latest v4.12 stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Wed, 28 Mar 2018 10:09:20 -0000
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
Hi,

These two patches are based on the patches [1] from Anuj Mittal.

[1] https://lists.yoctoproject.org/pipermail/yocto/2018-March/040524.html

 .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 56e700d491e8..e28360b69cb9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
 SRCREV_machine_genericx86-64 ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
-SRCREV_machine_edgerouter ?= "257f843ea367744620f1d92910afd2f454e31483"
-SRCREV_machine_beaglebone-yocto ?= "257f843ea367744620f1d92910afd2f454e31483"
-SRCREV_machine_mpc8315e-rdb ?= "014560874f9eb2a86138c9cc35046ff1720485e1"
+SRCREV_machine_edgerouter ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
+SRCREV_machine_beaglebone-yocto ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
+SRCREV_machine_mpc8315e-rdb ?= "55fcfbee2560f57a490c5724ac5b5cb49bacb01c"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
@@ -23,6 +23,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.21"
 LINUX_VERSION_genericx86-64 = "4.12.21"
-LINUX_VERSION_edgerouter = "4.12.19"
-LINUX_VERSION_beaglebone-yocto = "4.12.19"
-LINUX_VERSION_mpc8315e-rdb = "4.12.19"
+LINUX_VERSION_edgerouter = "4.12.21"
+LINUX_VERSION_beaglebone-yocto = "4.12.21"
+LINUX_VERSION_mpc8315e-rdb = "4.12.21"
-- 
2.9.3


