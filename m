Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E69A4C80ACB
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:45 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 01:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231660"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:44 -0700
Message-Id: <cbccebb94c6e6131972988326ae1be39f3455b22.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 16:51:47 +0800
Date: Tue, 10 May 2011 17:02:13 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 39/39] xournal: add upstream status for xournal's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:45 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../recipes-graphics/xournal/files/ldflags.patch   |    2 ++
 .../xournal/files/no-printing.diff                 |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-graphics/xournal/files/ldflags.patch b/meta-demoapps/recipes-graphics/xournal/files/ldflags.patch
index 7f6585b..ec75e71 100644
--- a/meta-demoapps/recipes-graphics/xournal/files/ldflags.patch
+++ b/meta-demoapps/recipes-graphics/xournal/files/ldflags.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  src/Makefile.am |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
diff --git a/meta-demoapps/recipes-graphics/xournal/files/no-printing.diff b/meta-demoapps/recipes-graphics/xournal/files/no-printing.diff
index 7a4724e..9fac498 100644
--- a/meta-demoapps/recipes-graphics/xournal/files/no-printing.diff
+++ b/meta-demoapps/recipes-graphics/xournal/files/no-printing.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 diff -ru xournal-0.2/configure.in xournal-0.2.noprint/configure.in
 --- xournal-0.2/configure.in	2006-01-29 22:25:10.000000000 +0000
 +++ xournal-0.2.noprint/configure.in	2006-03-17 13:08:01.000000000 +0000
-- 
1.7.1


