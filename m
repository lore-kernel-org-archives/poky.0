Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33BD2E008EE
	for <poky@yoctoproject.org>; Thu, 27 Feb 2014 13:15:17 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1RLFFxM000295
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Feb 2014 13:15:15 -0800 (PST)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 27 Feb 2014 13:15:15 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Feb 2014 16:15:04 -0500
Message-ID: <a7ee94c6d77cc11a6e7af763e7d2bc6deb6cd6bf.1393535621.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1393535621.git.bruce.ashfield@windriver.com>
References: <cover.1393535621.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] bsps: update H/W reference boards to v3.10.32
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

Updating the hardware reference boards to match the oe-core update to
the latest 3.10-stable.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index ae48498ec134..56f566de4fc8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -7,11 +7,11 @@ KBRANCH_beagleboard = "standard/beagleboard"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "3e0a296fae952d8d93eb0f96566bf6d4a978c8ee"
-SRCREV_machine_genericx86-64 ?= "3e0a296fae952d8d93eb0f96566bf6d4a978c8ee"
-SRCREV_machine_routerstationpro ?= "c951f46b196f287d90d016d2441c91a3b86669f1"
-SRCREV_machine_mpc8315e-rdb ?= "74ed53110138055ff6b87e2af28a2fd31a8bf9c6"
-SRCREV_machine_beagleboard ?= "97c2adb38b76e0b1d6319986818d4b536e244dd6"
+SRCREV_machine_genericx86 ?= "a86e2b1eadd1f607d0d6ac5c4ab20a902714ddb1"
+SRCREV_machine_genericx86-64 ?= "a86e2b1eadd1f607d0d6ac5c4ab20a902714ddb1"
+SRCREV_machine_routerstationpro ?= "e2c76467906116a42a020ed0c76a06af720e5cf1"
+SRCREV_machine_mpc8315e-rdb ?= "1ac2906d6d672f33e36c5add9b7d0e6277e34aaf"
+SRCREV_machine_beagleboard ?= "e231c6220163d3c2a41cb380e1f759e8b222303c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


