Return-Path: <aalonso@secretlab.ca>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DB5B4C800C0
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:11:08 -0500 (CDT)
Received: by gxk7 with SMTP id 7so1242801gxk.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:11:08 -0700 (PDT)
Received: by 10.150.164.18 with SMTP id m18mr2767571ybe.231.1304622668137;
	Thu, 05 May 2011 12:11:08 -0700 (PDT)
Received: from localhost.localdomain
	(adsl-99-66-253-228.dsl.emhril.sbcglobal.net [99.66.253.228])
	by mx.google.com with ESMTPS id b5sm759176ybn.22.2011.05.05.12.11.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:11:07 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:11:05 -0500
Message-Id: <493cc0095f62ce160a6abafde845b65e84934984.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1304621382.git.aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>
Subject: [PATCH 5/7] image-mklibs: add microblaze arch support
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
X-List-Received-Date: Thu, 05 May 2011 19:11:08 -0000

* In function mklibs_optimize_image_doit
* Add microblaze arch case for setting the dynamic_loader
  used by "mklibs" call

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/classes/image-mklibs.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/image-mklibs.bbclass b/meta/classes/image-mklibs.bbclass
index 0e72b01..9f5a4ea 100644
--- a/meta/classes/image-mklibs.bbclass
+++ b/meta/classes/image-mklibs.bbclass
@@ -16,7 +16,7 @@ mklibs_optimize_image_doit() {
 		> ${WORKDIR}/mklibs/executables.list
 
 	case ${TARGET_ARCH} in
-		powerpc | mips )
+		powerpc | mips | microblaze )
 			dynamic_loader="/lib/ld.so.1"
 			;;
 		x86_64)
-- 
1.7.4.4


