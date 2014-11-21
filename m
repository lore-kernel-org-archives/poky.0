Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D463EE008C6; Thu, 20 Nov 2014 17:58:08 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A29FAE0086F
	for <poky@yoctoproject.org>; Thu, 20 Nov 2014 17:58:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sAL1w3U4023222
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 20 Nov 2014 17:58:04 -0800 (PST)
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 20 Nov 2014 17:58:03 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 20 Nov 2014 17:58:02 -0800
Message-ID: <c75e757a21365c3f4a433800f25817e46efefb4c.1416534913.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1416534913.git.liezhi.yang@windriver.com>
References: <cover.1416534913.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [dora] [PATCH 1/1] yocto-bsp: Update qemu inclusion lists
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
X-List-Received-Date: Fri, 21 Nov 2014 01:58:08 -0000
Content-Type: text/plain

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Update qemu tune definitions to match changes in main qemu machines.

[YOCTO #6527]

(From meta-yocto rev: 0d78ffd509c6caba6c74c6e75c485fb8d923cd31)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 782ac21..77695ae 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -31,13 +31,14 @@ require conf/machine/include/qemu.inc
 require conf/machine/include/tune-i586.inc
 {{ if qemuarch == "x86_64": }}
 require conf/machine/include/qemu.inc
-require conf/machine/include/tune-x86_64.inc
+DEFAULTTUNE ?= "core2-64"
+require conf/machine/include/tune-core2.inc
 {{ if qemuarch == "arm": }}
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-arm926ejs.inc
 {{ if qemuarch == "powerpc": }}
 require conf/machine/include/qemu.inc
-require conf/machine/include/tune-ppc603e.inc
+require conf/machine/include/tune-ppc7400.inc
 {{ if qemuarch == "mips": }}
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-mips32.inc
-- 
1.7.9.5


