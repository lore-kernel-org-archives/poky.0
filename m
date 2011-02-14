Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B83C14C80093
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:35:09 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 05:35:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="707565340"
Received: from unknown (HELO localhost) ([10.255.14.192])
	by orsmga001.jf.intel.com with ESMTP; 14 Feb 2011 05:35:08 -0800
Message-Id: <d780f8e0c02f8ae61ae5b23aaefe2e83439afe0f.1297690342.git.sgw@linux.intel.com>
In-Reply-To: <cover.1297690342.git.sgw@linux.intel.com>
References: <cover.1297690342.git.sgw@linux.intel.com>
Old-Date: Mon, 14 Feb 2011 05:30:18 -0800
Date: Mon, 14 Feb 2011  5:35:07 -0800
To: poky@yoctoproject.org
CC: 
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 4/5] libva: add libxfixes to DEPENDS
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
X-List-Received-Date: Mon, 14 Feb 2011 13:35:09 -0000

From: Saul Wold <sgw@linux.intel.com>

Fixes [BUGID #716]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../recipes-graphics/libva/libva_0.31.0.bb         |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb b/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
index a316409..449a44f 100644
--- a/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
+++ b/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Video Acceleration (VA) API for Linux"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=efc13a0998e678466e556756613c582e"
 PR = "r1"
-DEPENDS = "libxext"
+DEPENDS = "libxfixes libxext"
 
 inherit autotools
 
-- 
1.7.1.1


