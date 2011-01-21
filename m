Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89DC64C81065;
	Fri, 21 Jan 2011 14:20:33 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0LKKUMH016096;
	Fri, 21 Jan 2011 12:20:31 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 21 Jan 2011 15:23:10 -0500
Message-Id: <51f8b582168fc1e5ab7e788c7e4cc4d5303d71c8.1295641280.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295641280.git.bruce.ashfield@windriver.com>
References: <cover.1295641280.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295641280.git.bruce.ashfield@windriver.com>
References: <cover.1295641280.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/stable: update beagleboard SRCREV
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
X-List-Received-Date: Fri, 21 Jan 2011 20:20:38 -0000

Updating beagleboard SRCREV to pickup:

commit 8e15b884ecf768fd9f898da5acf24938dfe81a83
Author: Koen Kooi <koen@beagleboard.org>
Date:   Tue Jan 11 17:13:35 2011 +0000

    omap3: beaglexm: fix EHCI power up GPIO dir

    commit a5624323866c06156ca548b8515d9347fdd5188e angstrom-linux

    EHCI enable power pin is inverted (active high) in comparison
    to vanilla beagle which is active low. Handle this case conditionally.

    Without this fix, Beagle XM 4 port EHCI will not function and no
    networking will be available

    [nm@ti.com: split up, added descriptive changelogs]
    Signed-off-by: Nishanth Menon <nm@ti.com>
    Signed-off-by: Koen Kooi <koen@beagleboard.org>
    Signed-off-by: Tony Lindgren <tony@atomide.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index c53874e..e73c971 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -92,7 +92,7 @@ SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "35521a5a70316785a67aca1de1d3
 SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
 SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "b323ab98f055df012277f09d444951619fda24e3"
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366ccff4746197166"
-SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ebbca8936c143b35b820d16cd7907d9a95178211"
+SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "8e15b884ecf768fd9f898da5acf24938dfe81a83"
 SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f86b5a0cb23faa4134cc004730d673f6640614b"
-- 
1.7.0.4


