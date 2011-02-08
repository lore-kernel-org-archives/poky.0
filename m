Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 638EF4C8006D
	for <poky@pokylinux.org>; Tue,  8 Feb 2011 14:26:44 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 43A771C0F581;
	Tue,  8 Feb 2011 21:26:43 +0100 (CET)
X-Auth-Info: PQ7FmSJMKIpJ/GavJe+/odjsy7+bJ7FNhnhETb8bifM=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 26C931C00120;
	Tue,  8 Feb 2011 21:26:43 +0100 (CET)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 07F804236E22;
	Tue,  8 Feb 2011 21:26:43 +0100 (CET)
Received: by pollux.denx.de (Postfix, from userid 547)
	id BCA59180169C9; Tue,  8 Feb 2011 21:26:42 +0100 (CET)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Tue,  8 Feb 2011 21:26:36 +0100
Message-Id: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH 1/3] linux: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Tue, 08 Feb 2011 20:26:45 -0000

Linux is licensed under GPL so add appropriate LIC_FILES_CHKSUM to
linux.inc file.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-kernel/linux/linux.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux.inc b/meta/recipes-kernel/linux/linux.inc
index 93859bb..c23d90f 100644
--- a/meta/recipes-kernel/linux/linux.inc
+++ b/meta/recipes-kernel/linux/linux.inc
@@ -2,6 +2,8 @@ DESCRIPTION = "Linux Kernel"
 SECTION = "kernel"
 LICENSE = "GPL"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
+
 inherit kernel
 
 DEPENDS_append_em-x270 = " mtd-utils "
-- 
1.7.4


