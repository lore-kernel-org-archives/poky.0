Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B0DEE00CAE; Tue,  8 Sep 2015 06:45:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BAC4E00AF0
	for <poky@yoctoproject.org>; Tue,  8 Sep 2015 06:45:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t88Djadu012990
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 8 Sep 2015 06:45:36 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.235.1; Tue, 8 Sep 2015 06:45:36 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 8 Sep 2015 09:45:35 -0400
Message-ID: <1441719935-22898-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH] bsps: update 3.14 SRCREVs
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
X-List-Received-Date: Tue, 08 Sep 2015 13:45:39 -0000
Content-Type: text/plain

Updating the 3.14 SRCREVs to ensure that both gcc 4.9.x and gcc 5.x
produce working images for all reference BSPs.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
index d1497a8038a4..589ece73c25d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -7,11 +7,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "550f5379bc4b001f656e7c98165606e543d0858c"
-SRCREV_machine_genericx86-64 ?= "302ca233332fd364ecd028a0cf21b4cdc045e056"
-SRCREV_machine_edgerouter ?= "302ca233332fd364ecd028a0cf21b4cdc045e056"
-SRCREV_machine_beaglebone ?= "302ca233332fd364ecd028a0cf21b4cdc045e056"
-SRCREV_machine_mpc8315e-rdb ?= "fdf979958c000ff805cd17be17310167becd6bb9"
+SRCREV_machine_genericx86 ?= "af1f7f586bd32d39c057f17606991b887eadb389"
+SRCREV_machine_genericx86-64 ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
+SRCREV_machine_edgerouter ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
+SRCREV_machine_beaglebone ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
+SRCREV_machine_mpc8315e-rdb ?= "1cb1bbaf63cecc918cf36c89819a7464af4c4b13"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.1.0


