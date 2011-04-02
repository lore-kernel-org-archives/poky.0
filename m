Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BC1F4C80050;
	Fri,  1 Apr 2011 22:25:37 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p323PUO0012561;
	Fri, 1 Apr 2011 20:25:32 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri,  1 Apr 2011 23:26:39 -0400
Message-Id: <5d754d7ac2efe9fb735a28807acab17668554bca.1301714584.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1301714584.git.bruce.ashfield@windriver.com>
References: <cover.1301714584.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1301714584.git.bruce.ashfield@windriver.com>
References: <cover.1301714584.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, yocto@yoctoproject.org
Subject: [PATCH 1/2] linux-yocto/crownbay: update configuration
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
X-List-Received-Date: Sat, 02 Apr 2011 03:25:37 -0000

The crownbay has been updated for 2.6.37, the BSP branch
already contans the changes, and this is the update of meta
to the new config values:

  crownbay: update eg20t config
  crownbay: set cpu type to MATOM

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 98db029..a2b6a98 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -109,7 +109,7 @@ SRCREV_machine_pn-linux-yocto_routerstationpro ?= "8db69980d76e1f863af409e701759
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "6861d8a4d58f8aa75997f7678cc454791544507a"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
 SRCREV_machine_pn-linux-yocto ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
-SRCREV_meta_pn-linux-yocto ?= "16cabf8ce412b5f8599f92a9e11dfd0ee6e0ad12"
+SRCREV_meta_pn-linux-yocto ?= "51c761795b078bf3c80104ed6e73b3d995067384"
 SRCREV_pn-linux-libc-headers-yocto ??= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


