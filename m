Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9C14E0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 17:24:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfa15 with SMTP id fa15so17053238vbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jan 2012 17:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=y6SEa5XWKqcl0awL6RmGEsSjNGoCIea5pgDmVYyJ3PU=;
	b=rwMyc5cjprXOYo59fEn01Tmq5asanOrKdwRdaSzt34dZAx9kZ4Xr44n1bfD7GpJh+j
	EgLvXQ5bjbZy3V+ans1T0RiFHgfLO5ag2Su6Hy04Bok3G+g8IyO72660EndWSC+BeSwH
	3L4ImjFgpgvz/dS80D/Wt0+InH8wywmdpPqss=
Received: by 10.52.179.33 with SMTP id dd1mr19138258vdc.43.1325640241122;
	Tue, 03 Jan 2012 17:24:01 -0800 (PST)
Received: from localhost.localdomain (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id ek9sm29598906vdc.19.2012.01.03.17.24.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 17:24:00 -0800 (PST)
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jan 2012 20:23:57 -0500
Message-Id: <1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
X-Mailer: git-send-email 1.7.7.3
In-Reply-To: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
Subject: [PATCH 2/2] binutils: Allow plugins
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
X-List-Received-Date: Wed, 04 Jan 2012 01:24:02 -0000

Make sure it's possible to build binutils with
plugin support.

Signed-off-by: Derek Buitenhuis <derek.buitenhuis@gmail.com>
---
 .../binutils/binutils-cross-canadian.inc           |    3 ++-
 meta/recipes-devtools/binutils/binutils-cross.inc  |    3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
index 00648a6..4f20ad7 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
@@ -8,7 +8,8 @@ DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/l
 EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS} \
                 --program-prefix=${TARGET_PREFIX} \
                 --disable-werror \
-                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)}"
+                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)} \
+                ${@base_contains('DISTRO_FEATURES', 'binutils-plugins', '--enable-plugins', '', d)}"
 
 do_install () {
 	autotools_do_install
diff --git a/meta/recipes-devtools/binutils/binutils-cross.inc b/meta/recipes-devtools/binutils/binutils-cross.inc
index 80152a9..0af913d 100644
--- a/meta/recipes-devtools/binutils/binutils-cross.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross.inc
@@ -10,7 +10,8 @@ EXTRA_OECONF = "--with-sysroot=${STAGING_DIR_TARGET} \
                 --disable-werror \
                 --enable-poison-system-directories \
                 ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)} \
-                ${@base_contains('DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)}"
+                ${@base_contains('DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)} \
+                ${@base_contains('DISTRO_FEATURES', 'binutils-plugins', '--enable-plugins', '', d)}"
 
 do_install () {
 	oe_runmake 'DESTDIR=${D}' install
-- 
1.7.7.3


