Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3BEA4C811F8
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2010 02:07:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="680165767"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2010 02:07:25 -0800
Message-Id: <ee15b9a1196591ed79f1592fe965f984cede3f19.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 14/25] minicom: Add license file checksum and update the GPL information to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:27 -0000

Add COPYING checksum to bb file and update the "GPL" to "GPLv2" according to COPYING

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 meta/recipes-extended/minicom/minicom_2.3.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/minicom/minicom_2.3.bb b/meta/recipes-extended/minicom/minicom_2.3.bb
index a114e30..c327e94 100644
--- a/meta/recipes-extended/minicom/minicom_2.3.bb
+++ b/meta/recipes-extended/minicom/minicom_2.3.bb
@@ -1,6 +1,7 @@
 SECTION = "console/network"
 DEPENDS = "ncurses"
-LICENSE = "GPL"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=420477abc567404debca0a2a1cb6b645"
 SRC_URI = "http://alioth.debian.org/frs/download.php/2332/minicom-${PV}.tar.gz \
 	file://rename-conflicting-functions.patch \
 	"
-- 
1.6.3.3


