Return-Path: <aalonso@secretlab.ca>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24F2C4C800AF
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:10:52 -0500 (CDT)
Received: by ywk9 with SMTP id 9so1262902ywk.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:10:52 -0700 (PDT)
Received: by 10.236.176.193 with SMTP id b41mr3522702yhm.280.1304622651757;
	Thu, 05 May 2011 12:10:51 -0700 (PDT)
Received: from localhost.localdomain
	(adsl-99-66-253-228.dsl.emhril.sbcglobal.net [99.66.253.228])
	by mx.google.com with ESMTPS id h28sm1126817yhm.97.2011.05.05.12.10.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:10:51 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:10:48 -0500
Message-Id: <04458e66f8ac3c7c3a476c23c178161dc45215e5.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1304621382.git.aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>
Subject: [PATCH 1/7] insane: add micrblaze target info
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
X-List-Received-Date: Thu, 05 May 2011 19:10:57 -0000

* package_qa_get_machine_dict
* Add microblaze dic entry for QA
* Prebuilt toolchain triplet microblaze-unknown-linux-gnu-
* TARGET_OS is linux-gnu for this toolchain

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/classes/insane.bbclass |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index 742be5e..e9d4bfa 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -85,7 +85,9 @@ def package_qa_get_machine_dict():
             "linux-uclibcspe" : {
                         "powerpc":    (20,     0,    0,          False,         32),
                       },
-
+            "linux-gnu" :       {
+                        "microblaze": (47787,  0,    0,          False,         32),
+                      },
        }
 
 
-- 
1.7.4.4


