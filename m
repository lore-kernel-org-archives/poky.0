Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ACE074C800A9
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 12:55:55 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p12ItoAd012858
	for <poky@yoctoproject.org>; Wed, 2 Feb 2011 10:55:50 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 10:55:50 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 10:55:49 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Wed,  2 Feb 2011 12:52:20 -0600
Message-Id: <3a5ef68cb67348ef3e61ea8d527e4c42cd6bf945.1296672559.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296672559.git.mark.hatle@windriver.com>
References: <cover.1296672559.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296672559.git.mark.hatle@windriver.com>
References: <cover.1296672559.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 02 Feb 2011 18:55:49.0963 (UTC)
	FILETIME=[CEF7D9B0:01CBC30A]
Subject: [PATCH 1/3] bitbake.conf: Fix missing NM definition
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
X-List-Received-Date: Wed, 02 Feb 2011 18:55:55 -0000

The definition of NM was missing, causing certain configure calls to revert
to using the host system's version of NM.  This can cause problems on some
MIPS based targets, but is theoretically wrong everywhere.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/conf/bitbake.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index b406b09..3292a49 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -403,6 +403,7 @@ export RANLIB = "${HOST_PREFIX}ranlib"
 export STRIP = "${HOST_PREFIX}strip"
 export OBJCOPY = "${HOST_PREFIX}objcopy"
 export OBJDUMP = "${HOST_PREFIX}objdump"
+export NM = "${HOST_PREFIX}nm"
 PYTHON = "${@sys.executable}"
 
 export BUILD_CC = "${CCACHE}${BUILD_PREFIX}gcc ${BUILD_CC_ARCH}"
@@ -414,6 +415,7 @@ export BUILD_CCLD = "${BUILD_PREFIX}gcc"
 export BUILD_AR = "${BUILD_PREFIX}ar"
 export BUILD_RANLIB = "${BUILD_PREFIX}ranlib"
 export BUILD_STRIP = "${BUILD_PREFIX}strip"
+export BUILD_NM = "${BUILD_PREFIX}nm"
 
 export MAKE = "make"
 EXTRA_OEMAKE = "-e MAKEFLAGS="
-- 
1.7.3.4


