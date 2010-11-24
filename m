Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C54E84C810FE
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 03:02:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="577108234"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 03:02:43 -0800
Message-Id: <5e1c8ff9efa774332da75a9abf0bf95b391db9c1.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 11:16:10 +0800
To: poky@yoctoproject.org
Subject: [PATCH 01/20] libatomics-ops:Add license checksum and update the GPL information
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:53 -0000

Add COPYING file and LICENSING.txt checksum to bb file and the  "GPLv2" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../pulseaudio/libatomics-ops_1.2.bb               |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb b/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
index 207f1b1..0160c3d 100644
--- a/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
+++ b/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
@@ -1,6 +1,8 @@
 DESCRIPTION = "A library for atomic integer operations"
-LICENSE = "MIT"
-
+LICENSE = "GPLv2&MIT"
+LIC_FILES_CHKSUM = "file://doc/COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+		    file://doc/LICENSING.txt;md5=607073e04548eac7d1f763e480477bab \
+		   "
 PR = "r4"
 
 SRC_URI = "http://www.hpl.hp.com/research/linux/atomic_ops/download/libatomic_ops-1.2.tar.gz \
-- 
1.6.3.3


