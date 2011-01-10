Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C91BF4C810C1;
	Mon, 10 Jan 2011 11:28:39 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0AHSZGW008979;
	Mon, 10 Jan 2011 09:28:38 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 10 Jan 2011 12:30:50 -0500
Message-Id: <e7bf57beea6ba166dd5cc9d570db40426d5d3cc8.1294680187.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 3/5] linux-yocto: update SRCREV to pickup debug/ftrace config changes
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
X-List-Received-Date: Mon, 10 Jan 2011 17:28:40 -0000

Updating to reflect the changes from Darren Hart:

[
    linux-yocto-2.6.37: Add debugfs and ftrace features to standard ktype meta-data

    ftrace provides low impact tracing facilities and should be made
    available on the main kernel - as opposed to a debug or tracing
    kernel which often add enough overhead to mask subtle bugs.

    These features are available on the 2.6.34 yocto kernel.

    Boot and trace-cmd tested on qemux86-64.

    Signed-off-by: Darren Hart <darren@dvhart.com>
    CC: Bruce Ashfield <bruce.ashfield@windriver.com>
    CC: Tom Zanussi <tom.zanussi@intel.com>
]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 536ee9b..fc20ce4 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc = "6635864790ac23db856147fcbc4e8ebbfd30a0b
 SRCREV_machine_pn-linux-yocto_routerstationpro = "cc1d802228803e0ebf27f3d3772de3620159d195"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "be26676bf67b0c4b5f36b57fe9e46f8bfd2a67c9"
 SRCREV_machine_pn-linux-yocto_beagleboard = "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
-SRCREV_meta_pn-linux-yocto ?= "78e21cf094386a243ed43ae8252042ee0cc814c4"
+SRCREV_meta_pn-linux-yocto ?= "653fa2338c46a3f940eadf42e1f95019ef43f64a"
 SRCREV_pn-linux-libc-headers-yocto ??= "6635864790ac23db856147fcbc4e8ebbfd30a0ba"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.0.4


