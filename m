Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE510E00C28
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 11:02:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2VI2E15018290
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 31 Mar 2014 11:02:14 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 31 Mar 2014 11:02:14 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 31 Mar 2014 14:02:00 -0400
Message-ID: <90a1e07717b91d1ef30fbc195ea0bc05c339d9d1.1396288654.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1396288654.git.bruce.ashfield@windriver.com>
References: <cover.1396288654.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 7/7] meta-yocto-bsp: populate 3.14 bbappend
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
X-List-Received-Date: Mon, 31 Mar 2014 18:02:17 -0000
Content-Type: text/plain

The 3.14 kernel supports the generic-x86, edgerouter and beaglebone black.

All other reference BSPs stay in the 3.10 kernel until boot and regression
testing can be performed.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
new file mode 100644
index 000000000000..e0964eb40a47
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -0,0 +1,17 @@
+KBRANCH_genericx86  = "standard/common-pc/base"
+KBRANCH_genericx86-64  = "standard/common-pc-64/base"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone = "standard/beaglebone"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86 ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+SRCREV_machine_genericx86-64 ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+SRCREV_machine_edgerouter ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+SRCREV_machine_beaglebone ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
-- 
1.8.1.2


