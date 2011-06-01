Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9E7DE4C804C2
	for <poky@yoctoproject.org>; Wed,  1 Jun 2011 11:38:41 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Jun 2011 09:38:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,304,1304319600"; 
   d="scan'208";a="5320231"
Received: from unknown (HELO swold-MOBL.bigsur.com) ([10.255.13.41])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2011 09:38:40 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  1 Jun 2011 09:38:38 -0700
Message-Id: <9f6dd78de07c0e4dca9ce22aa6b3e7ec422b4344.1306946141.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1306946141.git.sgw@linux.intel.com>
References: <cover.1306946141.git.sgw@linux.intel.com>
In-Reply-To: <cover.1306946141.git.sgw@linux.intel.com>
References: <cover.1306946141.git.sgw@linux.intel.com>
Subject: [PATCH 1/1] poky.conf: Make qemu-config optional for non-GPLv3
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
X-List-Received-Date: Wed, 01 Jun 2011 16:38:41 -0000

[YOCTO #1033]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 2a5ffb6..6724229 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -18,7 +18,7 @@ EXTRAOPKGCONFIG = "poky-feed-config-opkg"
 DISTRO_EXTRA_RDEPENDS += "task-core-boot"
 DISTRO_EXTRA_RRECOMMENDS += "kernel-module-af-packet"
 
-POKYQEMUDEPS = "qemu-config"
+POKYQEMUDEPS = "${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qemu-config",d)}"
 DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
 DISTRO_EXTRA_RDEPENDS_append_qemumips = " ${POKYQEMUDEPS}"
 DISTRO_EXTRA_RDEPENDS_append_qemuppc = " ${POKYQEMUDEPS}"
-- 
1.7.3.4


