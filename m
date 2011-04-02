Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 57CB54C800A6
	for <poky@pokylinux.org>; Fri,  1 Apr 2011 19:13:44 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id D90A91C1DA0E;
	Sat,  2 Apr 2011 02:13:42 +0200 (CEST)
X-Auth-Info: wqYcascyO34uE7ON81fLaBPBuomX8Wp73qqqkgctpfY=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id D30B01C00087;
	Sat,  2 Apr 2011 02:13:42 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 9140B471AE76;
	Sat,  2 Apr 2011 02:13:42 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id AAC9F18563702; Sat,  2 Apr 2011 02:13:41 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Sat,  2 Apr 2011 02:13:36 +0200
Message-Id: <1301703217-29637-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH 1/2] qemu: fix broken glflags.patch
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
X-List-Received-Date: Sat, 02 Apr 2011 00:13:45 -0000

Current patch doesn't apply because of wrong file name.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 .../qemu/qemu-0.14.0/glflags.patch                 |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu-0.14.0/glflags.patch b/meta/recipes-devtools/qemu/qemu-0.14.0/glflags.patch
index 99cc417..0a27c2d 100644
--- a/meta/recipes-devtools/qemu/qemu-0.14.0/glflags.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.14.0/glflags.patch
@@ -1,7 +1,7 @@
 Index: git/Makefile.target
 ===================================================================
---- git.orig/Makefile.target2010-05-27 12:35:26.000000000 -0400
-+++ git/Makefile.target2010-05-27 12:59:53.520415731 -0400
+--- git.orig/Makefile.target	2010-05-27 12:35:26.000000000 -0400
++++ git/Makefile.target	2010-05-27 12:59:53.520415731 -0400
 @@ -326,7 +326,7 @@ vl.o: qemu-options.h
  
  monitor.o: qemu-monitor.h
@@ -10,4 +10,4 @@ Index: git/Makefile.target
 +LIBS += -lGL
  
  ARLIBS=../libqemu_common.a libqemu.a $(HWLIB)
- 
\ No newline at end of file
+ 
-- 
1.7.4


