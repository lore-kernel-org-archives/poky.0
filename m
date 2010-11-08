Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF1BA4C80FA8
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 15:01:25 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L1KMZ027851;
	Mon, 8 Nov 2010 13:01:24 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:01:31 -0500
Message-Id: <e417aa98e4b4170f4b4aaf805cc8ea20f8593604.1289249154.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
References: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <13fdd080d00f7a90c1543d7dc00fb682e67ec6ba.1289249154.git.bruce.ashfield@windriver.com>
References: <13fdd080d00f7a90c1543d7dc00fb682e67ec6ba.1289249154.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 4/4] wrs_meta: add USB options for wacom tablet support
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
X-List-Received-Date: Mon, 08 Nov 2010 21:01:26 -0000

Fixes [BUGID: #394]

    qemumips: Added wacom tablet support to mti_malta32_be bsp config

    Signed-off-by: J. Aaron Gamble <john.gamble@windriver.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 55e14f8..4571995 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -92,7 +92,7 @@ SRCREV_machine_pn-linux-wrs_atom-pc ?= "0431115c9d720fee5bb105f6a7411efb4f851d26
 SRCREV_machine_pn-linux-wrs_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
 SRCREV_machine_pn-linux-wrs_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
 SRCREV_machine_pn-linux-wrs_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_meta_pn-linux-wrs ?= "5adcf6fbcd7491d8d3e1805929f575041d439235"
+SRCREV_meta_pn-linux-wrs ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
 SRCREV_pn-linux-libc-headers-wrs ??= "09a39c638dd65dc27c549c119abe1af2631b2ae0"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


