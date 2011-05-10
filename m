Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8CA34C80A47
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:02 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 01:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="690558005"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2011 01:56:02 -0700
Message-Id: <6f035b862bbc00ed9a4464086e9777eb0e480f61.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:17:25 +0800
Date: Tue, 10 May 2011 17:01:30 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 06/39] gypsy: add upstream status for gypsy's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:02 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/gypsy/files/fixups.patch |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/gypsy/files/fixups.patch b/meta/recipes-connectivity/gypsy/files/fixups.patch
index 8bc8c5c..de4d92e 100644
--- a/meta/recipes-connectivity/gypsy/files/fixups.patch
+++ b/meta/recipes-connectivity/gypsy/files/fixups.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  docs/reference/Makefile.am |    2 ++
  1 file changed, 2 insertions(+)
-- 
1.7.1


