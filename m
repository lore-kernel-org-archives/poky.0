Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CB8E01447
	for <poky@yoctoproject.org>; Sun, 23 Sep 2012 21:50:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q8O4oSek024946
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 23 Sep 2012 21:50:28 -0700 (PDT)
Received: from chenqi-OptiPlex-760.corp.ad.wrs.com (128.224.163.154) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Sun, 23 Sep 2012 21:50:28 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 24 Sep 2012 12:50:27 +0800
Message-ID: <1348462227-6672-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [PATCH] routerstation: Disable virtual terminal by default
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
X-List-Received-Date: Mon, 24 Sep 2012 04:50:29 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

This modifies the /etc/inittab on routerstationpro, avoiding the
"respawning too fast" message. The routerstation has a low memory,
so virtual terminal should be disable by default.

Fixes [YOCTO #3088]

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto-bsp/conf/machine/routerstationpro.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
index 707392d..feaa26e 100644
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
@@ -19,6 +19,7 @@ XSERVER ?= "xserver-xorg \
             xf86-video-fbdev"
 
 SERIAL_CONSOLE = "115200 ttyS0"
+USE_VT ?= "0"
 
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
-- 
1.7.9.5


