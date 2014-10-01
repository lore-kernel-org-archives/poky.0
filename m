Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F14AAE0087C; Tue, 30 Sep 2014 21:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42E8EE00888
	for <poky@yoctoproject.org>; Tue, 30 Sep 2014 21:53:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s914rV1Z006592
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 30 Sep 2014 21:53:31 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Tue, 30 Sep 2014 21:53:31 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 1 Oct 2014 00:53:22 -0400
Message-ID: <fc625484082de8e7d56a2cc5501bc5b30336a6e3.1412138833.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1412138833.git.bruce.ashfield@windriver.com>
References: <cover.1412138833.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] yocto-bsps: update h/w reference boards to the latest 3.14 SRCREVs
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
X-List-Received-Date: Wed, 01 Oct 2014 04:53:36 -0000
Content-Type: text/plain

The oe-core BSPs have been udpated to 3.14.19, so we follow suit with the
reference BSPs.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 551aebd27143..eb313ffe98c4 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -7,11 +7,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "cc12b028076c0a7de042195fb73998aec351f4f2"
-SRCREV_machine_genericx86-64 ?= "47956b735bf67acca4f36af8c3dc18bef3e7c12e"
-SRCREV_machine_edgerouter ?= "47956b735bf67acca4f36af8c3dc18bef3e7c12e"
-SRCREV_machine_beaglebone ?= "47956b735bf67acca4f36af8c3dc18bef3e7c12e"
-SRCREV_machine_mpc8315e-rdb ?= "a6b4507afe330d589193bb50d7d961cd21ee3dd2"
+SRCREV_machine_genericx86 ?= "a39fd81fa54776b2ac8c288251846890c3124dee"
+SRCREV_machine_genericx86-64 ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
+SRCREV_machine_edgerouter ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
+SRCREV_machine_beaglebone ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
+SRCREV_machine_mpc8315e-rdb ?= "4b2929392ec56ca8ef90cc98042609795c44aa3c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


