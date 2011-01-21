Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A08C94C811B1
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:40:09 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L9e9mf007650
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:40:09 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:40:09 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:40:08 -0800
Message-Id: <32cd18453f66daeec85290579d5af8c6dd275848.1295602319.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295602319.git.jingdong.lu@windriver.com>
References: <cover.1295602319.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Fri, 21 Jan 2011 17:29:32 +0800
Date: Fri, 21 Jan 2011 17:38:50 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 21 Jan 2011 09:40:09.0674 (UTC)
	FILETIME=[31A67AA0:01CBB94F]
Subject: [PATCH 2/2] gcc: Add "--enable-clocale=gnu" option explicitly
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
X-List-Received-Date: Fri, 21 Jan 2011 09:40:09 -0000

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


