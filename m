Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14113E01422
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:19 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id q56so1849558wes.35
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=dxG+WnsfqPo34cHCJEXVc7BYmfp350eo+ittPlCoM3Q=;
	b=VBKm1TcmJljHp1nmKio3CVxMXJZ/2WUW2KtZa3N60lQuW622gbDulV2XO0Qa10ygBH
	rjx93E1L0TlrPIKwXPSiaKsU2/3mYYlVeuksTq96I1sIs1pshC7b2WhKF7CZmB3LuLBr
	lbm29m9Npui3R0Edljp8qMhLBmxXqF0Q6uCZczM3NiSIG/o4oZDejvB5boG2TD5JaTe9
	jrL8oHmpBAp0dKLCgSH8/X6YBcR3UZMJKzzDQKow8QavXjNAGQ/vZVRxVC5MUubumjlg
	sefLZbR+1EIowinsPAsYlumq0JKoiRYw9kQCV2MeJQ5TPZEI27DfY0ZvfR37SEJ/ylve
	vXzg==
X-Gm-Message-State: ALoCoQmzAnpPelJT3BXd1skQlfXA8GsN7tGhASS709ief1Rsdp+U0usShXB+nYRoJIexlsCafnnk
X-Received: by 10.180.184.107 with SMTP id et11mr21604184wic.60.1377187158840; 
	Thu, 22 Aug 2013 08:59:18 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id a4sm39519248wik.11.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 22 Aug 2013 08:59:18 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Aug 2013 16:59:10 +0100
Message-Id: <eba8d2a94e36103fabecdd0c68142e2ea1d21b10.1377186905.git.ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
In-Reply-To: <cover.1377186905.git.ross.burton@intel.com>
References: <cover.1377186905.git.ross.burton@intel.com>
Cc: dvhart@linux.intel.com
Subject: [PATCH 4/4] linux-yocto: switch genericx86 to use common-pc
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
X-List-Received-Date: Thu, 22 Aug 2013 15:59:20 -0000

The common-pc machine is now more featureful, so switch from atom-pc to common-pc.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
index c4c005d..51c3736 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -1,5 +1,5 @@
 KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
-KBRANCH_genericx86  = "standard/common-pc/atom-pc"
+KBRANCH_genericx86  = "standard/common-pc/base"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
@@ -18,3 +18,5 @@ COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
+
+KMACHINE_genericx86 = "common-pc"
-- 
1.7.10.4


