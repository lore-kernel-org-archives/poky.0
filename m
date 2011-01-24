Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D812B4C811A5;
	Mon, 24 Jan 2011 15:44:12 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0OLi33u016947;
	Mon, 24 Jan 2011 13:44:05 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 24 Jan 2011 16:46:50 -0500
Message-Id: <45dd3b21889b37e8d1360ddf74feee96b72a0219.1295905272.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295905272.git.bruce.ashfield@windriver.com>
References: <cover.1295905272.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295905272.git.bruce.ashfield@windriver.com>
References: <cover.1295905272.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] linux-yocto: update SRCREVs for emenlow
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
X-List-Received-Date: Mon, 24 Jan 2011 21:44:13 -0000

The emenlow has been ported/tested on 2.6.37. Updating the SRCREVs
to reflect the change.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index b9602ea..8d98eef 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -100,12 +100,12 @@ SRCREV_machine_pn-linux-yocto_qemumips ?= "2b43d84250a582b61397ad5f59a6445ce1258
 SRCREV_machine_pn-linux-yocto_qemuppc ?= "20f182db27f3e6fc6bd55bfc9e24c8c023fbff7f"
 SRCREV_machine_pn-linux-yocto_qemux86 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_machine_pn-linux-yocto_emenlow ?= "a9d833fda90e2f1257888a97e092135610b5f259"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "c19e556f79f03c8f1e5e84ccd9b5436c2001fcce"
 SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_machine_pn-linux-yocto_routerstationpro ?= "219a5f9dc6e5beced36184e141f80b2df61ae32f"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_meta_pn-linux-yocto ?= "e3895db37bd65ea97e59b70ea936c84b398d3f3e"
+SRCREV_meta_pn-linux-yocto ?= "8a49ef6f1a43dabbce34a9ee9a1be08b26fc511c"
 SRCREV_pn-linux-libc-headers-yocto ??= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


