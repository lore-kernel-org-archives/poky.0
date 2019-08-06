Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8786BE00D5F; Mon,  5 Aug 2019 19:25:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED72CE00D59
	for <poky@yoctoproject.org>; Mon,  5 Aug 2019 19:25:31 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x762P5wm027119
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 5 Aug 2019 19:25:21 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Mon, 5 Aug 2019 19:25:15 -0700
From: <changqing.li@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 6 Aug 2019 10:25:14 +0800
Message-ID: <1565058314-57035-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-yocto-bsp][PATCH] genericx86-64.conf/genericx86.conf: add QB_SYSTEM_NAME
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
X-List-Received-Date: Tue, 06 Aug 2019 02:25:32 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

QB_SYSTEM_NAME set in qemuboot-x86.inc will be removed,
so set QB_SYSTEM_NAME in these two configuration files.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf | 2 ++
 meta-yocto-bsp/conf/machine/genericx86.conf    | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index c489462..81ec24e 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -7,3 +7,5 @@ require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
 
 SERIAL_CONSOLES_CHECK = "ttyS0"
+#For runqemu
+QB_SYSTEM_NAME = "qemu-system-x86_64"
diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 9929d27..1387bde 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -7,3 +7,5 @@ require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
 
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"
+#For runqemu
+QB_SYSTEM_NAME = "qemu-system-i386"
-- 
2.7.4


