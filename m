Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58F054C811EB
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Nov 2010 02:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="352160058"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 23 Nov 2010 02:07:31 -0800
Message-Id: <2dc0c2a5ed99fd1560f97afdd7e84ba6b5bcd184.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:52:41 +0800
To: poky@yoctoproject.org
Subject: [PATCH 17/25] apr-util:Add license checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:33 -0000

Add LICENSE file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/apr/apr-util_1.3.4.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/apr/apr-util_1.3.4.bb b/meta/recipes-support/apr/apr-util_1.3.4.bb
index 2e608e8..44d904c 100644
--- a/meta/recipes-support/apr/apr-util_1.3.4.bb
+++ b/meta/recipes-support/apr/apr-util_1.3.4.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Apache Portable Runtime (APR) companion library"
 SECTION = "libs"
 DEPENDS = "apr expat gdbm"
 LICENSE = "Apache License, Version 2.0"
-
+LIC_FILES_CHKSUM = "file://LICENSE;md5= "
 PR = "r5"
 
 SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.gz \
-- 
1.6.3.3


