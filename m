Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 597EA4C811D6
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="861565291"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga001.fm.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqu-00054m-6X; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <2d7a2bb74a5dc738bc5a89c260510db7d2d1f00b.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 17:37:44 +0800
To: poky@yoctoproject.org
Subject: [PATCH 14/15] ubootchart: update license info
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
X-List-Received-Date: Fri, 26 Nov 2010 09:49:21 -0000

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
index cd292b6..6897f18 100644
--- a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
+++ b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "A boot profiling tool"
 HOMEPAGE = "http://code.google.com/p/ubootchart/"
 LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8f0e2cd40e05189ec81232da84bd6e1a"
 PV = "0.0+r${SRCREV}"
 PR = "r4"
 
-- 
1.7.0


