Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C6DEC4C81060;
	Tue, 25 Jan 2011 09:56:17 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0PFuF8G021859;
	Tue, 25 Jan 2011 07:56:16 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 25 Jan 2011 10:59:01 -0500
Message-Id: <09f6a8a10dc58945034c3d22a6d42e32926fe90a.1295970827.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295970827.git.bruce.ashfield@windriver.com>
References: <cover.1295970827.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295970827.git.bruce.ashfield@windriver.com>
References: <cover.1295970827.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/stable: perf: hard-code NO_LIBPERL/NO_LIBPYTHO
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
X-List-Received-Date: Tue, 25 Jan 2011 15:56:17 -0000

Updating SRCREVs to reflect:

    perf: hard-code NO_LIBPERL/NO_LIBPYTHON

    ExtUtils::Embed ccopts is getting the host's -I/usr/local/include and
    using it to compile perf, which results in a compilation error that
    started appearing just recently.

    This turns the code that makes use of ExtUtils::Embed off and simply
    hard-codes NO_LIBPERL.

    It does the same for LIBPYTHON while we're at it, since it probably
    suffers from a similar underlying problem and just by chance hasn't
    broken anything yet.

    This will be re-enabled after I familiarize myself with the perf
    recipe and am able to create a proper fix.

    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 8d98eef..dbb408a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -84,15 +84,15 @@ SRCREV_pn-linux-omap-zoomsync ??= "015cbaf1035cd9a61d33a27de2a22902555db3c5"
 SRCREV_pn-linux-omap2 ??= "d3b3ae0fe6c71641da19c8de466ec366d39847e3"
 SRCREV_pn-linux-omap3 ??= "de1121fdb899f762b9e717f44eaf3fae7c00cd3e"
 SRCREV_pn-linux-omap3-pm ??= "totallybroken"
-SRCREV_machine_pn-linux-yocto-stable_qemuarm ?= "8cc1674d61d0e0e1bf006164074cffd1071a3a52"
-SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "4f4d1cecd1705dc2b065eb42a9623778bb269930"
-SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "ee9510116f63aabb852708747bd0e3c32eeaf5bf"
-SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
-SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
-SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
-SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "b323ab98f055df012277f09d444951619fda24e3"
-SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366ccff4746197166"
-SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "8e15b884ecf768fd9f898da5acf24938dfe81a83"
+SRCREV_machine_pn-linux-yocto-stable_qemuarm ?= "a2fb081b44d6368eff8d28e2fdb991c61b1f428e"
+SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "c32d40f960e3c89d07f079bec4c96dcbfc749f0b"
+SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "96d6bc31d3caaf62a966255479cc5cee0e76b1e9"
+SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "72ca49ab08b8eb475cec82a10049503602325791"
+SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "72ca49ab08b8eb475cec82a10049503602325791"
+SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "72ca49ab08b8eb475cec82a10049503602325791"
+SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "49745cd45c92a89e70c6e2334caa80818c134562"
+SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
+SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "ef7f944e773950d4016b7643f9ecf052bbe250cd"
 SRCREV_meta_pn-linux-yocto-stable ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f86b5a0cb23faa4134cc004730d673f6640614b"
-- 
1.7.0.4


