Return-Path: <net147@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE93E0034B
	for <poky@yoctoproject.org>; Sat, 28 Jul 2012 18:18:17 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so8844508pbb.35
	for <poky@yoctoproject.org>; Sat, 28 Jul 2012 18:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer;
	bh=91QYu4IT7NHl1CpehUGh0Y6IueOs4ONVhMYpCS5tYf8=;
	b=PlUEWw0RxX9QXFUoG5rTW/o60/AebaSO2u/LbCyVRuv7170qs1X+dYZGl2Fi+5e0Aj
	OmCtyHMfF79IZO84X12m2ms7shDBDgloEP5+W8Fjx0PfeEZh0MNU7NiYvwgepJgmmDDE
	A8BJQRlXHPA0WZF3wn2s6hrMxEWWdEiL/xINM1R6t4kTtWF3Xwlr5jJJp3l/x0vRjHWj
	ab2F8EMaaq7kO/6h2fLX14CXGebmwOM/6iBztu5xKh/UmnMuWxxJPA6ueDx4+11YIOtZ
	seoCwd+WftcdFA0hUMffUnSN1iMDLb9+F7r+f7Duray7Y8/Y7PnOrfud6OTLWSlr59Cj
	WJ5w==
Received: by 10.68.224.225 with SMTP id rf1mr24723546pbc.55.1343524697034;
	Sat, 28 Jul 2012 18:18:17 -0700 (PDT)
Received: from net147.co.cc (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244])
	by mx.google.com with ESMTPS id rg9sm4868033pbc.67.2012.07.28.18.18.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 28 Jul 2012 18:18:15 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 29 Jul 2012 11:18:08 +1000
Message-Id: <1343524688-12488-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 1.7.11.3
Subject: [PATCH] bison: apply remove-gets.patch to native build as well
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
X-List-Received-Date: Sun, 29 Jul 2012 01:18:17 -0000

In addition to the gets function possibly not being available with
the target glibc, it may not be available with the host glibc either.

Move remove-gets.patch from SRC_URI to BASE_SRC_URI to fix compile
error for native build when host glibc does not have the gets function.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 meta/recipes-devtools/bison/bison_2.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/bison/bison_2.5.bb b/meta/recipes-devtools/bison/bison_2.5.bb
index 687f06a..ae090d2 100644
--- a/meta/recipes-devtools/bison/bison_2.5.bb
+++ b/meta/recipes-devtools/bison/bison_2.5.bb
@@ -13,11 +13,11 @@ PR = "r2"
 
 BASE_SRC_URI = "${GNU_MIRROR}/bison/bison-${PV}.tar.gz \
 	   file://m4.patch \
+	   file://remove-gets.patch \
 	  "
 
 SRC_URI = "${BASE_SRC_URI} \
            file://fix_cross_manpage_building.patch \
-           file://remove-gets.patch \
           "
 
 SRC_URI[md5sum] = "687e1dcd29452789d34eaeea4c25abe4"
-- 
1.7.11.3


