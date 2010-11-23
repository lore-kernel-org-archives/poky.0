Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1E4E4C811D6
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2010 02:07:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="629474926"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2010 02:07:11 -0800
Message-Id: <36a6751ca3f9268441c2fb07bcb73f420f3a1a92.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 07/25] libxpm: Add license file checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:12 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb b/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb
index 75c10bf..2794600 100644
--- a/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb
+++ b/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb
@@ -2,6 +2,7 @@ require xorg-lib-common.inc
 
 DESCRIPTION = "X11 Pixmap library"
 LICENSE = "X-BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=1e8b098093f3bb7a8fed64938e8e465e"
 DEPENDS += "libxext libsm libxt"
 PR = "r3"
 PE = "1"
-- 
1.6.3.3


