Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id D73C04C8057C
	for <poky@pokylinux.org>; Wed, 27 Apr 2011 17:57:06 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 9A8121C00A3F;
	Thu, 28 Apr 2011 00:57:05 +0200 (CEST)
X-Auth-Info: Y2jqDRL4SIK8rYyEcxSPU3pgcc7337Vew8OctOliSF8=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 95B4F1C0009C;
	Thu, 28 Apr 2011 00:57:05 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 76C3142E45D8;
	Thu, 28 Apr 2011 00:57:05 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 682EC18014EEE; Thu, 28 Apr 2011 00:57:05 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Thu, 28 Apr 2011 00:56:59 +0200
Message-Id: <1303945019-24304-2-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <1303945019-24304-1-git-send-email-yanok@emcraft.com>
References: <1303945019-24304-1-git-send-email-yanok@emcraft.com>
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH 2/2] liberation-fonts: postinst can't be called offline
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
X-List-Received-Date: Wed, 27 Apr 2011 22:57:07 -0000

fc-cache should be called on target system. Or maybe we should pass a
suitable directory list to it?

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 .../ttf-fonts/liberation-fonts_1.04.bb             |    3 +++
 .../ttf-fonts/liberation-fonts_1.06.bb             |    3 +++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
index c50d6eb..81aee0e 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
@@ -34,6 +34,9 @@ do_install () {
 
 pkg_postinst_${PN} () {
 #!/bin/sh
+if [ "x$D" != "x" ] ; then
+	exit 1
+fi
 fc-cache
 }
 
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
index d910cff..1f023b7 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
@@ -35,6 +35,9 @@ do_install () {
 
 pkg_postinst_${PN} () {
 #!/bin/sh
+if [ "x$D" != "x" ] ; then
+	exit 1
+fi
 fc-cache
 }
 
-- 
1.7.4.4


