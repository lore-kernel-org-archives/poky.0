Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C90ADE00B58; Tue, 20 Sep 2016 05:01:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E2A1E00AB6;
	Tue, 20 Sep 2016 05:00:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8KC0j60025552
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Sep 2016 05:00:45 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 05:00:44 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 20:00:24 +0800
Message-ID: <20160920120025.159211-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [meta-yocto-bsp] meta-yocto-bsp: linux 4.4: bump to the latest stable version for the non-x86 BSPs
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
X-List-Received-Date: Tue, 20 Sep 2016 12:01:05 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 4a7f7e25f55b..50006e409c69 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "0a0c93f29c0d65c00abdd2f6d1eb89134fae9525"
 SRCREV_machine_genericx86-64 ?= "0a0c93f29c0d65c00abdd2f6d1eb89134fae9525"
-SRCREV_machine_edgerouter ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
-SRCREV_machine_beaglebone ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
-SRCREV_machine_mpc8315e-rdb ?= "94ac8da44990afd2d43c0ccd713420fb1cfa0792"
+SRCREV_machine_edgerouter ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
+SRCREV_machine_beaglebone ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
+SRCREV_machine_mpc8315e-rdb ?= "2d7b24e9c0d40d8317a0b9e1b0eefb8280e50d5f"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,3 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.18"
 LINUX_VERSION_genericx86-64 = "4.4.18"
+LINUX_VERSION_edgerouter = "4.4.20"
+LINUX_VERSION_beaglebone = "4.4.20"
+LINUX_VERSION_mpc8315e-rdb = "4.4.20"
-- 
2.9.3


