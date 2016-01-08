Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B83FE00C89; Fri,  8 Jan 2016 00:55:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3ED8E0079A
	for <poky@yoctoproject.org>; Fri,  8 Jan 2016 00:55:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u088tisA029283
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Fri, 8 Jan 2016 00:55:45 -0800
Received: from localhost (128.224.162.175) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Fri, 8 Jan 2016 00:55:43 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 8 Jan 2016 16:55:41 +0800
Message-ID: <1452243341-16174-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [128.224.162.175]
Subject: [PATCH] local.conf.sample: add qemumips64
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
X-List-Received-Date: Fri, 08 Jan 2016 08:55:49 -0000
Content-Type: text/plain

Add the missing example machine configuration for qemumips64

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-yocto/conf/local.conf.sample |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 7a0dde5..8297a2d 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -20,6 +20,7 @@
 #MACHINE ?= "qemuarm"
 #MACHINE ?= "qemuarm64"
 #MACHINE ?= "qemumips"
+#MACHINE ?= "qemumips64"
 #MACHINE ?= "qemuppc"
 #MACHINE ?= "qemux86"
 #MACHINE ?= "qemux86-64"
-- 
1.7.9.5


