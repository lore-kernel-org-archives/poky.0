Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7269EE00840
	for <poky@yoctoproject.org>; Tue, 14 Jan 2014 22:00:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0F5xxlx026265
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Jan 2014 21:59:59 -0800 (PST)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Tue, 14 Jan 2014 21:59:59 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 15 Jan 2014 00:59:59 -0500
Message-ID: <819f004ff079fdbb86d45f6b965445bed0e139ad.1389765531.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1389765531.git.bruce.ashfield@windriver.com>
References: <cover.1389765531.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto-bsps: update reference BSPs to v3.10.25
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
X-List-Received-Date: Wed, 15 Jan 2014 06:00:06 -0000
Content-Type: text/plain

Update the 3.10 Yocto reference BSPs to the korg 3.10.25 update.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 2f529c0fb235..b5515a26c467 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -7,11 +7,11 @@ KBRANCH_beagleboard = "standard/beagleboard"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "c03195ed6e3066494e3fb4be69154a57066e845b"
-SRCREV_machine_genericx86-64 ?= "c03195ed6e3066494e3fb4be69154a57066e845b"
-SRCREV_machine_routerstationpro ?= "2d91e201018c15e24fb83336dcb4029b8569eb9d"
-SRCREV_machine_mpc8315e-rdb ?= "ac071526ffac37c907532933b628e4f64070f155"
-SRCREV_machine_beagleboard ?= "3d9b0d130a00dd32e6061ac708eaaaed69e35c3d"
+SRCREV_machine_genericx86 ?= "79af968f2f26378798aec7a6d729ff5a371aae5f"
+SRCREV_machine_genericx86-64 ?= "79af968f2f26378798aec7a6d729ff5a371aae5f"
+SRCREV_machine_routerstationpro ?= "db4e91193fe3077fd6e822a88b9601731f27d397"
+SRCREV_machine_mpc8315e-rdb ?= "10de7036a4ba156c44de2de720fd1495f747919c"
+SRCREV_machine_beagleboard ?= "30cb7dc2c05815be5233f1a010f52ecdc4d97b01"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


