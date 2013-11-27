Return-Path: <Yi.Zhao@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B714E0055C
	for <poky@yoctoproject.org>; Tue, 26 Nov 2013 22:21:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rAR6LjqQ004989
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 26 Nov 2013 22:21:45 -0800 (PST)
Received: from localhost (128.224.158.249) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Tue, 26 Nov 2013 22:21:45 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 27 Nov 2013 14:21:43 +0800
Message-ID: <1385533303-2125-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [128.224.158.249]
Subject: [PATCH] local.conf.sample: Fix typo
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
X-List-Received-Date: Wed, 27 Nov 2013 06:21:51 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-yocto/conf/local.conf.sample |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 31e7605..49e64fb 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -126,7 +126,7 @@ PACKAGE_CLASSES ?= "package_rpm"
 #
 # This variable specified the architecture to build SDK/ADT items for and means
 # you can build the SDK packages for architectures other than the machine you are 
-# running the build on (i.e. building i686 packages on an x86_64 host._
+# running the build on (i.e. building i686 packages on an x86_64 host.)
 # Supported values are i686 and x86_64
 #SDKMACHINE ?= "i686"
 
-- 
1.7.9.5


