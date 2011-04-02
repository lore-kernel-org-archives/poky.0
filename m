Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 716054C800BA;
	Fri,  1 Apr 2011 22:25:38 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p323PUO1012561;
	Fri, 1 Apr 2011 20:25:34 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri,  1 Apr 2011 23:26:40 -0400
Message-Id: <b879c458f578d36936c789444d516ca55ba1e683.1301714584.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1301714584.git.bruce.ashfield@windriver.com>
References: <cover.1301714584.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1301714584.git.bruce.ashfield@windriver.com>
References: <cover.1301714584.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, yocto@yoctoproject.org
Subject: [PATCH 2/2] linux-yocto/meta: cleanup and streamline kernel meta data
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
X-List-Received-Date: Sat, 02 Apr 2011 03:25:38 -0000

Fixes [YOCTO #945]

As part of the update to 2.6.37 existing configuration and
patches from the -stable kernel were left in place as a reminder
of features and configuration carry forward. A lot of these
reminders are no longer necessary and the kernel meta data
needs to be cleaned up to prepare for activities related to
newer kernels.

Also in this meta update are configuration changes to allow
common_pc derived BSPs to have a clean baseline configuration.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index a2b6a98..9a3ae7e 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -109,7 +109,7 @@ SRCREV_machine_pn-linux-yocto_routerstationpro ?= "8db69980d76e1f863af409e701759
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "6861d8a4d58f8aa75997f7678cc454791544507a"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
 SRCREV_machine_pn-linux-yocto ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
-SRCREV_meta_pn-linux-yocto ?= "51c761795b078bf3c80104ed6e73b3d995067384"
+SRCREV_meta_pn-linux-yocto ?= "727fc4769aa920fc5bb3eb9a81bf92d0e6340903"
 SRCREV_pn-linux-libc-headers-yocto ??= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


