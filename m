Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 271404C81065;
	Fri, 21 Jan 2011 12:20:46 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0LIKgLp026060;
	Fri, 21 Jan 2011 10:20:44 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 21 Jan 2011 13:23:21 -0500
Message-Id: <ea079f790e7d31f157ceb021bccb8ec02f073523.1295634098.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295634098.git.bruce.ashfield@windriver.com>
References: <cover.1295634098.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295634098.git.bruce.ashfield@windriver.com>
References: <cover.1295634098.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] linux-yocto/stable: update beagleboard SRCREV
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
X-List-Received-Date: Fri, 21 Jan 2011 18:20:46 -0000

Bumping the SRCREV to pickup some missing functionality:

ebbca89 omap: Beagle: no gpio_wp pin connection on xM
671fd89 omap: Beagle: only Cx boards use pin 23 for write protect
dccdf8a omap: Beagle: revision detection

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index c40d860..ed49765 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -92,7 +92,7 @@ SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "35521a5a70316785a67aca1de1d3
 SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
 SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "b323ab98f055df012277f09d444951619fda24e3"
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366ccff4746197166"
-SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
+SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ebbca8936c143b35b820d16cd7907d9a95178211"
 SRCREV_meta_pn-linux-yocto-stable ?= "b0615811ce38836d1ade230e3bdb1efaaa68471f"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f86b5a0cb23faa4134cc004730d673f6640614b"
-- 
1.7.0.4


