Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AE3D4C811D1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 01:34:19 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBN7YHuG010396
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 23:34:17 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 23:34:17 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 23:34:17 -0800
Message-Id: <762409d7c8e21df0138fa95e2e8e77a959c5ecae.1293089352.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1293089352.git.jingdong.lu@windriver.com>
References: <cover.1293089352.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Tue, 21 Dec 2010 17:20:04 +0800
Date: Thu, 23 Dec 2010 15:35:54 +0800
To: poky@yoctoproject.org
X-OriginalArrivalTime: 23 Dec 2010 07:34:17.0879 (UTC)
	FILETIME=[CE734270:01CBA273]
Subject: [PATCH 2/3] gcc: Add "--enable-clocale=gnu" option explicitly
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
X-List-Received-Date: Thu, 23 Dec 2010 07:34:19 -0000

Add "--enable-clocale=gun" option for gcc configuration explicitly in order to make sure C++ library can use correct locale module.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/gcc/gcc-configure-common.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc b/meta/recipes-devtools/gcc/gcc-configure-common.inc
index 4393777..b212fdc 100644
--- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
+++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
@@ -27,7 +27,7 @@ EXTRA_OECONF_INTERMEDIATE ?= ""
 
 GCCMULTILIB = "--disable-multilib"
 
-EXTRA_OECONF = "${@['--enable-clocale=generic', ''][bb.data.getVar('USE_NLS', d, 1) != 'no']} \
+EXTRA_OECONF = "${@['--enable-clocale=generic', ' --enable-clocale=gnu'][bb.data.getVar('USE_NLS', d, 1) != 'no']} \
                 --with-gnu-ld \
                 --enable-shared \
                 --enable-languages=${LANGUAGES} \
-- 
1.7.0.4


