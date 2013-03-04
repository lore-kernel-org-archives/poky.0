Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id ECBECE0144A
	for <poky@yoctoproject.org>; Mon,  4 Mar 2013 03:09:21 -0800 (PST)
Received: by mail-we0-f176.google.com with SMTP id s43so4270731wey.21
	for <poky@yoctoproject.org>; Mon, 04 Mar 2013 03:09:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=UnrU8dpwzrDQU9nX4Cs+QlCytnHhsCozS0eW6OtglYM=;
	b=aJG87nfEWK9lAwpp2q64Cen6uRSNx0kTpj3NwiTUm5/mhjOU5avEHx+uqDn6J/BnTu
	VzY0iGpOqa1d9M8AySfOy2ZuEkLrTEJ+8pzQr8kr0/yVSNTix1OMwXtKhTWX+rAb04Qz
	bEddvPesTEAZyQT0Y+3Py96sNvMklHEVOqBRcWJuudDEIJbnMXxs7j80Dn+mVq/x1aqJ
	/sUgwtyInV+nBM2wfxtrURsg15UQPvMy/LInHASdQAv1742mtS+PqPlOOV4lEWVSZWVU
	DkEjOEJkpyQHRnk/QHsjtX3WIEhC1Odw491ncoBRuLuWX/HURRn/P0a1YEEbNYQ0SfEU
	TVLA==
X-Received: by 10.180.75.177 with SMTP id d17mr10790343wiw.16.1362395359596;
	Mon, 04 Mar 2013 03:09:19 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id du2sm13420373wib.0.2013.03.04.03.09.17
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 04 Mar 2013 03:09:18 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Mar 2013 11:06:51 +0000
Message-Id: <1362395211-2069-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQlYyUl1kFiOlRVW8zKxfE+Ygna6lDeqj5zS5qty0+QcWLRHTuJwQuqgGgKJaz3KkPFpZYcU
Subject: [PATCH] xserver-xf86-config: atom-pc doesn't need a xorg.conf
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Mar 2013 11:09:22 -0000

Replace xorg.conf with an empty file so it doesn't get installed, as atom-pc can
auto-detect the hardware.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../xserver-xf86-config/atom-pc/xorg.conf          |   26 --------------------
 1 file changed, 26 deletions(-)

diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/atom-pc/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/atom-pc/xorg.conf
index e18b911..e69de29 100644
--- a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/atom-pc/xorg.conf
+++ b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/atom-pc/xorg.conf
@@ -1,26 +0,0 @@
-Section "Device"
-    Identifier    "Intel Graphics Driver"
-    Driver        "intel"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device        "Intel Graphics Driver"
-    Monitor        "Generic Monitor"
-    DefaultDepth    24
-EndSection
-
-Section "ServerLayout"
-    Identifier    "Default Layout"
-    Screen        "Default Screen"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-    Option	  "AutoAddDevices" "False"
-EndSection
-- 
1.7.10.4


