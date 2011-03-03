Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AFC94C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 11:02:49 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p23H2muX003310
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 3 Mar 2011 09:02:48 -0800 (PST)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Thu, 3 Mar 2011 09:02:48 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 3 Mar 2011 11:02:43 -0600
Message-ID: <78fb5c4988481fa8ff786a88a9a980abb2bbdf0c.1299171724.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1299171724.git.mark.hatle@windriver.com>
References: <cover.1299171724.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 1/1] qa.py: Fix a typo when evaluating bitsize
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
X-List-Received-Date: Thu, 03 Mar 2011 17:02:49 -0000
Content-Type: text/plain

This should be setting a variable, not performing a comparison.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/lib/oe/qa.py |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/lib/oe/qa.py b/meta/lib/oe/qa.py
index 7adf4d0..d380012 100644
--- a/meta/lib/oe/qa.py
+++ b/meta/lib/oe/qa.py
@@ -40,9 +40,9 @@ class ELFFile:
         self.my_assert(self.data[3], 'F')
         if self.bits == 0:
             if self.data[ELFFile.EI_CLASS] == chr(ELFFile.ELFCLASS32):
-                self.bits == 32
+                self.bits = 32
             elif self.data[ELFFile.EI_CLASS] == chr(ELFFile.ELFCLASS64):
-                self.bits == 64
+                self.bits = 64
             else:
                 # Not 32-bit or 64.. lets assert
                 raise Exception("ELF but not 32 or 64 bit.")
-- 
1.7.4


