Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33189E006EF; Wed,  2 Jul 2014 23:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7BD4E006C4
	for <poky@yoctoproject.org>; Wed,  2 Jul 2014 23:43:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s636hZwB017724
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 2 Jul 2014 23:43:35 -0700 (PDT)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 2 Jul 2014 23:43:35 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 3 Jul 2014 14:58:17 +0800
Message-ID: <f25714a31dd92764668d6d9a2a2081be417324bd.1404370591.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1404370591.git.liezhi.yang@windriver.com>
References: <cover.1404370591.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] scripts: fix no newline at end of file
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
X-List-Received-Date: Thu, 03 Jul 2014 06:43:45 -0000
Content-Type: text/plain

Add a '\n' to the last line of the file to fix:

No newline at end of file

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
index 2e70426..9ea4119 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
@@ -35,4 +35,4 @@ USE_VT ?= "0"
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
 IMAGE_FSTYPES ?= "jffs2 tar.bz2"
-JFFS2_ERASEBLOCK = "0x10000"
\ No newline at end of file
+JFFS2_ERASEBLOCK = "0x10000"
-- 
1.8.3.1


