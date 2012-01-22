Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6205E0030B
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 10:41:31 -0800 (PST)
Received: by vcbfk13 with SMTP id fk13so1967055vcb.35
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 10:41:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=MA6p7AkbDd1FqCKWAn89lEYvyeuT6teQ4tLDW4FT810=;
	b=fOkUppSszaw2NxWz6976FQLIMWoiz2tobwaWMerN1lBBatdYyAB9ek5XMIZIcAorW6
	INqRMuHQFS+dXHXtHA9myGaF711u/CNGsZ/AQaC9KZpjAMG481YsjacnZ+z00UhZn3Xh
	S/ri8t5r2ZPnBegKKU0Uno3kwtYnqjFYVl2Pg=
Received: by 10.220.225.200 with SMTP id it8mr3049329vcb.18.1327257690769;
	Sun, 22 Jan 2012 10:41:30 -0800 (PST)
Received: from localhost.localdomain (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id fq7sm8636183vdc.16.2012.01.22.10.41.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 22 Jan 2012 10:41:30 -0800 (PST)
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 22 Jan 2012 13:41:22 -0500
Message-Id: <1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
X-Mailer: git-send-email 1.7.8.3
In-Reply-To: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
Subject: [PATCH 2/2 v2] binutils: Always enable plugins
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
X-List-Received-Date: Sun, 22 Jan 2012 18:41:32 -0000

Since oe-core now uses binutils 2.22+, plugins should be
well supported. Enable them by default.

Signed-off-by: Derek Buitenhuis <derek.buitenhuis@gmail.com>
---
 .../binutils/binutils-cross-canadian.inc           |    1 +
 meta/recipes-devtools/binutils/binutils-cross.inc  |    1 +
 meta/recipes-devtools/binutils/binutils.inc        |    1 +
 3 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
index 15b9abb..c902c51 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
@@ -8,6 +8,7 @@ DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/l
 EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS} \
                 --program-prefix=${TARGET_PREFIX} \
                 --disable-werror \
+                --enable-plugins \
                 ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)}"
 
 do_install () {
diff --git a/meta/recipes-devtools/binutils/binutils-cross.inc b/meta/recipes-devtools/binutils/binutils-cross.inc
index 80152a9..38457e8 100644
--- a/meta/recipes-devtools/binutils/binutils-cross.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross.inc
@@ -9,6 +9,7 @@ EXTRA_OECONF = "--with-sysroot=${STAGING_DIR_TARGET} \
                 --disable-install-libbfd \
                 --disable-werror \
                 --enable-poison-system-directories \
+                --enable-plugins \
                 ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)} \
                 ${@base_contains('DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)}"
 
diff --git a/meta/recipes-devtools/binutils/binutils.inc b/meta/recipes-devtools/binutils/binutils.inc
index 30a0416..5449e1a 100644
--- a/meta/recipes-devtools/binutils/binutils.inc
+++ b/meta/recipes-devtools/binutils/binutils.inc
@@ -52,6 +52,7 @@ B = "${S}/build.${HOST_SYS}.${TARGET_SYS}"
 EXTRA_OECONF = "--program-prefix=${TARGET_PREFIX} \
                 --enable-install-libbfd \
                 --enable-shared \
+                --enable-plugins \
                 ${@base_contains('DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)}"
 
 EXTRA_OECONF_virtclass-native = "--enable-target=all --enable-64-bit-bfd --enable-install-libbfd"
-- 
1.7.8.3


