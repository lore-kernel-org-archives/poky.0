Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD9B2E00C64; Tue, 17 Jun 2014 09:13:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80643E00B5C
	for <poky@yoctoproject.org>; Tue, 17 Jun 2014 09:13:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5HGDW5q003762
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jun 2014 09:13:32 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Tue, 17 Jun 2014 09:13:32 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 17 Jun 2014 12:13:21 -0400
Message-ID: <62dedeb900a7d5721f4d798c94d096fbc13220b5.1403021468.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1403021468.git.bruce.ashfield@windriver.com>
References: <cover.1403021468.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 4/4] meta-yocto-bsps: update 3.14 SRCREVs
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
X-List-Received-Date: Tue, 17 Jun 2014 16:13:43 -0000
Content-Type: text/plain

Updating the h/w reference BSPs to the latest 3.14 content.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
index f218bb15276d..2305c333ee28 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -7,11 +7,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
-SRCREV_machine_genericx86-64 ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
-SRCREV_machine_edgerouter ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
-SRCREV_machine_beaglebone ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
-SRCREV_machine_mpc8315e-rdb ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+SRCREV_machine_genericx86 ?= "41d5fe27dc3d3e769cb6af01770cac3d75a91e1a"
+SRCREV_machine_genericx86-64 ?= "96930820e0cb6d4b31d5e0c8f3174805f4a868b3"
+SRCREV_machine_edgerouter ?= "96930820e0cb6d4b31d5e0c8f3174805f4a868b3"
+SRCREV_machine_beaglebone ?= "96930820e0cb6d4b31d5e0c8f3174805f4a868b3"
+SRCREV_machine_mpc8315e-rdb ?= "824683a5531beffbfc0537f55ff477ad28e761fa"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


