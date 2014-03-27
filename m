Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30084E00B88
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 11:30:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2RIUAS0026291
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Mar 2014 11:30:10 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Thu, 27 Mar 2014 11:30:06 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Mar 2014 14:29:59 -0400
Message-ID: <4c51e9aedecde4f0e9f50deecbdbc61e061d26af.1395944862.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395944862.git.bruce.ashfield@windriver.com>
References: <cover.1395944862.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 6/6] yocto-bsps: remove linux-yocto 3.8 bbappend
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
X-List-Received-Date: Thu, 27 Mar 2014 18:30:12 -0000
Content-Type: text/plain

Yocto 1.6 will support the LTSI 3.4/3.10 kernels and the 3.14 kernel. As
such, we remove the 3.8 linux-yocto recipes to keep our number of supported
kernels at three.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
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


