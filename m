Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9BAF4C800A9;
	Wed,  2 Feb 2011 11:08:22 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p12H8Hp3022426;
	Wed, 2 Feb 2011 09:08:20 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  2 Feb 2011 12:11:22 -0500
Message-Id: <baf03e7534c825725732db77b6c4b183825d201b.1296666481.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1296666481.git.bruce.ashfield@windriver.com>
References: <cover.1296666481.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1296666481.git.bruce.ashfield@windriver.com>
References: <cover.1296666481.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: BSP updates
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
X-List-Received-Date: Wed, 02 Feb 2011 17:08:23 -0000

Updating for the sugarbay and beagleboard BSPs. To make the sugbay
inhert common-pc-64 generic config/changes/fixes it has been
branched in the kernel as yocto/standard/common-pc-64/sugarbar, as
a result, we'll bump the common-pc-64 to be yocto/standard/common-pc-64/base.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index ac0de6a..93c7233 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -95,18 +95,18 @@ SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "a1c0ed6bf4060c10874b2a8547
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ef7f944e773950d4016b7643f9ecf052bbe250cd"
 SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f86b5a0cb23faa4134cc004730d673f6640614b"
-SRCREV_machine_pn-linux-yocto_qemumips ?= "2b43d84250a582b61397ad5f59a6445ce1258615"
-SRCREV_machine_pn-linux-yocto_qemuppc ?= "20f182db27f3e6fc6bd55bfc9e24c8c023fbff7f"
-SRCREV_machine_pn-linux-yocto_qemux86 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_machine_pn-linux-yocto_emenlow ?= "c19e556f79f03c8f1e5e84ccd9b5436c2001fcce"
-SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_machine_pn-linux-yocto_routerstationpro ?= "219a5f9dc6e5beced36184e141f80b2df61ae32f"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
-SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_meta_pn-linux-yocto ?= "e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99"
-SRCREV_pn-linux-libc-headers-yocto ??= "a9d833fda90e2f1257888a97e092135610b5f259"
+SRCREV_machine_pn-linux-yocto_qemuarm ?= "ed53121c69f1217348a442280870eca145d71a8b"
+SRCREV_machine_pn-linux-yocto_qemumips ?= "36c68e6766ab698a63da1ee95bd64e4baa0e796b"
+SRCREV_machine_pn-linux-yocto_qemuppc ?= "cdb58f93de8c4bb7f10b1dba2ab3f30e2c847030"
+SRCREV_machine_pn-linux-yocto_qemux86 ?= "72ebe58ddeb173881c9b35b98708ff1c70c3eb18"
+SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "92fe45e754d621d90aeb8dc4de156f4ac8f18b1c"
+SRCREV_machine_pn-linux-yocto_atom-pc ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
+SRCREV_machine_pn-linux-yocto_routerstationpro ?= "3266d06c6cc978218ad44bfee53ffa759cd15ed5"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "769e9d100a5287983426b74c652d88dc7d9fd47d"
+SRCREV_machine_pn-linux-yocto_beagleboard ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
+SRCREV_meta_pn-linux-yocto ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
+SRCREV_pn-linux-libc-headers-yocto ??= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "af7ed6775487380be73160aa0298bf6019765fad"
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index b1486bc..c2f6606 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -2,7 +2,7 @@ inherit kernel
 require linux-yocto.inc
 
 KMACHINE_qemux86  = "yocto/standard/common-pc/base"
-KMACHINE_qemux86-64  = "yocto/standard/common-pc-64"
+KMACHINE_qemux86-64  = "yocto/standard/common-pc-64/base"
 KMACHINE_qemuppc  = "yocto/standard/qemu-ppc32"
 KMACHINE_qemumips = "yocto/standard/mti-malta32-be"
 KMACHINE_qemuarm  = "yocto/standard/arm-versatile-926ejs"
-- 
1.7.0.4


