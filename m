Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21DCAE00B88
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 11:30:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2RIU4C3016415
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Mar 2014 11:30:04 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Thu, 27 Mar 2014 11:30:03 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Mar 2014 14:29:55 -0400
Message-ID: <b790cb22a21c5726d30edc62071788986458cc83.1395944862.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395944862.git.bruce.ashfield@windriver.com>
References: <cover.1395944862.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 2/6] yocto-bsps: update reference BSPs to v3.10.34
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
X-List-Received-Date: Thu, 27 Mar 2014 18:30:06 -0000
Content-Type: text/plain

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 56f566de4fc8..c91389c959c8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -7,11 +7,11 @@ KBRANCH_beagleboard = "standard/beagleboard"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "a86e2b1eadd1f607d0d6ac5c4ab20a902714ddb1"
-SRCREV_machine_genericx86-64 ?= "a86e2b1eadd1f607d0d6ac5c4ab20a902714ddb1"
-SRCREV_machine_routerstationpro ?= "e2c76467906116a42a020ed0c76a06af720e5cf1"
-SRCREV_machine_mpc8315e-rdb ?= "1ac2906d6d672f33e36c5add9b7d0e6277e34aaf"
-SRCREV_machine_beagleboard ?= "e231c6220163d3c2a41cb380e1f759e8b222303c"
+SRCREV_machine_genericx86 ?= "2ee37bfe732c73f7d39af55875ce8d30b282471c"
+SRCREV_machine_genericx86-64 ?= "2ee37bfe732c73f7d39af55875ce8d30b282471c"
+SRCREV_machine_routerstationpro ?= "628fb65e665a4179b6df049563f47f521f9dfb4e"
+SRCREV_machine_mpc8315e-rdb ?= "2688f74bf2bb01ec355bbdd4b6fa00a0d39302de"
+SRCREV_machine_beagleboard ?= "dd12d784a00583766a77f6f027e0872797b9dc37"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


