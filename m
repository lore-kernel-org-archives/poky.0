Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 094044C80050;
	Wed, 22 Dec 2010 00:24:15 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBM6OALP016700;
	Tue, 21 Dec 2010 22:24:11 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 22 Dec 2010 01:25:47 -0500
Message-Id: <5cf648ba09a93705141633f50c345a55d25d517f.1292998230.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292998230.git.bruce.ashfield@windriver.com>
References: <cover.1292998230.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292998230.git.bruce.ashfield@windriver.com>
References: <cover.1292998230.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/3] linux-yocto-stable: fix qemux86 branch name
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
X-List-Received-Date: Wed, 22 Dec 2010 06:24:16 -0000

The mapping of qemu to kernel branch name for the stable
kernel had a small leak from the devel kernel. Nothing
broke since qemux86 prefers the 2.6.37 kernel and this was
hidden.

This fixes the mapping for anyone who does want a 2.6.34 based
qemux86 kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
index 85b67f4..2f6eb2d 100644
--- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -1,7 +1,7 @@
 inherit kernel
 require linux-yocto.inc
 
-KMACHINE_qemux86  = "common_pc/base"
+KMACHINE_qemux86  = "common_pc"
 KMACHINE_qemux86-64  = "common_pc_64"
 KMACHINE_qemuppc  = "qemu_ppc32"
 KMACHINE_qemumips = "mti_malta32_be"
-- 
1.7.0.4


