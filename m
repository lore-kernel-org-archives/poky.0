Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA72E0027F
	for <poky@yoctoproject.org>; Thu,  6 Sep 2012 11:49:20 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.wrs.com
	[128.224.146.167])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q86InIYo019604;
	Thu, 6 Sep 2012 11:49:18 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  6 Sep 2012 14:46:15 -0400
Message-Id: <dab8c5b0b049c6d378907f1df28de0d308811786.1346957046.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1346957046.git.bruce.ashfield@windriver.com>
References: <cover.1346957046.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1346957046.git.bruce.ashfield@windriver.com>
References: <cover.1346957046.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] mpc8315e-rdb: switch to ppce300c3 tuning
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
X-List-Received-Date: Thu, 06 Sep 2012 18:49:21 -0000

It has been pointed out several times that the mpc8315e-rdb is a
ppce300c3 board, and should be using a different tuning than it's
current ppc603e.

This switching the default tuning of the board to the newly introduced
ppce300c3 tuning in oe-core.

[YOCTO #1192]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 266f9d4..7aa498d 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -3,7 +3,7 @@
 
 TARGET_FPU = ""
 
-require conf/machine/include/tune-ppc603e.inc
+require conf/machine/include/tune-ppce300c3.inc
 
 KERNEL_IMAGETYPE = "uImage"
 
-- 
1.7.0.4


