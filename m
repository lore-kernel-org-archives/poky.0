Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92DED4C80AB7
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:34 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:56:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231608"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:33 -0700
Message-Id: <109f8321369c4f6f07a38f538f05d5d44f32e28f.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 16:45:33 +0800
Date: Tue, 10 May 2011 17:02:02 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 31/39] taglib: add upstream status for taglib's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:34 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../taglib/taglib-1.6.3/configuretweak.patch       |    2 ++
 .../taglib/taglib-1.6.3/nolibtool.patch            |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch b/meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch
index 07eb6d7..8b81fc7 100644
--- a/meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch
+++ b/meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch
@@ -5,6 +5,8 @@ Fix macros accordingly fixing build failures
 
 RP 2/2/10
 
+Upstream-Status: Inappropriate [configuration]
+
 Index: taglib-1.6.1/acinclude.m4
 ===================================================================
 --- taglib-1.6.1.orig/acinclude.m4	2010-02-01 23:57:16.857788731 +0000
diff --git a/meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch b/meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch
index b072cbc..18237f2 100644
--- a/meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch
+++ b/meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: taglib-1.6.1/acinclude.m4
 ===================================================================
 --- taglib-1.6.1.orig/acinclude.m4	2009-10-31 10:04:35.000000000 +0000
-- 
1.7.1


