Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9034E01302
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 06:54:55 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so10745325iea.35
	for <poky@yoctoproject.org>; Mon, 08 Oct 2012 06:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=gS5kHhxjqyqiT8/JRITvG3I00jcZeOcdt+rqmRpOPns=;
	b=mWjVfHuKXl1AeAyp76GxVlHxLYPqTV8Z9bGml28oN9i29nXbW3sNcJJab4KraNlJD+
	tH96peq4p0Y6vREjAp2n2DePsGby5OtGZJqaq7yEB7lfheQGephPIXEMeD1ghfJEqVIE
	hm6YFDhUZf/B8xgSVANhcXDrTybQ1LPRzmNdKECTtBZTxvIYpXENt4Nm0wvW5pOxaOCq
	CbHHa3XlYG7n+YsbnkQl6TMevyGUC6pW4di9LSY1KHxbzrm/AIow9F+AGYccUUB0vzGR
	27+/khr/laM8n+aV02jCRoXdCmOhaqjtSisJQCs8vlK1EjlH6jpMVql02lW0QbKaDOwL
	jIgQ==
Received: by 10.50.207.36 with SMTP id lt4mr5957322igc.66.1349704495766;
	Mon, 08 Oct 2012 06:54:55 -0700 (PDT)
Received: from localhost.localdomain ([96.44.93.233])
	by mx.google.com with ESMTPS id ez8sm7460995igb.17.2012.10.08.06.54.52
	(version=SSLv3 cipher=OTHER); Mon, 08 Oct 2012 06:54:54 -0700 (PDT)
Sender: Bruce Ashfield <bruce.ashfield@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon,  8 Oct 2012 09:54:46 -0400
Message-Id: <e41ac784e5a0fcdc9a7a2eb32726e3c8c121e3dd.1349704340.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1349704340.git.bruce.ashfield@windriver.com>
References: <cover.1349704340.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1349704340.git.bruce.ashfield@windriver.com>
References: <cover.1349704340.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto-bsps/3.4: perf: parallel build and tools fixes
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
X-List-Received-Date: Mon, 08 Oct 2012 13:54:56 -0000

korg commit 42dcd1f4e [perf tools: Fix parallel build] fixes parallel
build issues that are being seen in the autobuilder.

We also have a fix from Tom:

[
    perf annotate: replace 'expand' with equivalent sed expression

    We don't have 'expand' in our userspace so we need to accomplish the
    same thing using 'sed', which we do have.
]

So we apply it to all BSP branches and kernel types.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 0a70143..5df39b2 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "3fa06aa29078fdb2af431de2d3fdae7d281ba85f"
-SRCREV_machine_routerstationpro ?= "d041a78adac8cefd70ba42c316c07069b7b83def"
-SRCREV_machine_mpc8315e-rdb ?= "b7f8afa34eb1f3de110c0acfd6fb44bdae200e6a"
-SRCREV_machine_beagleboard ?= "3fa06aa29078fdb2af431de2d3fdae7d281ba85f"
+SRCREV_machine_atom-pc ?= "449f7f520350700858f21a5554b81cc8ad23267d"
+SRCREV_machine_routerstationpro ?= "27e8b8dabfed786aaaafd2f7104c141597830089"
+SRCREV_machine_mpc8315e-rdb ?= "524ce8107febcfd88717f54d50d36ca7c6e6e437"
+SRCREV_machine_beagleboard ?= "449f7f520350700858f21a5554b81cc8ad23267d"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


