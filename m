Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83AA64C800B6
	for <poky@yoctoproject.org>; Sat, 14 May 2011 22:36:55 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 May 2011 20:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; d="scan'208";a="747363496"
Received: from unknown (HELO localhost) ([10.255.12.105])
	by orsmga001.jf.intel.com with ESMTP; 14 May 2011 20:36:54 -0700
Message-Id: <83e1ebdff5c3a34a559580ad07b999ad749e608c.1305415455.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305415455.git.tom.zanussi@intel.com>
References: <cover.1305415455.git.tom.zanussi@intel.com>
Old-Date: Sat, 14 May 2011 13:54:08 -0500
Date: Sat, 14 May 2011 22:36:14 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 4/4] crownbay-noemgd: add crownbay-noemgd as COMPATIBLE_MACHINE to linux-yocto bbappend
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
X-List-Received-Date: Sun, 15 May 2011 03:36:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

crownbay-noemgd also needs a COMPATIBLE_MACHINE entry in linux-yocto.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
index 5912fb7..176acd3 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,3 +1,7 @@
 FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "yocto/standard/crownbay"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
-- 
1.7.0.4


