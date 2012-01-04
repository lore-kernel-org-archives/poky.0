Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D541E0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 17:24:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so18579454vcb.35
	for <poky@yoctoproject.org>; Tue, 03 Jan 2012 17:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=ZwNEHO9LPEau9GvDu5lcbmZFnYoVfWO3ASH4RNCLCs0=;
	b=uG2YfDH401mPygYeDR5XAeKpDu2WKUhJg9tOFj2rOVJ14nlqS4jj1KNrCvcpx4XQR4
	KwyOHjdA8FzZFiE5zUGOq8JY67hufws2PecGbzMv/+LoCAKYyR3ns6dxOv6YsrsOg3Qu
	3tEd+xOK0YNaFQJo2Tn2MIZmCznzy96vRLX+0=
Received: by 10.220.106.138 with SMTP id x10mr21480474vco.64.1325640240296;
	Tue, 03 Jan 2012 17:24:00 -0800 (PST)
Received: from localhost.localdomain (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id ek9sm29598906vdc.19.2012.01.03.17.23.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 17:23:59 -0800 (PST)
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jan 2012 20:23:56 -0500
Message-Id: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
X-Mailer: git-send-email 1.7.7.3
Subject: [PATCH 1/2] binutils-cross-canadian: Allow ld-is-gold
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
X-List-Received-Date: Wed, 04 Jan 2012 01:24:01 -0000

In order to actually generate a toolchain (with
bitbake meta-toolchain) that supports gold, binutils-
cross-canadian also needs to be built this way.

Signed-off-by: Derek Buitenhuis <derek.buitenhuis@gmail.com>
---
 .../binutils/binutils-cross-canadian.inc           |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
index b1cee67..00648a6 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
@@ -7,7 +7,8 @@ BPN = "binutils"
 DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/libc-nativesdk zlib-nativesdk gettext-nativesdk"
 EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS} \
                 --program-prefix=${TARGET_PREFIX} \
-                --disable-werror"
+                --disable-werror \
+                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)}"
 
 do_install () {
 	autotools_do_install
-- 
1.7.7.3


