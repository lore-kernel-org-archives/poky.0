Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A48684C800B0;
	Tue, 15 Feb 2011 13:07:47 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1FJ74Fs015571;
	Tue, 15 Feb 2011 11:07:05 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 15 Feb 2011 14:07:29 -0500
Message-Id: <f465df4aab42a9b4fdd2c2def8387208fcb00847.1297796707.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297796707.git.bruce.ashfield@windriver.com>
References: <cover.1297796707.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297796707.git.bruce.ashfield@windriver.com>
References: <cover.1297796707.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: add jasperforest BSP and fix lttng NMI bug
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
X-List-Received-Date: Tue, 15 Feb 2011 19:07:47 -0000

During the introduction of the jasperforest BSP, a lttng
issues was picked up with NMI tracing. The upstream (and
our solution) is to revert that commit.

This change updates the meta repo for jasperforest and pushes
out the nmi revert to all BSPs.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   27 +++++++++----------
 1 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index a04fa9e..078e2ae 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -98,20 +98,19 @@ SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ef7f944e773950d4016b7643f9e
 SRCREV_machine_pn-linux-yocto-stable ?= "72ca49ab08b8eb475cec82a10049503602325791"
 SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm ?= "c6d1949b479118d027a6c0f0841247cc0ea697b2"
-SRCREV_machine_pn-linux-yocto_qemumips ?= "cab9f6666b9913136549cee2f5db07134f4d9780"
-SRCREV_machine_pn-linux-yocto_qemuppc ?= "4ab4b22d4768f65cfadccae6d749e4f3769b0afa"
-SRCREV_machine_pn-linux-yocto_qemux86 ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
-SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
-SRCREV_machine_pn-linux-yocto_emenlow ?= "30a8b903be9cb18ba1fc11242159fa5d7bfdb1cc"
-SRCREV_machine_pn-linux-yocto_atom-pc ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
-SRCREV_machine_pn-linux-yocto_routerstationpro ?= "4f1adb92fd08001ec76185c7febea7504c84f082"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "68fb0b8d73bbb336ffa4a47bc70ec1eab021b7f6"
-SRCREV_machine_pn-linux-yocto_beagleboard ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
-SRCREV_machine_pn-linux-yocto ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
-SRCREV_meta_pn-linux-yocto ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
-SRCREV_machine_pn-linux-yocto ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
-SRCREV_pn-linux-libc-headers-yocto ??= "343c06b25b221aa7f7019aee83b2d976041fddce"
+SRCREV_machine_pn-linux-yocto_qemuarm ?= "33bf23ffea7cd8a31912924bafa8ea2ba3613fe2"
+SRCREV_machine_pn-linux-yocto_qemumips ?= "5ee86c26c3f7f2498f31fd09c283abf630fad0dc"
+SRCREV_machine_pn-linux-yocto_qemuppc ?= "3f5fe5067d9b911b4b93cad9d671ad20d0d099f0"
+SRCREV_machine_pn-linux-yocto_qemux86 ?= "b7a49018103933e8bc12f70f8d78aff5acf88bed"
+SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "5e0da33b2aedc6300460bb91921b8da202d6f652"
+SRCREV_machine_pn-linux-yocto_atom-pc ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_machine_pn-linux-yocto_routerstationpro ?= "3e66595a0e6f428aa40e883fa7697ca8b145050f"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "aefd36272f47de297a77feaa583cbeb4935f3abb"
+SRCREV_machine_pn-linux-yocto_beagleboard ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_machine_pn-linux-yocto ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_meta_pn-linux-yocto ?= "29047c254624e0bd8a0ac6da92862f7c6357cb0b"
+SRCREV_pn-linux-libc-headers-yocto ??= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "af7ed6775487380be73160aa0298bf6019765fad"
-- 
1.7.0.4


