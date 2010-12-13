Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F28E64C811FC;
	Mon, 13 Dec 2010 13:54:54 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJsp5J006336;
	Mon, 13 Dec 2010 11:54:52 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 14:56:14 -0500
Message-Id: <114fd8fbfc6cb7c99e5fd9bc806bcd1c44022930.1292270065.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292270065.git.bruce.ashfield@windriver.com>
References: <cover.1292270065.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292270065.git.bruce.ashfield@windriver.com>
References: <cover.1292270065.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto/stable: add blktrace configuration to standard branch
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
X-List-Received-Date: Mon, 13 Dec 2010 19:54:55 -0000

Enable the kernel configuration values required for blktrace
by default. Individual boards can opt out as required.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index be635e5..60f2f06 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -94,7 +94,7 @@ SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "0431115c9d720fee5bb105f6a7411ef
 SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_meta_pn-linux-yocto-stable ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
+SRCREV_meta_pn-linux-yocto-stable ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm = "87e00a2d47ba80b4ad1f9170cb3f6cf81f21d739"
 SRCREV_machine_pn-linux-yocto_qemumips = "7231e473dd981a28e3cea9f677ed60583e731550"
-- 
1.7.0.4


