Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 183214C80ABD
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 13:47:15 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3RIkemH000102;
	Wed, 27 Apr 2011 11:46:42 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 27 Apr 2011 14:46:48 -0400
Message-Id: <446ef7643bff750683836a1b2d3dacb8e1a3b885.1303929862.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1303929862.git.bruce.ashfield@windriver.com>
References: <cover.1303929862.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1303929862.git.bruce.ashfield@windriver.com>
References: <cover.1303929862.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: create SMP config fragment
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
X-List-Received-Date: Wed, 27 Apr 2011 18:47:15 -0000

Updating the meta SRCREVs to stage a SMP config fragment that
BSPs can use to add the functionality from layers.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 5e7ab66..8bf2b5a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -96,7 +96,7 @@ SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "49745cd45c92a89e70c6e2
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ef7f944e773950d4016b7643f9ecf052bbe250cd"
 SRCREV_machine_pn-linux-yocto-stable ?= "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
+SRCREV_meta_pn-linux-yocto-stable ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm ?= "e5ca41def834db9d18b28393a45d53a8d18f3d05"
 SRCREV_machine_pn-linux-yocto_qemumips ?= "9bbc8e3432406429923fab0de038af5d3e647901"
@@ -109,7 +109,7 @@ SRCREV_machine_pn-linux-yocto_routerstationpro ?= "8db69980d76e1f863af409e701759
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "6861d8a4d58f8aa75997f7678cc454791544507a"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
 SRCREV_machine_pn-linux-yocto ?= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
-SRCREV_meta_pn-linux-yocto ?= "727fc4769aa920fc5bb3eb9a81bf92d0e6340903"
+SRCREV_meta_pn-linux-yocto ?= "ecab1e2bc12a8b0c4d064a00acc3260f6e8528c5"
 SRCREV_pn-linux-libc-headers-yocto ??= "69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


