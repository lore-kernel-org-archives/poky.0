Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A07B4C811EF
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 07:45:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2011 05:45:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="643220815"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2011 05:45:15 -0800
Message-Id: <62dac5d43e811294e4aa7e9631753a9efbfffaf9.1294148490.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1294148490.git.edwin.zhai@intel.com>
References: <cover.1294148490.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Fri, 31 Dec 2010 16:36:14 +0800
Date: Tue, 04 Jan 2011 21:50:22 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 7/7] matchbox-wm-2: Upgrade to svn r2106
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
X-List-Received-Date: Tue, 04 Jan 2011 13:45:16 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 04bb516..fb6b9e7 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -118,7 +118,7 @@ SRCREV_pn-matchbox-terminal ??= "1816"
 SRCREV_pn-matchbox-theme-sato-2 ??= "164"
 SRCREV_pn-matchbox-theme-sato ??= "90"
 SRCREV_pn-matchbox-themes-extra ??= "1524"
-SRCREV_pn-matchbox-wm-2 ??= "2083"
+SRCREV_pn-matchbox-wm-2 ??= "2106"
 SRCREV_pn-matchbox-wm ??= "1819"
 SRCREV_pn-mesa-dri ??= "1bf94d419805538ac23a4d0b04d31ac5e4487aca"
 SRCREV_pn-mesa-xlib ??= "1bf94d419805538ac23a4d0b04d31ac5e4487aca"
-- 
1.7.0.4


