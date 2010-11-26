Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF0964C80815
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:20 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="630481218"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqu-000546-3P; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <e024b0797a7ca76510933e04a2c961677f065bf1.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 17:02:43 +0800
To: poky@yoctoproject.org
Subject: [PATCH 07/15] resolvconf: update license info
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
X-List-Received-Date: Fri, 26 Nov 2010 09:49:20 -0000

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../resolvconf/resolvconf_1.43.bb                  |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
index f29669f..ad754a7 100644
--- a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
+++ b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
@@ -5,7 +5,8 @@ itself up as the intermediary between programs that supply \
 nameserver information and programs that need nameserver \
 information."
 SECTION = "console/network"
-LICENSE = "GPL"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 AUTHOR = "Thomas Hood"
 HOMEPAGE = "http://packages.debian.org/resolvconf"
 DEPENDS = "bash"
-- 
1.7.0


