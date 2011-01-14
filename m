Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 034234C81069;
	Thu, 13 Jan 2011 23:48:28 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0E5mFas006084;
	Thu, 13 Jan 2011 21:48:16 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 14 Jan 2011 00:50:38 -0500
Message-Id: <8ea4dac460b64e3e7604c1c77d0ae0fd358f2ff1.1294984024.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294984024.git.bruce.ashfield@windriver.com>
References: <cover.1294984024.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294984024.git.bruce.ashfield@windriver.com>
References: <cover.1294984024.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] linux-yocto: add systemtap config to -stable and -dev kernels
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
X-List-Received-Date: Fri, 14 Jan 2011 05:48:29 -0000

Enable the parameters required for systemtap for all BSPs based
off the standard kernel type.

CONFIG_KPROBES=y
CONFIG_RELAY=y
CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_FS=y
CONFIG_MODULES=y
CONFIG_MODULE_UNLOAD=y

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 6b98091..ad6ee84 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -93,7 +93,7 @@ SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "35521a5a70316785a67aca1de1d39a7
 SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "b323ab98f055df012277f09d444951619fda24e3"
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366ccff4746197166"
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
-SRCREV_meta_pn-linux-yocto-stable ?= "ed446ecd29e8c0f81ab8630a2db652121eeb0b75"
+SRCREV_meta_pn-linux-yocto-stable ?= "48fd1292a8c24bd7b8fbfebb2b160f65a5a959a3"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f86b5a0cb23faa4134cc004730d673f6640614b"
 SRCREV_machine_pn-linux-yocto_qemumips ?= "2b43d84250a582b61397ad5f59a6445ce1258615"
@@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f2
 SRCREV_machine_pn-linux-yocto_routerstationpro ?= "219a5f9dc6e5beced36184e141f80b2df61ae32f"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_meta_pn-linux-yocto ?= "7102097a25c7658e0f4d4dc71844e0ff6c446b25"
+SRCREV_meta_pn-linux-yocto ?= "df8efe2b973106eddb6def472456f36b257c716d"
 SRCREV_pn-linux-libc-headers-yocto ??= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


