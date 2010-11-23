Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7CF204C811EF
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:24 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Nov 2010 02:07:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="352159966"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 23 Nov 2010 02:07:03 -0800
Message-Id: <63b231e18edf1d95f4b2b74c098ee088e157def9.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 13:52:11 +0800
To: poky@yoctoproject.org
Subject: [PATCH 03/25] gnome-doc-utils:Add LGPL file and GPL file checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:24 -0000

Add COPYING.GPL and COPYING.LGPL checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb b/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb
index 2499ac3..09121db 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb
@@ -1,3 +1,4 @@
 require gnome-doc-utils.inc
-
+LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=eb723b61539feef013de476e68b5c50a \
+		    file://COPYING.LGPL;md5=a6f89e2100d9b6cdffcea4f398e37343 "
 PR = "r1"
-- 
1.6.3.3


