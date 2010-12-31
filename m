Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2D9304C810F1;
	Fri, 31 Dec 2010 14:06:36 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBVK43DC024796;
	Fri, 31 Dec 2010 12:04:04 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 31 Dec 2010 15:06:01 -0500
Message-Id: <3c6d05cc01f4a295ac7b882f8860322f2d8d3b3b.1293824283.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1293824283.git.bruce.ashfield@windriver.com>
References: <cover.1293824283.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1293824283.git.bruce.ashfield@windriver.com>
References: <cover.1293824283.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: update to 2.6.37-rc8
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
X-List-Received-Date: Fri, 31 Dec 2010 20:06:36 -0000

Updating the board SRCREVs to 2.6.37-rc8.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   22 ++++++++++----------
 1 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 36448cc..8599448 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -95,18 +95,18 @@ SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d1
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
 SRCREV_meta_pn-linux-yocto-stable ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm = "7bf177ac4ad275e38da20814b9feb5a9dce2e90d"
-SRCREV_machine_pn-linux-yocto_qemumips = "8ed75362664355b89e8063a07b25f79c02711e8b"
-SRCREV_machine_pn-linux-yocto_qemuppc = "3b4193f7d11c257472ad357555645a329c8e2a9e"
-SRCREV_machine_pn-linux-yocto_qemux86 = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
-SRCREV_machine_pn-linux-yocto_qemux86-64 = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
-SRCREV_machine_pn-linux-yocto_emenlow = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
-SRCREV_machine_pn-linux-yocto_atom-pc = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
-SRCREV_machine_pn-linux-yocto_routerstationpro = "145fe6d49a4056adf2d0df6719e63ed860d26547"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "2629db6f8595d227758dc635c9e5c091930c4762"
-SRCREV_machine_pn-linux-yocto_beagleboard = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
+SRCREV_machine_pn-linux-yocto_qemuarm = "605b1b1e0c68e9f78a7fb33aa219327153a4a890"
+SRCREV_machine_pn-linux-yocto_qemumips = "0f05ab306ac79684a3352f28db91dfb903c67410"
+SRCREV_machine_pn-linux-yocto_qemuppc = "d7f2a74cf32e9d6e26e66699d1422096437d3d0e"
+SRCREV_machine_pn-linux-yocto_qemux86 = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
+SRCREV_machine_pn-linux-yocto_qemux86-64 = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
+SRCREV_machine_pn-linux-yocto_emenlow = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
+SRCREV_machine_pn-linux-yocto_atom-pc = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
+SRCREV_machine_pn-linux-yocto_routerstationpro = "cc1d802228803e0ebf27f3d3772de3620159d195"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "be26676bf67b0c4b5f36b57fe9e46f8bfd2a67c9"
+SRCREV_machine_pn-linux-yocto_beagleboard = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
 SRCREV_meta_pn-linux-yocto ?= "5955ebea1f0d2fbd67a66ed138ce2b3363adf72a"
-SRCREV_pn-linux-libc-headers-yocto ??= "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
+SRCREV_pn-linux-libc-headers-yocto ??= "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "2096"
-- 
1.7.0.4


