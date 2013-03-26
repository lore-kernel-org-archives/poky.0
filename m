Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81722E0146B
	for <poky@yoctoproject.org>; Tue, 26 Mar 2013 07:53:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2QEr4P1006054
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Mar 2013 07:53:04 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Tue, 26 Mar 2013 07:53:05 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 26 Mar 2013 07:52:57 -0700
Message-ID: <9e691ad6f1b4ee22b4188b57c2a7434f80a038df.1364309339.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1364309339.git.bruce.ashfield@windriver.com>
References: <cover.1364309339.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto/meta-yocto-bsps: update h/w references to v3.4.36
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Mar 2013 14:53:07 -0000
Content-Type: text/plain

Updating the hardware reference boards to the korg 3.4.36 -stable release.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 40ebe15..b763cd8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,11 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "59c2a9eb334c2def405c9d93ed6d8d4e822d1945"
-SRCREV_machine_routerstationpro ?= "85c72b6f0775fb3f4babe266fc00b7e8e5305f01"
-SRCREV_machine_mpc8315e-rdb ?= "dd6f6f7ca0d56fce2942509024647264ff9c9caa"
-SRCREV_machine_beagleboard ?= "59c2a9eb334c2def405c9d93ed6d8d4e822d1945"
-
+SRCREV_machine_atom-pc ?= "c994390cfa28339cbc1ec3b56eeec83a5fa75bb7"
+SRCREV_machine_routerstationpro ?= "a45e1fb8bd549cbec860980f71dd0012449418e4"
+SRCREV_machine_mpc8315e-rdb ?= "3663df787956385df7c6a9c964bb834a6106ac8b"
+SRCREV_machine_beagleboard ?= "c994390cfa28339cbc1ec3b56eeec83a5fa75bb7"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.10.4


