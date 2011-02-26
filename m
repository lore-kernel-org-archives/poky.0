Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2D5564C80A90;
	Fri, 25 Feb 2011 21:31:10 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1Q3V6J0027895;
	Fri, 25 Feb 2011 19:31:07 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 25 Feb 2011 22:32:20 -0500
Message-Id: <33bfb61a9501397ad7df5bbc12c30d2f92c32dd7.1298690997.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1298690997.git.bruce.ashfield@windriver.com>
References: <cover.1298690997.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1298690997.git.bruce.ashfield@windriver.com>
References: <cover.1298690997.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: add crownbay BSP infrastructure
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
X-List-Received-Date: Sat, 26 Feb 2011 03:31:10 -0000

Updating the meta SRCREV to grab this linux-yocto commit:

    meta: add crownbay BSP infrastructure

    Import the 2.6.34 crownbay infrastructure and update for the
    2.6.37 kernel. This also brings in the feature/drm-emgd that
    the crownbay requires.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 5e9c39f..2f33630 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -108,7 +108,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3
 SRCREV_machine_pn-linux-yocto_routerstationpro ?= "17dedeb17887eb398743b04615302b61bd95ffdd"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "6117f19403ccd5c288ce553def432925296a28b7"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
-SRCREV_machine_pn-linux-yocto ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
+SRCREV_machine_pn-linux-yocto ?= "e2cabadc059ad8d91f7e4a023106620d93abd23a"
 SRCREV_meta_pn-linux-yocto ?= "e2737075b79e4fc682e41051cf1c0bc47a47d502"
 SRCREV_pn-linux-libc-headers-yocto ??= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
-- 
1.7.0.4


