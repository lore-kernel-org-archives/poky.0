Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01DA74C8006D
	for <poky@pokylinux.org>; Tue,  8 Feb 2011 14:26:46 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 9CF21186DEE9;
	Tue,  8 Feb 2011 21:26:45 +0100 (CET)
X-Auth-Info: 55vhuWs/nxdiMPjz2khu/qTJ8ZGm5pwzsJsGkr5tn+A=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id BE52D1C0010A;
	Tue,  8 Feb 2011 21:26:45 +0100 (CET)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id A24AF4236E22;
	Tue,  8 Feb 2011 21:26:45 +0100 (CET)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 92D58180169C9; Tue,  8 Feb 2011 21:26:45 +0100 (CET)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Tue,  8 Feb 2011 21:26:38 +0100
Message-Id: <1297196798-23779-3-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH 3/3] u-boot: compile with -O2 on PowerPC
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
X-List-Received-Date: Tue, 08 Feb 2011 20:26:47 -0000

gcc on PowerPC is currently compiled with -Os optimization disabled so
we have to use -O2 on PowerPC instead.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-bsp/uboot/u-boot.inc |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-boot.inc
index 6492016..7694c77 100644
--- a/meta/recipes-bsp/uboot/u-boot.inc
+++ b/meta/recipes-bsp/uboot/u-boot.inc
@@ -22,7 +22,12 @@ do_compile () {
 	unset CFLAGS
 	unset CPPFLAGS
 	oe_runmake ${UBOOT_MACHINE}
-	oe_runmake all
+	# -Os is disabled on PowerPC
+	if [ ${TARGET_ARCH} == "powerpc" ] ; then
+		oe_runmake OPTFLAGS=-O2 all
+	else
+		oe_runmake all
+	fi
 }
 
 do_deploy () {
-- 
1.7.4


