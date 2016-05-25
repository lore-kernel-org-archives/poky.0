Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4A6DE00D26; Wed, 25 May 2016 08:16:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C963E00D1F
	for <poky@yoctoproject.org>; Wed, 25 May 2016 08:16:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u4PFGX3I007708
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 May 2016 08:16:33 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Wed, 25 May 2016 08:16:32 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 25 May 2016 11:16:32 -0400
Message-ID: <1464189392-4070-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH] yocto-bsps: update to 4.4.11
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
X-List-Received-Date: Wed, 25 May 2016 15:16:37 -0000
Content-Type: text/plain

Updating the h/w reference BSPs to the korg stable 4.4.11, and
for gcc6 compilation fixes.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index a7e351a96345..c87a3e0d217e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "fe7ff38448d530db27ac31cbb086cb6fdf94bb7f"
 SRCREV_machine_genericx86-64 ?= "fe7ff38448d530db27ac31cbb086cb6fdf94bb7f"
-SRCREV_machine_edgerouter ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
-SRCREV_machine_beaglebone ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
-SRCREV_machine_mpc8315e-rdb ?= "df00877ef9387b38b9601c82db57de2a1b23ce53"
+SRCREV_machine_edgerouter ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
+SRCREV_machine_beaglebone ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
+SRCREV_machine_mpc8315e-rdb ?= "94ac8da44990afd2d43c0ccd713420fb1cfa0792"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.5.0


