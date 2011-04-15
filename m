Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 969474C81016
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 09:17:59 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Apr 2011 07:17:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,219,1301900400"; d="scan'208";a="629249174"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by orsmga002.jf.intel.com with ESMTP; 15 Apr 2011 07:17:58 -0700
Message-Id: <02f1e0d9bd5d236becad66096d8e4f29cdd535e4.1302856116.git.lei.mei@intel.com>
In-Reply-To: <cover.1302856115.git.lei.mei@intel.com>
References: <cover.1302856115.git.lei.mei@intel.com>
Old-Date: Tue, 12 Apr 2011 09:31:54 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 2/5] e2fsprogs: Upgrade from 1.41.12 to 1.41.14
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
Date: Fri, 15 Apr 2011 14:17:59 -0000
X-Original-Date: 五, 15  4月 2011 22:22:42 +0800
X-List-Received-Date: Fri, 15 Apr 2011 14:17:59 -0000

From: Mei Lei <lei.mei@intel.com>

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../acinclude.m4                                   |    0
 .../mkdir.patch                                    |    3 +++
 .../quotefix.patch                                 |    4 ++++
 .../{e2fsprogs_1.41.12.bb => e2fsprogs_1.41.14.bb} |    6 +++---
 4 files changed, 10 insertions(+), 3 deletions(-)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs-1.41.12 => e2fsprogs-1.41.14}/acinclude.m4 (100%)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs-1.41.12 => e2fsprogs-1.41.14}/mkdir.patch (91%)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs-1.41.12 => e2fsprogs-1.41.14}/quotefix.patch (93%)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs_1.41.12.bb => e2fsprogs_1.41.14.bb} (91%)

diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/acinclude.m4 b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/acinclude.m4
similarity index 100%
rename from meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/acinclude.m4
rename to meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/acinclude.m4
diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/mkdir.patch b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/mkdir.patch
similarity index 91%
rename from meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/mkdir.patch
rename to meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/mkdir.patch
index b0577e3..e91ffa9 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/mkdir.patch
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/mkdir.patch
@@ -1,3 +1,6 @@
+Upstream-Status: Inappropriate [configuration]
+Signed-off-by: Mei Lei <lei.mei@intel.com>
+
 Index: e2fsprogs-1.41.5/po/Makefile.in.in
 ===================================================================
 --- e2fsprogs-1.41.5.orig/po/Makefile.in.in	2009-02-14 13:49:08.000000000 +0000
diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/quotefix.patch b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/quotefix.patch
similarity index 93%
rename from meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/quotefix.patch
rename to meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/quotefix.patch
index 528e319..f260f03 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.12/quotefix.patch
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.41.14/quotefix.patch
@@ -1,3 +1,7 @@
+Upstream-Status: Inappropriate [configuration]
+Signed-off-by: Mei Lei <lei.mei@intel.com>
+
+
 These macros are underquoted and break with recent autoconf+automake
 combinations.
 
diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.14.bb
similarity index 91%
rename from meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
rename to meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.14.bb
index 1c0f893..d493f6f 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.14.bb
@@ -1,12 +1,12 @@
 require e2fsprogs.inc
 
-PR = "r20"
+PR = "r0"
 
 SRC_URI += "file://quotefix.patch;patch=1 \
             file://acinclude.m4"
 
-SRC_URI[md5sum] = "1b24a21fc0c2381ef420961cbfec733f"
-SRC_URI[sha256sum] = "9c26d0dc20bfdafd0f27f3564791d6121d1c1876549d4f2ff1e41955c9bb9f20"
+SRC_URI[md5sum] = "05f70470aea2ef7efbb0845b2b116720"
+SRC_URI[sha256sum] = "3f8ac1fedd7c4bec480afcbe4acabdd4ac59ec0446a0fd50c8975cd0aad7b176"
 #file://no-hardlinks.patch;patch=1
 
 PARALLEL_MAKE = ""
-- 
1.6.3.3


