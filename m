Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D72B74C80A47
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:55:56 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:55:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231479"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:55:55 -0700
Message-Id: <5ab4cbb2d948c7c16827db3d40ac4704786812c3.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 12:55:32 +0800
Date: Tue, 10 May 2011 17:01:24 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 01/39] hostap: add upstream status for hostap-fw-load.patch
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
X-List-Received-Date: Tue, 10 May 2011 08:55:59 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-bsp/hostap/files/hostap-fw-load.patch |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-bsp/hostap/files/hostap-fw-load.patch b/meta/recipes-bsp/hostap/files/hostap-fw-load.patch
index 88adee2..050bdc1 100644
--- a/meta/recipes-bsp/hostap/files/hostap-fw-load.patch
+++ b/meta/recipes-bsp/hostap/files/hostap-fw-load.patch
@@ -3,6 +3,8 @@
 # Patch managed by http://www.holgerschurig.de/patcher.html
 #
 
+Upstream-Status: Inappropriate [configuration]
+
 --- hostap-utils-0.2.4/hostap_fw_load~hostap-fw-load
 +++ hostap-utils-0.2.4/hostap_fw_load
 @@ -6,9 +6,9 @@
-- 
1.7.1


