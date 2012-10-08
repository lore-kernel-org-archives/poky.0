Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F9BFE01300
	for <poky@yoctoproject.org>; Sun,  7 Oct 2012 20:41:45 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so9678763iea.35
	for <poky@yoctoproject.org>; Sun, 07 Oct 2012 20:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=VKbsEQ1sCoO/DyTv8YU2wgdLsAyiA+QWAVS6SRgJzqQ=;
	b=UfeMsyPyqAoAvxXY8+ZW6mkENhcozuCR+HVyoHAs7fb64JLcRmCx6IwC6OwNn0chpM
	75EbFqMmojxdK3p4DYuq7DMlNlnDXzWRayPLcDxIRNdz6grud/P8spws6GMKjDO8Z66E
	QwcP3xnMQRXi+3YvPO4dBbN08+Nf4+uvHzfS/YoeZwfpQpYY0oafPSJq3oPRP1xWYoPZ
	gbm6AOL5V7P3moIFcRi+9HPjuQ3xn/fkQWmKMcE62Y9MkW3YNiW1f93xCc0e8Q2AKiDO
	1N6kKxkOJXNlk8OjO4wbVU9P6DtfTLVv3p1Tuivq3IcaQX0/t4sR02p7ez+PEz7Yu39z
	BCtw==
Received: by 10.50.190.163 with SMTP id gr3mr6957732igc.69.1349667704726;
	Sun, 07 Oct 2012 20:41:44 -0700 (PDT)
Received: from localhost.localdomain ([96.44.93.233])
	by mx.google.com with ESMTPS id 10sm6143359ign.5.2012.10.07.20.41.42
	(version=SSLv3 cipher=OTHER); Sun, 07 Oct 2012 20:41:43 -0700 (PDT)
Sender: Bruce Ashfield <bruce.ashfield@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun,  7 Oct 2012 23:41:31 -0400
Message-Id: <af84c18279bdf7c2c7f5ee5d5e88f7ce666f3a29.1349666145.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1349666145.git.bruce.ashfield@windriver.com>
References: <cover.1349666145.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1349666145.git.bruce.ashfield@windriver.com>
References: <cover.1349666145.git.bruce.ashfield@windriver.com>
Cc: mark.asselstine@windriver.com, poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto-bsps: update hardware reference BSPs to v3.4.11
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
X-List-Received-Date: Mon, 08 Oct 2012 03:41:45 -0000

The hardware reference BSPs are missing the update to 3.4.11
that the qemu* machines received several weeks ago.

Bumping to 3.4.11 specifically addresses the segfaults being
seen with rpm on the beagleboard.

[YOCTO #3186]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 ++++-----
 1 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 6a6176e..0a70143 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,11 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "59c3ff750831338d05ab67d5efd7fc101c451aff"
-SRCREV_machine_routerstationpro ?= "009935376be574746446f4bead6f0fb7b40d6d79"
-SRCREV_machine_mpc8315e-rdb ?= "6b18b6f483716b757c7c8642fa3792235118bb63"
-SRCREV_machine_beagleboard ?= "59c3ff750831338d05ab67d5efd7fc101c451aff"
-
+SRCREV_machine_atom-pc ?= "3fa06aa29078fdb2af431de2d3fdae7d281ba85f"
+SRCREV_machine_routerstationpro ?= "d041a78adac8cefd70ba42c316c07069b7b83def"
+SRCREV_machine_mpc8315e-rdb ?= "b7f8afa34eb1f3de110c0acfd6fb44bdae200e6a"
+SRCREV_machine_beagleboard ?= "3fa06aa29078fdb2af431de2d3fdae7d281ba85f"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


