Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26CAB4C80A1D;
	Fri, 18 Feb 2011 10:43:59 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1IGhtpc017804;
	Fri, 18 Feb 2011 08:43:56 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 18 Feb 2011 11:44:33 -0500
Message-Id: <16a84b34e003001600fd3a00fd1973f193500d1b.1298047352.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <y>
References: <y>
In-Reply-To: <cover.1298047352.git.bruce.ashfield@windriver.com>
References: <cover.1298047352.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: update to 2.6.37.1
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
X-List-Received-Date: Fri, 18 Feb 2011 16:43:59 -0000

Updating the SRCREVs to reflect the 2.6.37.1 merge.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
 1 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index bd6c281..32f105a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -98,19 +98,19 @@ SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ef7f944e773950d4016b7643f9e
 SRCREV_machine_pn-linux-yocto-stable ?= "72ca49ab08b8eb475cec82a10049503602325791"
 SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm ?= "33bf23ffea7cd8a31912924bafa8ea2ba3613fe2"
-SRCREV_machine_pn-linux-yocto_qemumips ?= "5ee86c26c3f7f2498f31fd09c283abf630fad0dc"
-SRCREV_machine_pn-linux-yocto_qemuppc ?= "3f5fe5067d9b911b4b93cad9d671ad20d0d099f0"
-SRCREV_machine_pn-linux-yocto_qemux86 ?= "b7a49018103933e8bc12f70f8d78aff5acf88bed"
-SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
-SRCREV_machine_pn-linux-yocto_emenlow ?= "5e0da33b2aedc6300460bb91921b8da202d6f652"
-SRCREV_machine_pn-linux-yocto_atom-pc ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
-SRCREV_machine_pn-linux-yocto_routerstationpro ?= "3e66595a0e6f428aa40e883fa7697ca8b145050f"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "aefd36272f47de297a77feaa583cbeb4935f3abb"
-SRCREV_machine_pn-linux-yocto_beagleboard ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
-SRCREV_machine_pn-linux-yocto ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_machine_pn-linux-yocto_qemuarm ?= "ff1a1f83d771b32f5b44f6b12572cfb15420b446"
+SRCREV_machine_pn-linux-yocto_qemumips ?= "6c6ab18c84f42e15cc1fdcb9012c287beecdb0b5"
+SRCREV_machine_pn-linux-yocto_qemuppc ?= "094132cc9d22ab3edc092bb9c7ee0e5fa309e318"
+SRCREV_machine_pn-linux-yocto_qemux86 ?= "91a9dc10dad9d29f07f59b2489b744325d2580a0"
+SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "929567ec621cf99e0932d8ede34f756e25d4c751"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "c6299ae5bece8e3a6e1bc2c236862ae004629aae"
+SRCREV_machine_pn-linux-yocto_atom-pc ?= "929567ec621cf99e0932d8ede34f756e25d4c751"
+SRCREV_machine_pn-linux-yocto_routerstationpro ?= "b557fff9c7f864ea2a9c81ac80ec176bba3d78ef"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "8f0124a21f5563b0c51c8426f4430ac222bd463d"
+SRCREV_machine_pn-linux-yocto_beagleboard ?= "929567ec621cf99e0932d8ede34f756e25d4c751"
+SRCREV_machine_pn-linux-yocto ?= "929567ec621cf99e0932d8ede34f756e25d4c751"
 SRCREV_meta_pn-linux-yocto ?= "29047c254624e0bd8a0ac6da92862f7c6357cb0b"
-SRCREV_pn-linux-libc-headers-yocto ??= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_pn-linux-libc-headers-yocto ??= "929567ec621cf99e0932d8ede34f756e25d4c751"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "af7ed6775487380be73160aa0298bf6019765fad"
-- 
1.7.0.4


