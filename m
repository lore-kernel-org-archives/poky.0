Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8764E00747
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:14 -0700 (PDT)
Received: by mail-wg0-f53.google.com with SMTP id c11so1837826wgh.32
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=tWJmNs6BHAf/jB+1dx6VX4ykwT0+KQ9RcevvHjDLpAM=;
	b=UZQ8IvU7DjiNgUlxlYf9a+MUvteFqycmulbWgyAu58gFAAFMelTRu+vWJdZLM6a9yn
	7SvpE74XQrmweP0lgxI9T1sj8m0lZ99l8ybMpCehIHNPHfZgksLjYXkg+jGWlcIPqxzF
	UgYFv8pLovydqq6iwcEmfKrVRbzgtXY5LhNmmkabl0xvY7Jpr3WqKV6CInBTHbdHoPKS
	m5klOlv5EjVzFl0RKk9HEi2+UGf1VUBAz0/QETx3bj8V7Qq1PTroJvE7JInfhgqMtiE1
	RzFrbf76QPwKSAK0QNIpvntRMLmkzQnwtno7bYqEMv5aBxAieruXgtEx8hGyWfFK5Gu5
	cRyQ==
X-Gm-Message-State: ALoCoQl3sWmHgx2sbixWsGrF1kL9SxzC32VBZBUzVsuVr0h7qbzRVQwKfOGuKR2B39+gSNoMj+ml
X-Received: by 10.194.175.133 with SMTP id ca5mr10973407wjc.19.1377187154086; 
	Thu, 22 Aug 2013 08:59:14 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id a4sm39519248wik.11.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 22 Aug 2013 08:59:13 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Aug 2013 16:59:07 +0100
Message-Id: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377186905.git.ross.burton@intel.com>
References: <cover.1377186905.git.ross.burton@intel.com>
Cc: dvhart@linux.intel.com
Subject: [PATCH 1/4] linux-yocto: remove genericx86 support from 3.4
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
X-List-Received-Date: Thu, 22 Aug 2013 15:59:16 -0000

3.4 doesn't actually support genericx86, so remove any mention of it.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index c3d1290..160bcbb 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1,5 +1,4 @@
 KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
-KBRANCH_genericx86  = "standard/common-pc/atom-pc"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
@@ -14,7 +13,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
-- 
1.7.10.4


