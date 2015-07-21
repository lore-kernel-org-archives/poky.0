Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52CE9E00861; Tue, 21 Jul 2015 08:24:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 294D9E00861
	for <poky@yoctoproject.org>; Tue, 21 Jul 2015 08:24:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t6LFOPrS010282
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 21 Jul 2015 08:24:25 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.235.1; Tue, 21 Jul 2015 08:24:18 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 21 Jul 2015 11:24:23 -0400
Message-ID: <21cd7675fe50bcc5d686eec1fbc72b2a57345773.1437492124.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1437492124.git.bruce.ashfield@windriver.com>
References: <cover.1437492124.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] yocto-bsps: add 3.14-rt configuration
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
X-List-Received-Date: Tue, 21 Jul 2015 15:24:28 -0000
Content-Type: text/plain

To enable preempt-rt for the h/w reference boards, we can create a
bbappend that sets the KMACHINE mappings and valid hashes.

Currently only genericx86* is enabled. Other boards can be added
once validated.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto-rt_3.14.bbappend         | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
new file mode 100644
index 000000000000..52fd07fd5d81
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
@@ -0,0 +1,11 @@
+KBRANCH_genericx86  = "standard/common-pc/base"
+KBRANCH_genericx86-64  = "standard/common-pc-64/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86 ?= "bda175966009d5a94103559e6e6ae51279952f39"
+SRCREV_machine_genericx86-64 ?= "bda175966009d5a94103559e6e6ae51279952f39"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.1.0


