Return-Path: <Yi.Zhao@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04D3CE0079E
	for <poky@yoctoproject.org>; Thu, 28 Nov 2013 00:18:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rAS8Ithe013825
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 28 Nov 2013 00:18:55 -0800 (PST)
Received: from localhost (128.224.158.249) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Thu, 28 Nov 2013 00:18:54 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 28 Nov 2013 16:18:52 +0800
Message-ID: <1385626732-17480-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [128.224.158.249]
Subject: [PATCH V2] local.conf.sample: Fix typo
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
X-List-Received-Date: Thu, 28 Nov 2013 08:18:59 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-yocto/conf/local.conf.sample |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 31e7605..885d4db 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -124,9 +124,9 @@ PACKAGE_CLASSES ?= "package_rpm"
 #
 # SDK/ADT target architecture
 #
-# This variable specified the architecture to build SDK/ADT items for and means
+# This variable specifies the architecture to build SDK/ADT items for and means
 # you can build the SDK packages for architectures other than the machine you are 
-# running the build on (i.e. building i686 packages on an x86_64 host._
+# running the build on (i.e. building i686 packages on an x86_64 host).
 # Supported values are i686 and x86_64
 #SDKMACHINE ?= "i686"
 
-- 
1.7.9.5


