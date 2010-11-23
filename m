Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A696A4C811E6
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:17 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2010 02:07:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="860503626"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2010 02:07:09 -0800
Message-Id: <55360d95ea4a7d3a2ce318c9e415ca21b30915e7.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:44 +0800
To: poky@yoctoproject.org
Subject: [PATCH 06/25] libunique:Add license file checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:17 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 meta/recipes-tbd/libunique/libunique_1.1.6.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-tbd/libunique/libunique_1.1.6.bb b/meta/recipes-tbd/libunique/libunique_1.1.6.bb
index 964da57..0c1b9a0 100644
--- a/meta/recipes-tbd/libunique/libunique_1.1.6.bb
+++ b/meta/recipes-tbd/libunique/libunique_1.1.6.bb
@@ -4,7 +4,7 @@ PR = "r1"
 DEPENDS = "glib-2.0 gtk+ dbus"
 
 LICENSE = "LGPLv2.1"
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1"
 #S = "${WORKDIR}/unique-${PV}"
 
 inherit autotools
-- 
1.6.3.3


