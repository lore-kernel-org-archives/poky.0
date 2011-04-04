Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id E696A4C800A2
	for <poky@pokylinux.org>; Mon,  4 Apr 2011 17:20:25 -0500 (CDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 42A68188B59C;
	Tue,  5 Apr 2011 00:20:24 +0200 (CEST)
X-Auth-Info: C31NvGwQmdq7yrSvmyHIZ1f8jozXArFCO7luvX6sNDY=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 79A101C000E1;
	Tue,  5 Apr 2011 00:20:24 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 444F94BC152B;
	Tue,  5 Apr 2011 00:20:24 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 01D4518563702; Tue,  5 Apr 2011 00:20:23 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Tue,  5 Apr 2011 00:20:20 +0200
Message-Id: <1301955620-24573-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH] xproto: EXTRA_OECONF_append should start with a space
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
X-List-Received-Date: Mon, 04 Apr 2011 22:20:26 -0000

EXTRA_OECONF_append variable should start with a space to prevent
collapsing of two words into one during concatenation.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
index 58520d9..dea1667 100644
--- a/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
+++ b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=93ae8952e7d02d855516fbf2efb9a0d2"
 PR = "r0"
 PE = "1"
 
-EXTRA_OECONF_append = "--enable-specs=no"
+EXTRA_OECONF_append = " --enable-specs=no"
 BBCLASSEXTEND = "native nativesdk"
 
 SRC_URI[md5sum] = "65633168e5315c19defb4652cd3d83c1"
-- 
1.7.4


