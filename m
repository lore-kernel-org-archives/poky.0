Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 095324C811E1
	for <poky@pokylinux.org>; Fri, 13 May 2011 11:02:57 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 91C811C0F56C;
	Fri, 13 May 2011 18:02:56 +0200 (CEST)
X-Auth-Info: fpEff4ihk6MGTwlXPLX6QGE0Bm11e94SpShqqTc3+28=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8D4EC1C0009D;
	Fri, 13 May 2011 18:02:56 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id AC8CC4003836;
	Fri, 13 May 2011 18:02:55 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 3C6DE18563706; Fri, 13 May 2011 18:02:55 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Fri, 13 May 2011 18:02:52 +0200
Message-Id: <1305302572-25732-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH] qt4-tools-nativesdk: build qmake for SDK_ARCH
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
X-List-Received-Date: Fri, 13 May 2011 16:02:58 -0000

We should build qmake suitable for SDK instead of providing the
version from staging.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-qt/qt4/qt4-tools-nativesdk.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
index 5faf40c..734a715 100644
--- a/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
+++ b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
@@ -92,6 +92,8 @@ do_compile() {
     for i in ${TOBUILD}; do
         cd ${S}/$i && oe_runmake CC="${CC}" CXX="${CXX}"
     done
+    # build qmake for target
+    (cd ${S}/qmake; QMAKESPEC=${S}/mkspecs/${TARGET_OS}-oe-g++ ../bin/qmake; oe_runmake CC="${CC}" CXX="${CXX}")
 }
 
 do_install() {
-- 
1.7.4.4


