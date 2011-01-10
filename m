Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46CA14C811F3;
	Mon, 10 Jan 2011 11:28:41 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0AHSZGY008979;
	Mon, 10 Jan 2011 09:28:39 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 10 Jan 2011 12:30:52 -0500
Message-Id: <526a7be9a5de9985128e46aaa8c63bd52c2104ac.1294680187.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 5/5] linux-yocto: update to 2.6.37
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
X-List-Received-Date: Mon, 10 Jan 2011 17:28:41 -0000

Fixes [BUGID: 620]

Update the SRCREVs to include the full 2.6.37 release plus the
forward port of the alternate RPC port patch. With this fix,
we can complete usermode NFS booting of all the qemu* targets.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   22 ++++++++++----------
 1 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 65681cc..e094109 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -95,18 +95,18 @@ SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
 SRCREV_meta_pn-linux-yocto-stable ?= "ed446ecd29e8c0f81ab8630a2db652121eeb0b75"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm = "605b1b1e0c68e9f78a7fb33aa219327153a4a890"
-SRCREV_machine_pn-linux-yocto_qemumips = "0f05ab306ac79684a3352f28db91dfb903c67410"
-SRCREV_machine_pn-linux-yocto_qemuppc = "d7f2a74cf32e9d6e26e66699d1422096437d3d0e"
-SRCREV_machine_pn-linux-yocto_qemux86 = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
-SRCREV_machine_pn-linux-yocto_qemux86-64 = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
-SRCREV_machine_pn-linux-yocto_emenlow = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
-SRCREV_machine_pn-linux-yocto_atom-pc = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
-SRCREV_machine_pn-linux-yocto_routerstationpro = "cc1d802228803e0ebf27f3d3772de3620159d195"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "be26676bf67b0c4b5f36b57fe9e46f8bfd2a67c9"
-SRCREV_machine_pn-linux-yocto_beagleboard = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
+SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f86b5a0cb23faa4134cc004730d673f6640614b"
+SRCREV_machine_pn-linux-yocto_qemumips ?= "2b43d84250a582b61397ad5f59a6445ce1258615"
+SRCREV_machine_pn-linux-yocto_qemuppc ?= "20f182db27f3e6fc6bd55bfc9e24c8c023fbff7f"
+SRCREV_machine_pn-linux-yocto_qemux86 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
+SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "a9d833fda90e2f1257888a97e092135610b5f259"
+SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f259"
+SRCREV_machine_pn-linux-yocto_routerstationpro ?= "9d24b148fc23a2c8fab0a6add18500453b375d54"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
+SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_meta_pn-linux-yocto ?= "7102097a25c7658e0f4d4dc71844e0ff6c446b25"
-SRCREV_pn-linux-libc-headers-yocto ??= "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
+SRCREV_pn-linux-libc-headers-yocto ??= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "2096"
-- 
1.7.0.4


