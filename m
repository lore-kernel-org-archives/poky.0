Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E1C0E00CED; Wed, 23 Jan 2019 00:10:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC1F2E00CE5
	for <poky@yoctoproject.org>; Wed, 23 Jan 2019 00:10:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0N8AFf9031425
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 23 Jan 2019 00:10:26 -0800
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 23 Jan 2019 00:10:05 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 23 Jan 2019 16:05:43 +0800
Message-ID: <20190123080544.39726-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH 1/2] meta-yocto-bsp: Add the v4.19 support for the non-x86 BSPs
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
X-List-Received-Date: Wed, 23 Jan 2019 08:10:37 -0000
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.19.bbappend          | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index 757f611b2e20..8e708cb6641c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -1,14 +1,27 @@
 KBRANCH_genericx86  = "v4.19/standard/base"
 KBRANCH_genericx86-64  = "v4.19/standard/base"
+KBRANCH_edgerouter = "v4.19/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v4.19/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v4.19/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
 SRCREV_machine_genericx86-64 ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_edgerouter ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_beaglebone-yocto ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_mpc8315e-rdb ?= "8b60f968823256f5d2889c4520d70299ca21411b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.19.14"
 LINUX_VERSION_genericx86-64 = "4.19.14"
+LINUX_VERSION_edgerouter = "4.19.14"
+LINUX_VERSION_beaglebone-yocto = "4.19.14"
+LINUX_VERSION_mpc8315e-rdb = "4.19.14"
-- 
2.14.4


