Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2FD5D4C8112F
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 19:45:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 17:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,258,1288594800"; d="scan'208";a="681138930"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 17:44:48 -0800
Message-Id: <f4700f56899ce9fca9d7cac7fa6a7ef563063a32.1290735227.git.lei.mei@intel.com>
In-Reply-To: <cover.1290735227.git.lei.mei@intel.com>
References: <cover.1290735227.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 09:28:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 06/20] python-imaging:Add license checksum to bb file
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
X-List-Received-Date: Fri, 26 Nov 2010 01:45:01 -0000

Add README file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../python/python-imaging_1.1.7.bb                 |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/python/python-imaging_1.1.7.bb b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
index 9812043..a711a25 100644
--- a/meta/recipes-devtools/python/python-imaging_1.1.7.bb
+++ b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
@@ -1,7 +1,8 @@
 DESCRIPTION = "Python Imaging Library"
 SECTION = "devel/python"
 PRIORITY = "optional"
-LICENSE = "GPL"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://README;beginline=92;endline=120;md5=c4371af4579f1e489cf881c1443dd4ec"
 DEPENDS = "freetype jpeg tiff"
 RDEPENDS = "python-lang python-stringold"
 SRCNAME = "Imaging"
-- 
1.6.3.3


