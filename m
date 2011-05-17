Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4D234C80AE6
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:14 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 May 2011 01:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; 
   d="scan'208";a="2671541"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 01:42:13 -0700
Message-Id: <d13d5f8e6c8f8687508213f7a4ba3fc9d2d5818f.1305622072.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:25:28 +0800
Date: Tue, 17 May 2011 16:48:58 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 5/8] glibc: add upstream status for glibc's patch
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
X-List-Received-Date: Tue, 17 May 2011 08:42:14 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../glibc-2.9-enable-binutils-2.2.patch            |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/glibc/glibc-2.10.1/glibc-2.9-enable-binutils-2.2.patch b/meta/recipes-core/glibc/glibc-2.10.1/glibc-2.9-enable-binutils-2.2.patch
index 09200dd..4ac6d8b 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/glibc-2.9-enable-binutils-2.2.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/glibc-2.9-enable-binutils-2.2.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- glibc-2.9.orig/configure.in	2009-10-22 15:38:13.000000000 +0200
 +++ glibc-2.9/configure.in	2009-10-22 15:37:33.000000000 +0200
 @@ -844,10 +844,10 @@
-- 
1.7.1


