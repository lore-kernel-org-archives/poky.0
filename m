Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78A6CE01374
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 06:23:42 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3ADNcgU007244;
	Tue, 10 Apr 2012 06:23:39 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue, 10 Apr 2012 09:23:32 -0400
Message-Id: <dcba3335671dc92d395a6906ebb0cd02704eac63.1334064083.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334064083.git.bruce.ashfield@windriver.com>
References: <cover.1334064083.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1334064083.git.bruce.ashfield@windriver.com>
References: <cover.1334064083.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
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
X-List-Received-Date: Tue, 10 Apr 2012 13:23:42 -0000

The meta-yocto hardware reference boards missed a SRCREV update when the
base recipe when to v3.0.24. This updates the SRCREVs to ensure that the
kernel that is built and booted matches the version information conveyed
from the base recipe.

Fixes [YOCTO #2265]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 2a9ad7b..9ee43e6 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,10 +4,10 @@ KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
-SRCREV_machine_atom-pc ?= "b42d0d016af36d0bbbb619c424200d4b5bc9ba28"
-SRCREV_machine_routerstationpro ?= "f1bc894b09bd9b048df99e53fd6559c5d84e4871"
-SRCREV_machine_mpc8315e-rdb ?= "7ba6d6853b6e7cf00a742baeba1503c80fc05314"
-SRCREV_machine_beagleboard ?= "fccd4e4041454f16f1e7a25569ec530eaa1bf89e"
+SRCREV_machine_atom-pc ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
+SRCREV_machine_routerstationpro ?= "12b4af6966843baf7bb3aedbae93e69ae19405b1"
+SRCREV_machine_mpc8315e-rdb ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
+SRCREV_machine_beagleboard ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


