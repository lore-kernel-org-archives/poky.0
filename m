Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D29694C811EB;
	Tue, 28 Dec 2010 00:49:26 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBS6lMMV010673;
	Mon, 27 Dec 2010 22:47:24 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 28 Dec 2010 01:49:14 -0500
Message-Id: <311c3023b417bb385dd7436592317ef3fd274d66.1293518497.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1293518497.git.bruce.ashfield@windriver.com>
References: <cover.1293518497.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1293518497.git.bruce.ashfield@windriver.com>
References: <cover.1293518497.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] yocto/meta: update to 2.6.37-rc7
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
X-List-Received-Date: Tue, 28 Dec 2010 06:49:27 -0000

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 8ec854b..36448cc 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -95,16 +95,16 @@ SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d1
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
 SRCREV_meta_pn-linux-yocto-stable ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm = "eeca27d6fb4c7cc8b0ec8e421a51115513740bb9"
-SRCREV_machine_pn-linux-yocto_qemumips = "ed31b5de9b82b9c7e80e93f42822501d0080bcd6"
-SRCREV_machine_pn-linux-yocto_qemuppc = "c01bc9165ab3192368dc2030a98fb75a7f8dc008"
-SRCREV_machine_pn-linux-yocto_qemux86 = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
-SRCREV_machine_pn-linux-yocto_qemux86-64 = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
-SRCREV_machine_pn-linux-yocto_emenlow = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
-SRCREV_machine_pn-linux-yocto_atom-pc = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
-SRCREV_machine_pn-linux-yocto_routerstationpro = "f0d79e2ae0cbb3924c57655b8c7d6a1276c9fc05"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "a0243e84c1cca7fb625ae4bd76274882ccbe4333"
-SRCREV_machine_pn-linux-yocto_beagleboard = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
+SRCREV_machine_pn-linux-yocto_qemuarm = "7bf177ac4ad275e38da20814b9feb5a9dce2e90d"
+SRCREV_machine_pn-linux-yocto_qemumips = "8ed75362664355b89e8063a07b25f79c02711e8b"
+SRCREV_machine_pn-linux-yocto_qemuppc = "3b4193f7d11c257472ad357555645a329c8e2a9e"
+SRCREV_machine_pn-linux-yocto_qemux86 = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
+SRCREV_machine_pn-linux-yocto_qemux86-64 = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
+SRCREV_machine_pn-linux-yocto_emenlow = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
+SRCREV_machine_pn-linux-yocto_atom-pc = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
+SRCREV_machine_pn-linux-yocto_routerstationpro = "145fe6d49a4056adf2d0df6719e63ed860d26547"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "2629db6f8595d227758dc635c9e5c091930c4762"
+SRCREV_machine_pn-linux-yocto_beagleboard = "4cadabcdf0ef14c30bd3f18846d72d0da745c57f"
 SRCREV_meta_pn-linux-yocto ?= "5955ebea1f0d2fbd67a66ed138ce2b3363adf72a"
 SRCREV_pn-linux-libc-headers-yocto ??= "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
-- 
1.7.0.4


