Return-Path: <keller.eric@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86EBAE01822
	for <poky@yoctoproject.org>; Thu,  7 Nov 2013 14:04:21 -0800 (PST)
Received: by mail-ea0-f175.google.com with SMTP id k10so625105eaj.20
	for <poky@yoctoproject.org>; Thu, 07 Nov 2013 14:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=RJ11tpHmPBB2OrGAqeM+QQb/Y9qcNRa3HBxzTZqA2Mw=;
	b=iMsmhCeGFbRWlf0yU07G1J2jffH2hoqfDTa50683cNdLSWU7fZkZ/pi0lh/R0s8co+
	2dBZS7Dd9fLoYve+Lult9hrZG4g6Sw72RrYGnTJ7wJswOvCt0kNYg3jLiOFf3C3FrwYn
	O62BmMw1NISYEjCc13dD+rB0Gfo8mExWle6qBTQXd39zeaMc2ziAc6iQeIKSvvH0YeXa
	KdQtcNCvWuJTwhM+FaKC090aEXSBxAH19lpTSf1Kc16ohqSdNI+l9GUJsI75IM8adKq7
	IEM4I78Sn6tYK+DAwT6W2rTBuFIHiOo3J4ft0/WapOrlryf8cQAJf+FpmDtPAZiTyX5/
	Og3A==
X-Received: by 10.14.219.198 with SMTP id m46mr11660331eep.41.1383861861080;
	Thu, 07 Nov 2013 14:04:21 -0800 (PST)
Received: from localhost.localdomain (77-57-96-182.dclient.hispeed.ch.
	[77.57.96.182])
	by mx.google.com with ESMTPSA id 8sm14422272eem.15.2013.11.07.14.04.19
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Nov 2013 14:04:20 -0800 (PST)
From: Eric Keller <keller.eric@gmail.com>
To: poky@yoctoproject.org
Date: Thu,  7 Nov 2013 23:04:04 +0100
Message-Id: <1383861844-26405-2-git-send-email-eric.keller.ek1@roche.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1383861844-26405-1-git-send-email-eric.keller.ek1@roche.com>
References: <1383861844-26405-1-git-send-email-eric.keller.ek1@roche.com>
Cc: Eric Keller <eric.keller.ek1@roche.com>
Subject: [PATCH] meta-yocto-bsp/recipes-kernel/linux/: add genericx86(-64) support for linux-yocto-rt_3.10
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
X-List-Received-Date: Thu, 07 Nov 2013 22:04:22 -0000

Signed-off-by: Eric Keller <eric.keller.ek1@roche.com>
---
 .../linux/linux-yocto-rt_3.10.bbappend             |   23 ++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
new file mode 100644
index 0000000..7978f79
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
@@ -0,0 +1,23 @@
+KBRANCH_genericx86  = "standard/common-pc/base"
+KBRANCH_genericx86-64  = "standard/common-pc-64/base"
+#KBRANCH_routerstationpro = "standard/routerstationpro"
+#KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
+#KBRANCH_beagleboard = "standard/beagleboard"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+SRCREV_machine_genericx86-64 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+#SRCREV_machine_routerstationpro ?= "d4e6adefaf92a1e7b6539d371ba49b78bd194a84"
+#SRCREV_machine_mpc8315e-rdb ?= "12dc46ba4efb80e135fec4dce913eeb87ee671b3"
+#SRCREV_machine_beagleboard ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+#COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+#COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+#COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+
+# routerstationpro has a flash size of 16mb
+KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
-- 
1.7.10.4


