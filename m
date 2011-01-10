Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BABDA4C811C9;
	Mon, 10 Jan 2011 11:28:38 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0AHSZGV008979;
	Mon, 10 Jan 2011 09:28:37 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 10 Jan 2011 12:30:49 -0500
Message-Id: <6fb8659c9dd7eff2e7b6ef65f9af4d36fc0a0447.1294680187.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/5] routerstation: disable command line overrides
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
X-List-Received-Date: Mon, 10 Jan 2011 17:28:38 -0000

Fixes [BUGID #581]

The initial routerstation pro BSP went out with with command line
overrides enabled. We'd need to be able to set the command line
from Redbot, so we should disable the forcing of the built in
variant.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index c4b00a6..536ee9b 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -93,7 +93,7 @@ SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "35521a5a70316785a67aca1de1d39a7
 SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "b323ab98f055df012277f09d444951619fda24e3"
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366ccff4746197166"
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
-SRCREV_meta_pn-linux-yocto-stable ?= "582a28e4bc966ea367cbc2dc1f0de89dd4e7c3d8"
+SRCREV_meta_pn-linux-yocto-stable ?= "ed446ecd29e8c0f81ab8630a2db652121eeb0b75"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm = "605b1b1e0c68e9f78a7fb33aa219327153a4a890"
 SRCREV_machine_pn-linux-yocto_qemumips = "0f05ab306ac79684a3352f28db91dfb903c67410"
@@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc = "6635864790ac23db856147fcbc4e8ebbfd30a0b
 SRCREV_machine_pn-linux-yocto_routerstationpro = "cc1d802228803e0ebf27f3d3772de3620159d195"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "be26676bf67b0c4b5f36b57fe9e46f8bfd2a67c9"
 SRCREV_machine_pn-linux-yocto_beagleboard = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
-SRCREV_meta_pn-linux-yocto ?= "5955ebea1f0d2fbd67a66ed138ce2b3363adf72a"
+SRCREV_meta_pn-linux-yocto ?= "78e21cf094386a243ed43ae8252042ee0cc814c4"
 SRCREV_pn-linux-libc-headers-yocto ??= "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


