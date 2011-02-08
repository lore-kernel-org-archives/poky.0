Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81FE04C8006D
	for <poky@pokylinux.org>; Tue,  8 Feb 2011 14:26:46 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 99EAC1853B80;
	Tue,  8 Feb 2011 21:26:44 +0100 (CET)
X-Auth-Info: 7OjjaUPoa5PqOZooPoZldAYwpx7QDrvdAGWF7YBL2iY=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 915AA1C000A9;
	Tue,  8 Feb 2011 21:26:44 +0100 (CET)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 795344236E22;
	Tue,  8 Feb 2011 21:26:44 +0100 (CET)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 6A39E180169C9; Tue,  8 Feb 2011 21:26:44 +0100 (CET)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Tue,  8 Feb 2011 21:26:37 +0100
Message-Id: <1297196798-23779-2-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH 2/3] u-boot: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Tue, 08 Feb 2011 20:26:46 -0000

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-bsp/uboot/u-boot.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-boot.inc
index 889f621..6492016 100644
--- a/meta/recipes-bsp/uboot/u-boot.inc
+++ b/meta/recipes-bsp/uboot/u-boot.inc
@@ -5,6 +5,8 @@ PRIORITY = "optional"
 LICENSE = "GPL"
 PROVIDES = "virtual/bootloader"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
+
 inherit deploy
 
 PARALLEL_MAKE=""
-- 
1.7.4


