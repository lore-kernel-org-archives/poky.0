Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5978E01437
	for <poky@yoctoproject.org>; Sat,  6 Jul 2013 19:13:26 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id up14so4330143obb.28
	for <poky@yoctoproject.org>; Sat, 06 Jul 2013 19:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=1/cFH6Cjy1sPlNayVYvBdbHE/XHD/8P3NXs4+qkbIBA=;
	b=HtceAwLqBNWWRGP6ncsNTUggYcRStfvvHxlOgl+ZqgVEkRNVkJ7ZNqHLeVYhR7FEi8
	H00tVUrKjgJti+AdWoBl8eo0q0S8NN87iqe22/+h4X43VeMuBk8IFoEzvLWEqL+XSPnz
	2QA5tlYrXgZSUU9GWLEbbnLS4Bpgozuj6viHT0l5B5k67HVuh8H4iGbJ3cEiaHGD0mBP
	6wbZz0NsS38Us2pertVZUmDUkeLKGBCswJVZ/jPZvRlwHgLmBHOc//asMIf0vTYhDYFt
	xnwodk9DK660vMsSxYCFySLZhQmDZR29+tHp7ifyoz6m2ENqrROUnvvMMjv8VRf8eJuQ
	i+ow==
X-Received: by 10.182.46.230 with SMTP id y6mr16321352obm.79.1373163206540;
	Sat, 06 Jul 2013 19:13:26 -0700 (PDT)
Received: from localhost.localdomain ([96.44.77.72])
	by mx.google.com with ESMTPSA id cp7sm25602779obb.0.2013.07.06.19.13.24
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 06 Jul 2013 19:13:25 -0700 (PDT)
Sender: Bruce Ashfield <bruce.ashfield@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sat,  6 Jul 2013 22:13:20 -0400
Message-Id: <2b2c8dd1f53d0acfb1a660ab4637e54fecc774aa.1373162883.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1373162883.git.bruce.ashfield@windriver.com>
References: <cover.1373162883.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1373162883.git.bruce.ashfield@windriver.com>
References: <cover.1373162883.git.bruce.ashfield@windriver.com>
Cc: simarpreet.singh@windriver.com, poky@yoctoproject.org
Subject: [PATCH 1/1] meta-yocto-bsp: update reference board SRCREVs
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
X-List-Received-Date: Sun, 07 Jul 2013 02:13:27 -0000

Bumping the 3.4 and 3.8 reference board SRCREVs to the latest
3.4 and 3.8 kernel commits.

Note: not all reference boards prefer the 3.8 kernel, but we
can set the SRCREVs regardless, since the board support is present,
just not completely tested yet.

[YOCTO #4566]

Signed-off-by: Simarpreet Singh <simarpreet.singh@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend |    8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index b763cd8..9e3efc9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "c994390cfa28339cbc1ec3b56eeec83a5fa75bb7"
-SRCREV_machine_routerstationpro ?= "a45e1fb8bd549cbec860980f71dd0012449418e4"
-SRCREV_machine_mpc8315e-rdb ?= "3663df787956385df7c6a9c964bb834a6106ac8b"
-SRCREV_machine_beagleboard ?= "c994390cfa28339cbc1ec3b56eeec83a5fa75bb7"
+SRCREV_machine_atom-pc ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
+SRCREV_machine_routerstationpro ?= "62b86dc8ac794cd97c61a99418d7429e6a83ec1a"
+SRCREV_machine_mpc8315e-rdb ?= "b2f78892b3ff6cc940e4661f7b2017a73b289c73"
+SRCREV_machine_beagleboard ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
index af8ac6c..0686d4b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-#SRCREV_machine_atom-pc ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
-#SRCREV_machine_routerstationpro ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
-#SRCREV_machine_mpc8315e-rdb ?= "82bb8c34e0eb5e3d3b35d3c5631d9df147b659dd"
-#SRCREV_machine_beagleboard ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
+SRCREV_machine_atom-pc ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
+SRCREV_machine_routerstationpro ?= "4a94f39d429fa284ce69b13bb635b29b1319e372"
+SRCREV_machine_mpc8315e-rdb ?= "f467c72937de0e4a2a66e21b9855c4aee844f936"
+SRCREV_machine_beagleboard ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.10.4


