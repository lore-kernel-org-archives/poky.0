Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E58E009EB; Fri,  5 Jun 2015 08:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3769E009E7
	for <poky@yoctoproject.org>; Fri,  5 Jun 2015 08:25:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t55FPtcT027604
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 5 Jun 2015 08:25:55 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.224.2; Fri, 5 Jun 2015 08:25:54 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <ross.burton@intel.com>
Date: Fri, 5 Jun 2015 11:25:54 -0400
Message-ID: <1433517954-17143-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH] bsps: update SRCREVs to the 3.19 latest
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
X-List-Received-Date: Fri, 05 Jun 2015 15:26:00 -0000
Content-Type: text/plain

Updating the reference BSP's SRCREVs to pick up the latest 3.19 changes.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
index e6aea1c4058b..c87f840ef43b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -7,11 +7,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "0befa35f40997c90936047e57fbbdd7edbf7e525"
-SRCREV_machine_genericx86-64 ?= "0befa35f40997c90936047e57fbbdd7edbf7e525"
-SRCREV_machine_edgerouter ?= "2a5e3b16afa1e599df55aa4c3341c66f317172c9"
-SRCREV_machine_beaglebone ?= "2a5e3b16afa1e599df55aa4c3341c66f317172c9"
-SRCREV_machine_mpc8315e-rdb ?= "2d5ac895707436a0d9afcbb96cd3b68a6e443771"
+SRCREV_machine_genericx86 ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
+SRCREV_machine_genericx86-64 ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
+SRCREV_machine_edgerouter ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
+SRCREV_machine_beaglebone ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
+SRCREV_machine_mpc8315e-rdb ?= "2893f3e8ece72f6f47329714d6afe4c9c545bbf9"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.1.0


