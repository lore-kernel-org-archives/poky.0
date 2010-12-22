Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06F324C80050;
	Wed, 22 Dec 2010 15:34:51 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBMLXiBh017213;
	Wed, 22 Dec 2010 13:33:46 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 22 Dec 2010 16:35:25 -0500
Message-Id: <ceaade8ad95d1ea5f54fdfe7262a3f218576a7a0.1293053653.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1293053653.git.bruce.ashfield@windriver.com>
References: <cover.1293053653.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1293053653.git.bruce.ashfield@windriver.com>
References: <cover.1293053653.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: add dropped qemuppc configuration
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
X-List-Received-Date: Wed, 22 Dec 2010 21:34:52 -0000

The _ to - mass change mangled a config file name, which was
dropped from the update. This adds the fixed file back to the
meta branch of the kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 9605336..03e788b 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -106,7 +106,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b
 SRCREV_machine_pn-linux-yocto_routerstationpro = "f0d79e2ae0cbb3924c57655b8c7d6a1276c9fc05"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "a0243e84c1cca7fb625ae4bd76274882ccbe4333"
 SRCREV_machine_pn-linux-yocto_beagleboard = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
-SRCREV_meta_pn-linux-yocto ?= "7ca94548e68a72e57715d65d6d8f723582aafa59"
+SRCREV_meta_pn-linux-yocto ?= "5955ebea1f0d2fbd67a66ed138ce2b3363adf72a"
 SRCREV_pn-linux-libc-headers-yocto ??= "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


