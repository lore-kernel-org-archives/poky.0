Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01298E00C1F
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 11:02:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2VI28ou018271
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 31 Mar 2014 11:02:09 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 31 Mar 2014 11:02:08 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 31 Mar 2014 14:01:56 -0400
Message-ID: <98b2a71014fc990c5768a013fe5d411960888744.1396288654.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1396288654.git.bruce.ashfield@windriver.com>
References: <cover.1396288654.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 3/7] yocto-bsps: remove linux-yocto 3.8 bbappend
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
X-List-Received-Date: Mon, 31 Mar 2014 18:02:12 -0000
Content-Type: text/plain

Yocto 1.6 will support the LTSI 3.4/3.10 kernels and the 3.14 kernel. As
such, we remove the 3.8 linux-yocto recipes to keep our number of supported
kernels at three.

(From meta-yocto rev: 622c2582de7f413c7130c52fa143a06dde2bd353)

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend     | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
deleted file mode 100644
index 216b384a4334..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ /dev/null
@@ -1,19 +0,0 @@
-KBRANCH_genericx86  = "standard/common-pc/base"
-KBRANCH_routerstationpro = "standard/routerstationpro"
-KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
-KBRANCH_beagleboard = "standard/beagleboard"
-
-SRCREV_machine_genericx86 ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
-SRCREV_machine_routerstationpro ?= "4a94f39d429fa284ce69b13bb635b29b1319e372"
-SRCREV_machine_mpc8315e-rdb ?= "f467c72937de0e4a2a66e21b9855c4aee844f936"
-SRCREV_machine_beagleboard ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
-
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-
-# routerstationpro has a flash size of 16mb
-KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
-
-KMACHINE_genericx86 = "common-pc"
-- 
1.8.1.2


