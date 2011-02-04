Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E140E4C800BF;
	Thu,  3 Feb 2011 22:28:20 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p144SHUC029369;
	Thu, 3 Feb 2011 20:28:18 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Thu,  3 Feb 2011 23:31:25 -0500
Message-Id: <45924eb2a2a72ab145957e09a8c824037278556e.1296793636.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1296793636.git.bruce.ashfield@windriver.com>
References: <cover.1296793636.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1296793636.git.bruce.ashfield@windriver.com>
References: <cover.1296793636.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: uprev lttng to 2.6.37-lttng-0.242
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
X-List-Received-Date: Fri, 04 Feb 2011 04:28:21 -0000

commits: 7697c24..2e05e11
upstream: git://git.kernel.org/pub/scm/linux/kernel/git/compudj/linux-2.6-lttng.git

Update to lttng-0.242 for 2.6.37. Built and boot tested on all
architectures.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   22 ++++++++++----------
 1 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index db72140..f32e23a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -97,18 +97,18 @@ SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "a1c0ed6bf4060c10874b2a8547
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ef7f944e773950d4016b7643f9ecf052bbe250cd"
 SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm ?= "ed53121c69f1217348a442280870eca145d71a8b"
-SRCREV_machine_pn-linux-yocto_qemumips ?= "36c68e6766ab698a63da1ee95bd64e4baa0e796b"
-SRCREV_machine_pn-linux-yocto_qemuppc ?= "cdb58f93de8c4bb7f10b1dba2ab3f30e2c847030"
-SRCREV_machine_pn-linux-yocto_qemux86 ?= "72ebe58ddeb173881c9b35b98708ff1c70c3eb18"
-SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
-SRCREV_machine_pn-linux-yocto_emenlow ?= "92fe45e754d621d90aeb8dc4de156f4ac8f18b1c"
-SRCREV_machine_pn-linux-yocto_atom-pc ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
-SRCREV_machine_pn-linux-yocto_routerstationpro ?= "3266d06c6cc978218ad44bfee53ffa759cd15ed5"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "769e9d100a5287983426b74c652d88dc7d9fd47d"
-SRCREV_machine_pn-linux-yocto_beagleboard ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
+SRCREV_machine_pn-linux-yocto_qemuarm ?= "c6d1949b479118d027a6c0f0841247cc0ea697b2"
+SRCREV_machine_pn-linux-yocto_qemumips ?= "cab9f6666b9913136549cee2f5db07134f4d9780"
+SRCREV_machine_pn-linux-yocto_qemuppc ?= "4ab4b22d4768f65cfadccae6d749e4f3769b0afa"
+SRCREV_machine_pn-linux-yocto_qemux86 ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
+SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "30a8b903be9cb18ba1fc11242159fa5d7bfdb1cc"
+SRCREV_machine_pn-linux-yocto_atom-pc ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
+SRCREV_machine_pn-linux-yocto_routerstationpro ?= "4f1adb92fd08001ec76185c7febea7504c84f082"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "68fb0b8d73bbb336ffa4a47bc70ec1eab021b7f6"
+SRCREV_machine_pn-linux-yocto_beagleboard ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
 SRCREV_meta_pn-linux-yocto ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
-SRCREV_pn-linux-libc-headers-yocto ??= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
+SRCREV_pn-linux-libc-headers-yocto ??= "343c06b25b221aa7f7019aee83b2d976041fddce"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "af7ed6775487380be73160aa0298bf6019765fad"
-- 
1.7.0.4


