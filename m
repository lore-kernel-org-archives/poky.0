Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F42E4C8090C
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:55:57 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 01:55:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485326"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:55:56 -0700
Message-Id: <3b2f0a9b565e21cee42933816b1ca0ee315b3980.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 12:57:36 +0800
Date: Tue, 10 May 2011 17:01:25 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 02/39] lrzsz: add upstream status for lrzsz's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:55:57 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../lrzsz/lrzsz-0.12.20/autotools.patch            |    2 ++
 meta/recipes-bsp/lrzsz/lrzsz-0.12.20/gettext.patch |    2 ++
 .../recipes-bsp/lrzsz/lrzsz-0.12.20/makefile.patch |    2 ++
 3 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/autotools.patch b/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/autotools.patch
index 73f5a06..3945198 100644
--- a/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/autotools.patch
+++ b/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/autotools.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 --- lrzsz-0.12.20/acinclude.m4~autotools	1998-12-27 17:08:59.000000000 -0500
 +++ lrzsz-0.12.20/acinclude.m4	2004-05-09 22:26:19.000000000 -0400
 @@ -1,12 +1,11 @@
diff --git a/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/gettext.patch b/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/gettext.patch
index 241ffd9..1a24a1f 100644
--- a/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/gettext.patch
+++ b/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/gettext.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 --- lrzsz-0.12.20.safe/ABOUT-NLS	1998-04-26 09:22:30.000000000 -0400
 +++ lrzsz-0.12.20/ABOUT-NLS	2004-09-12 14:40:34.323752952 -0400
 @@ -1,14 +1,14 @@
diff --git a/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/makefile.patch b/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/makefile.patch
index c553c8b..ace592c 100644
--- a/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/makefile.patch
+++ b/meta/recipes-bsp/lrzsz/lrzsz-0.12.20/makefile.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 diff -ruN lrzsz-0.12.20_org/src/Makefile.in lrzsz-0.12.20_patch/src/Makefile.in
 --- lrzsz-0.12.20_org/src/Makefile.in	1998-12-30 17:31:46.000000000 +0100
 +++ lrzsz-0.12.20_patch/src/Makefile.in	2004-04-29 13:57:33.434909656 +0200
-- 
1.7.1


