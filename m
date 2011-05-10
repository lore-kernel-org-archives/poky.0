Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0DD24C8090C
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:55:59 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231490"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:55:59 -0700
Message-Id: <4bbea305763089450774b47e8cadd43751b2b258.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:10:20 +0800
Date: Tue, 10 May 2011 17:01:28 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 04/39] bluez-dtl1-workaround: add upstream status for COPYING.patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:00 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../bluez/bluez-dtl1-workaround/COPYING.patch      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/bluez/bluez-dtl1-workaround/COPYING.patch b/meta/recipes-connectivity/bluez/bluez-dtl1-workaround/COPYING.patch
index 95342e3..576081b 100644
--- a/meta/recipes-connectivity/bluez/bluez-dtl1-workaround/COPYING.patch
+++ b/meta/recipes-connectivity/bluez/bluez-dtl1-workaround/COPYING.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [others]
+
 diff -ruN bluez-dtl1-workaround-1.0-orig/COPYING bluez-dtl1-workaround-1.0/COPYING
 --- bluez-dtl1-workaround-1.0-orig/COPYING	1970-01-01 08:00:00.000000000 +0800
 +++ bluez-dtl1-workaround-1.0/COPYING	2010-12-09 16:50:46.014910500 +0800
-- 
1.7.1


