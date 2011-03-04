Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C24E94C8090F;
	Fri,  4 Mar 2011 15:57:32 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p24LvSN9000308;
	Fri, 4 Mar 2011 13:57:30 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri,  4 Mar 2011 16:59:14 -0500
Message-Id: <7eee92f5d2c43f5c4861605f4dde931f5fedbc7c.1299275720.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1299275720.git.bruce.ashfield@windriver.com>
References: <cover.1299275720.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1299275720.git.bruce.ashfield@windriver.com>
References: <cover.1299275720.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: update machine configurations
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
X-List-Received-Date: Fri, 04 Mar 2011 21:57:33 -0000

Fixes [YOCTO #733, YOCTO #766, YOCTO: #801]

Updating the configuration for the routerstation pro and
mpc8315e-rdb to 2.6.37 variants of the RTC, USB and VFAT
filesystem types.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 2f33630..5045c9e 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -108,8 +108,8 @@ SRCREV_machine_pn-linux-yocto_atom-pc ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3
 SRCREV_machine_pn-linux-yocto_routerstationpro ?= "17dedeb17887eb398743b04615302b61bd95ffdd"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "6117f19403ccd5c288ce553def432925296a28b7"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
-SRCREV_machine_pn-linux-yocto ?= "e2cabadc059ad8d91f7e4a023106620d93abd23a"
-SRCREV_meta_pn-linux-yocto ?= "e2737075b79e4fc682e41051cf1c0bc47a47d502"
+SRCREV_machine_pn-linux-yocto ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
+SRCREV_meta_pn-linux-yocto ?= "212cae404e57ff9dc58c808035770d51325c3512"
 SRCREV_pn-linux-libc-headers-yocto ??= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


