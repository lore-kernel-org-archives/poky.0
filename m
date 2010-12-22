Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFE6B4C8110E;
	Wed, 22 Dec 2010 00:25:15 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBM6OALR016700;
	Tue, 21 Dec 2010 22:24:13 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 22 Dec 2010 01:25:49 -0500
Message-Id: <679597bf9e3cf3943bc26cd3dfd478300242ae13.1292998230.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292998230.git.bruce.ashfield@windriver.com>
References: <cover.1292998230.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292998230.git.bruce.ashfield@windriver.com>
References: <cover.1292998230.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 3/3] linux-yocto: update to 2.6.37-rc6
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
X-List-Received-Date: Wed, 22 Dec 2010 06:25:15 -0000

Fixes [BUGID #596]

Updating the SRCREVs of the target branches in the linux-yocto
development kernel to point to 2.6.37-rc6 content.

At this point branches have been switched from _ to - and we
are able to remove the old branch names.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   26 ++++++++++----------
 1 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index beffe9a..9605336 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "796d7fef92b2eed449c17c14441587ff0c465368"
+SRCREV_pn-kern-tools-native ??= "72683bf61fdb83a1c0b4110763f803ff3e39f8ca"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
@@ -96,18 +96,18 @@ SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d1
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
 SRCREV_meta_pn-linux-yocto-stable ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
 # development SRCREVs
-SRCREV_machine_pn-linux-yocto_qemuarm = "87e00a2d47ba80b4ad1f9170cb3f6cf81f21d739"
-SRCREV_machine_pn-linux-yocto_qemumips = "7231e473dd981a28e3cea9f677ed60583e731550"
-SRCREV_machine_pn-linux-yocto_qemuppc = "e2b529d7d74a9b21e1d1715f0c4062a4fd92a3ed"
-SRCREV_machine_pn-linux-yocto_qemux86 = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
-SRCREV_machine_pn-linux-yocto_qemux86-64 = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
-SRCREV_machine_pn-linux-yocto_emenlow = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
-SRCREV_machine_pn-linux-yocto_atom-pc = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
-SRCREV_machine_pn-linux-yocto_routerstationpro = "773d3a1c8eba563ffcdbf61057ef6e39cee0c88b"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "5ff609967ffe87c49d534d7861a7e0b150517726"
-SRCREV_machine_pn-linux-yocto_beagleboard = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
-SRCREV_meta_pn-linux-yocto ?= "ee0a10ab687b29c4d22d47e5b28bc8b3ebb7a8d9"
-SRCREV_pn-linux-libc-headers-yocto ??= "09a39c638dd65dc27c549c119abe1af2631b2ae0"
+SRCREV_machine_pn-linux-yocto_qemuarm = "eeca27d6fb4c7cc8b0ec8e421a51115513740bb9"
+SRCREV_machine_pn-linux-yocto_qemumips = "ed31b5de9b82b9c7e80e93f42822501d0080bcd6"
+SRCREV_machine_pn-linux-yocto_qemuppc = "c01bc9165ab3192368dc2030a98fb75a7f8dc008"
+SRCREV_machine_pn-linux-yocto_qemux86 = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
+SRCREV_machine_pn-linux-yocto_qemux86-64 = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
+SRCREV_machine_pn-linux-yocto_emenlow = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
+SRCREV_machine_pn-linux-yocto_atom-pc = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
+SRCREV_machine_pn-linux-yocto_routerstationpro = "f0d79e2ae0cbb3924c57655b8c7d6a1276c9fc05"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "a0243e84c1cca7fb625ae4bd76274882ccbe4333"
+SRCREV_machine_pn-linux-yocto_beagleboard = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
+SRCREV_meta_pn-linux-yocto ?= "7ca94548e68a72e57715d65d6d8f723582aafa59"
+SRCREV_pn-linux-libc-headers-yocto ??= "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "2096"
-- 
1.7.0.4


