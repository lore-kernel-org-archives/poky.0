Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 894FB4C8085F;
	Wed, 30 Mar 2011 15:53:15 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2UKqiac007446;
	Wed, 30 Mar 2011 13:52:46 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 30 Mar 2011 16:53:17 -0400
Message-Id: <3596f8420135f2bdbff81390cedf4a8d9a895670.1301518292.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1301518292.git.bruce.ashfield@windriver.com>
References: <cover.1301518292.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1301518292.git.bruce.ashfield@windriver.com>
References: <cover.1301518292.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto/crownbay: update configuration
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
X-List-Received-Date: Wed, 30 Mar 2011 20:53:15 -0000

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
index 98db029..245e0d2 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -108,7 +108,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4c
 SRCREV_machine_pn-linux-yocto_routerstationpro ?= "8db69980d76e1f863af409e70175963f23de83ab"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "6861d8a4d58f8aa75997f7678cc454791544507a"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
-SRCREV_machine_pn-linux-yocto ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
+SRCREV_machine_pn-linux-yocto ?= "51c761795b078bf3c80104ed6e73b3d995067384"
 SRCREV_meta_pn-linux-yocto ?= "16cabf8ce412b5f8599f92a9e11dfd0ee6e0ad12"
 SRCREV_pn-linux-libc-headers-yocto ??= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
-- 
1.7.0.4


