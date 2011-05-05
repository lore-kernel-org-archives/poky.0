Return-Path: <aalonso@secretlab.ca>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF10A4C800B3
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:10:55 -0500 (CDT)
Received: by yxd5 with SMTP id 5so1263619yxd.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:10:55 -0700 (PDT)
Received: by 10.236.181.37 with SMTP id k25mr3573003yhm.248.1304622655637;
	Thu, 05 May 2011 12:10:55 -0700 (PDT)
Received: from localhost.localdomain ([99.66.253.228])
	by mx.google.com with ESMTPS id x65sm1129162yhn.67.2011.05.05.12.10.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:10:55 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:10:53 -0500
Message-Id: <775b12701950d067b8b37db63baa9edf8e604895.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1304621382.git.aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>
Subject: [PATCH 2/7] kernel-arch: add microblaze to valid archs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 May 2011 19:11:00 -0000

* Add Microblaze target to valid arch list definition

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/classes/kernel-arch.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/kernel-arch.bbclass b/meta/classes/kernel-arch.bbclass
index d6ae2e7..692d4fb 100644
--- a/meta/classes/kernel-arch.bbclass
+++ b/meta/classes/kernel-arch.bbclass
@@ -12,7 +12,8 @@ valid_archs = "alpha cris ia64 \
                m32r mips \
 	       sh sh64 um h8300   \
 	       parisc s390  v850 \
-	       avr32 blackfin"
+	       avr32 blackfin \
+              microblaze"
 
 def map_kernel_arch(a, d):
 	import re
-- 
1.7.4.4


