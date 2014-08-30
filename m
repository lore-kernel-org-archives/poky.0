Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BF04E007A2; Fri, 29 Aug 2014 21:46:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FB0BE00799
	for <poky@yoctoproject.org>; Fri, 29 Aug 2014 21:46:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s7U4kAFH013892
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Aug 2014 21:46:10 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Fri, 29 Aug 2014 21:46:10 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sat, 30 Aug 2014 00:46:04 -0400
Message-ID: <98b488777317108bcb405e2be0910312a314b55b.1409373783.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1409373783.git.bruce.ashfield@windriver.com>
References: <cover.1409373783.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] yocto-bsps: remove 3.4 bbappend
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
X-List-Received-Date: Sat, 30 Aug 2014 04:46:14 -0000
Content-Type: text/plain

The oe-core 3.4 recipes have been removed, so we drop our associated
bbappend from the yocto-bsps.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend | 7 -------
 1 file changed, 7 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
deleted file mode 100644
index f2023376ae79..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
-
-SRCREV_machine_genericx86 ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
-SRCREV_machine_mpc8315e-rdb ?= "ed373937e5460d3321e1f243cb89ed512d0c9047"
-
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-
-- 
1.8.1.2


