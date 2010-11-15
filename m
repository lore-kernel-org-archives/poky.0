Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C03884C810D8;
	Mon, 15 Nov 2010 10:55:52 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAFGtmOX018032;
	Mon, 15 Nov 2010 08:55:51 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 15 Nov 2010 11:56:14 -0500
Message-Id: <caec3532649b19a91742bcac20cbcd853b5bd5e6.1289839979.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1289839979.git.bruce.ashfield@windriver.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1289839979.git.bruce.ashfield@windriver.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 3/3] linux-yocto: update SRCREVs for linux-yocto rename
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
X-List-Received-Date: Mon, 15 Nov 2010 16:55:52 -0000

Now that linux-wrs has been renamed linux-yocto, we need to
update the SRCREVs to have the new name.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
 1 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index ed8420f..be2d77c 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -82,18 +82,18 @@ SRCREV_pn-linux-omap-zoomsync ??= "015cbaf1035cd9a61d33a27de2a22902555db3c5"
 SRCREV_pn-linux-omap2 ??= "d3b3ae0fe6c71641da19c8de466ec366d39847e3"
 SRCREV_pn-linux-omap3 ??= "de1121fdb899f762b9e717f44eaf3fae7c00cd3e"
 SRCREV_pn-linux-omap3-pm ??= "totallybroken"
-SRCREV_machine_pn-linux-wrs_qemuarm ?= "4f4177b4bea5b8858acc1eeb788d80b7af0df962"
-SRCREV_machine_pn-linux-wrs_qemumips ?= "81f3cd467b9d51fa1dfa2d5939337cc756ae8061"
-SRCREV_machine_pn-linux-wrs_qemuppc ?= "9ac0daee43dd19d8bea828cf79450c9748ae0daa"
-SRCREV_machine_pn-linux-wrs_qemux86 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-wrs_qemux86-64 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-wrs_emenlow ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
-SRCREV_machine_pn-linux-wrs_atom-pc ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-wrs_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
-SRCREV_machine_pn-linux-wrs_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
-SRCREV_machine_pn-linux-wrs_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_meta_pn-linux-wrs ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
-SRCREV_pn-linux-libc-headers-wrs ??= "09a39c638dd65dc27c549c119abe1af2631b2ae0"
+SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f4177b4bea5b8858acc1eeb788d80b7af0df962"
+SRCREV_machine_pn-linux-yocto_qemumips ?= "81f3cd467b9d51fa1dfa2d5939337cc756ae8061"
+SRCREV_machine_pn-linux-yocto_qemuppc ?= "9ac0daee43dd19d8bea828cf79450c9748ae0daa"
+SRCREV_machine_pn-linux-yocto_qemux86 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
+SRCREV_machine_pn-linux-yocto_atom-pc ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_machine_pn-linux-yocto_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
+SRCREV_machine_pn-linux-yocto_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_meta_pn-linux-yocto ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
+SRCREV_pn-linux-libc-headers-yocto ??= "09a39c638dd65dc27c549c119abe1af2631b2ae0"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "2096"
-- 
1.7.0.4


