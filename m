Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 947324C80BEF;
	Mon, 17 Jan 2011 15:41:20 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HLfHVp015248;
	Mon, 17 Jan 2011 13:41:18 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 17 Jan 2011 16:43:49 -0500
Message-Id: <3563fa5679a5b7da45c736ef236d1734fda560a6.1295300463.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295300463.git.bruce.ashfield@windriver.com>
References: <cover.1295300463.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295300463.git.bruce.ashfield@windriver.com>
References: <cover.1295300463.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: enable arch ARM config settings for KARCH based boards
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
X-List-Received-Date: Mon, 17 Jan 2011 21:41:20 -0000

The switch to KARCH meant that the arch arm settings were not
being applied to all boards. This commit adds the new option
along with the existing one to cover all boards.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index d620c76..65defa0 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f2
 SRCREV_machine_pn-linux-yocto_routerstationpro ?= "219a5f9dc6e5beced36184e141f80b2df61ae32f"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_meta_pn-linux-yocto ?= "df8efe2b973106eddb6def472456f36b257c716d"
+SRCREV_meta_pn-linux-yocto ?= "e3895db37bd65ea97e59b70ea936c84b398d3f3e"
 SRCREV_pn-linux-libc-headers-yocto ??= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


