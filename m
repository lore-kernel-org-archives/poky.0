Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B9FE007B9; Fri, 29 Aug 2014 21:46:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A5CDE0078E
	for <poky@yoctoproject.org>; Fri, 29 Aug 2014 21:46:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7U4kBOA008200
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Aug 2014 21:46:11 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Fri, 29 Aug 2014 21:46:11 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sat, 30 Aug 2014 00:46:05 -0400
Message-ID: <fb73ca54a1c2058ace807217886aabed7b792405.1409373783.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1409373783.git.bruce.ashfield@windriver.com>
References: <cover.1409373783.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] yocto-bsps: update SRCREVs to linux-yocto latest
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
X-List-Received-Date: Sat, 30 Aug 2014 04:46:13 -0000
Content-Type: text/plain

Bumping the reference boards to the linux-yocto 3.14 latest SRCREVs.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 2305c333ee28..551aebd27143 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -7,11 +7,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "41d5fe27dc3d3e769cb6af01770cac3d75a91e1a"
-SRCREV_machine_genericx86-64 ?= "96930820e0cb6d4b31d5e0c8f3174805f4a868b3"
-SRCREV_machine_edgerouter ?= "96930820e0cb6d4b31d5e0c8f3174805f4a868b3"
-SRCREV_machine_beaglebone ?= "96930820e0cb6d4b31d5e0c8f3174805f4a868b3"
-SRCREV_machine_mpc8315e-rdb ?= "824683a5531beffbfc0537f55ff477ad28e761fa"
+SRCREV_machine_genericx86 ?= "cc12b028076c0a7de042195fb73998aec351f4f2"
+SRCREV_machine_genericx86-64 ?= "47956b735bf67acca4f36af8c3dc18bef3e7c12e"
+SRCREV_machine_edgerouter ?= "47956b735bf67acca4f36af8c3dc18bef3e7c12e"
+SRCREV_machine_beaglebone ?= "47956b735bf67acca4f36af8c3dc18bef3e7c12e"
+SRCREV_machine_mpc8315e-rdb ?= "a6b4507afe330d589193bb50d7d961cd21ee3dd2"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


