Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 890DB4C8006D
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 04:37:17 -0600 (CST)
Received: by wye20 with SMTP id 20so8334wye.35
	for <poky@yoctoproject.org>; Wed, 09 Feb 2011 02:37:16 -0800 (PST)
Received: by 10.227.152.78 with SMTP id f14mr13721975wbw.86.1297247835105;
	Wed, 09 Feb 2011 02:37:15 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id c54sm92064wer.30.2011.02.09.02.37.14
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 09 Feb 2011 02:37:14 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Wed,  9 Feb 2011 11:35:49 +0100
Message-Id: <1297247749-16779-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] binutils-cross-canadian.inc: disable -werror like -cross does
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
X-List-Received-Date: Wed, 09 Feb 2011 10:37:18 -0000

The error this works around is:

cc1: warnings being treated as errors
gas/config/tc-arm.c: In function 'parse_operands':
gas/config/tc-arm.c:1876:27: error: 'firsttype$defined' may be used uninitialized in this function
gas/config/tc-arm.c:1876:27: error: 'firsttype$index' may be used uninitialized in this function

Ideally it should get fixed properly, but let's mimic binutils-cross for now

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 .../binutils/binutils-cross-canadian.inc           |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
index e042ac7..95e535a 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
@@ -6,7 +6,8 @@ BPN = "binutils"
 
 DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/libc-nativesdk zlib-nativesdk gettext-nativesdk"
 EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TARGET_SYS} \
-                --program-prefix=${TARGET_PREFIX}"
+                --program-prefix=${TARGET_PREFIX} \
+                --disable-werror"
 
 do_install () {
 	autotools_do_install
-- 
1.6.6.1


