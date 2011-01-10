Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3EA74C811F4;
	Mon, 10 Jan 2011 11:28:40 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0AHSZGX008979;
	Mon, 10 Jan 2011 09:28:39 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 10 Jan 2011 12:30:51 -0500
Message-Id: <38d72bcb177222eba77eb3d7c483d55cbfb7f2e8.1294680187.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 4/5] kern-tools: create generic variables for platform/board/kernel
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
X-List-Received-Date: Mon, 10 Jan 2011 17:28:40 -0000

Update the SRCREV to pickup changes to update the use of
WRS_* to be K* to provide more generic names for the
platform/board/kernel configuration options.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index fc20ce4..65681cc 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "a494ddaf1c9151af8af8050e8427c9958440ec4c"
+SRCREV_pn-kern-tools-native ??= "f553af044615ba75c2b4b7ef1f382e6f75087213"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
@@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc = "6635864790ac23db856147fcbc4e8ebbfd30a0b
 SRCREV_machine_pn-linux-yocto_routerstationpro = "cc1d802228803e0ebf27f3d3772de3620159d195"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "be26676bf67b0c4b5f36b57fe9e46f8bfd2a67c9"
 SRCREV_machine_pn-linux-yocto_beagleboard = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
-SRCREV_meta_pn-linux-yocto ?= "653fa2338c46a3f940eadf42e1f95019ef43f64a"
+SRCREV_meta_pn-linux-yocto ?= "7102097a25c7658e0f4d4dc71844e0ff6c446b25"
 SRCREV_pn-linux-libc-headers-yocto ??= "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


