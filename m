Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22449E0078C
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:40 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rBAFBecm011337
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:40 -0800 (PST)
Received: from pek-hostel-vm02.wrs.com (128.224.153.172) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 10 Dec 2013 07:11:39 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 10 Dec 2013 10:11:33 -0500
Message-ID: <3eb580e76c20938c7dde5a5eea8d6e3776791a73.1386686531.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1386686531.git.liezhi.yang@windriver.com>
References: <cover.1386686531.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/3] [dora] meta-yocto-bsp: update SRCREVs for 3.10.17 and beagleboard fixes
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
X-List-Received-Date: Tue, 10 Dec 2013 15:11:41 -0000
Content-Type: text/plain

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Updating the BSP SRCREVs to pull in the 3.10.17 core update and fix
USB powerup issues on the beagleboard.

(From meta-yocto master rev: d82870a9561662919a737dd126a8d26e2b78144a)

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend           |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index aa43b15..2f529c0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -7,11 +7,11 @@ KBRANCH_beagleboard = "standard/beagleboard"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
-SRCREV_machine_genericx86-64 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
-SRCREV_machine_routerstationpro ?= "d4e6adefaf92a1e7b6539d371ba49b78bd194a84"
-SRCREV_machine_mpc8315e-rdb ?= "12dc46ba4efb80e135fec4dce913eeb87ee671b3"
-SRCREV_machine_beagleboard ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+SRCREV_machine_genericx86 ?= "c03195ed6e3066494e3fb4be69154a57066e845b"
+SRCREV_machine_genericx86-64 ?= "c03195ed6e3066494e3fb4be69154a57066e845b"
+SRCREV_machine_routerstationpro ?= "2d91e201018c15e24fb83336dcb4029b8569eb9d"
+SRCREV_machine_mpc8315e-rdb ?= "ac071526ffac37c907532933b628e4f64070f155"
+SRCREV_machine_beagleboard ?= "3d9b0d130a00dd32e6061ac708eaaaed69e35c3d"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.7.10.4


