Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A65D4C811E2
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2010 02:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="629475019"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2010 02:07:29 -0800
Message-Id: <065efa4c24eea64fd9282e1803fed9ad1933ff78.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:52:27 +0800
To: poky@yoctoproject.org
Subject: [PATCH 16/25] apr:Add license checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:31 -0000

Add LICENSE file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/apr/apr_1.3.3.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/apr/apr_1.3.3.bb b/meta/recipes-support/apr/apr_1.3.3.bb
index a193a18..e7e8ad2 100644
--- a/meta/recipes-support/apr/apr_1.3.3.bb
+++ b/meta/recipes-support/apr/apr_1.3.3.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Apache Portable Runtime (APR) library"
 SECTION = "libs"
 LICENSE = "Apache License, Version 2.0"
-
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b"
 PR = "r5"
 
 SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.bz2 \
-- 
1.6.3.3


