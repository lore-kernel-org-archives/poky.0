Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FF75E00895
	for <poky@yoctoproject.org>; Thu, 27 Feb 2014 13:15:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1RLFE2c008956
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Feb 2014 13:15:14 -0800 (PST)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 27 Feb 2014 13:15:14 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Feb 2014 16:15:03 -0500
Message-ID: <1f69c48c8f69343b6e8aedf4ee4d307216d946ac.1393535621.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1393535621.git.bruce.ashfield@windriver.com>
References: <cover.1393535621.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] bsps: update to 3.10.28
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
X-List-Received-Date: Thu, 27 Feb 2014 21:15:17 -0000
Content-Type: text/plain

Updating the h/w reference BSPs to 3.10.28 -stable SRCREVs to match
the oe-core qemu BSPs.

[YOCTO: #5858]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index b5515a26c467..ae48498ec134 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -7,11 +7,11 @@ KBRANCH_beagleboard = "standard/beagleboard"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "79af968f2f26378798aec7a6d729ff5a371aae5f"
-SRCREV_machine_genericx86-64 ?= "79af968f2f26378798aec7a6d729ff5a371aae5f"
-SRCREV_machine_routerstationpro ?= "db4e91193fe3077fd6e822a88b9601731f27d397"
-SRCREV_machine_mpc8315e-rdb ?= "10de7036a4ba156c44de2de720fd1495f747919c"
-SRCREV_machine_beagleboard ?= "30cb7dc2c05815be5233f1a010f52ecdc4d97b01"
+SRCREV_machine_genericx86 ?= "3e0a296fae952d8d93eb0f96566bf6d4a978c8ee"
+SRCREV_machine_genericx86-64 ?= "3e0a296fae952d8d93eb0f96566bf6d4a978c8ee"
+SRCREV_machine_routerstationpro ?= "c951f46b196f287d90d016d2441c91a3b86669f1"
+SRCREV_machine_mpc8315e-rdb ?= "74ed53110138055ff6b87e2af28a2fd31a8bf9c6"
+SRCREV_machine_beagleboard ?= "97c2adb38b76e0b1d6319986818d4b536e244dd6"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


