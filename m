Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8107B4C80ACE
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:05 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Apr 2011 23:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="425501292"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 25 Apr 2011 23:43:04 -0700
Message-Id: <e91a961116c7367ddde152f7b4103e453c5605a7.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Tue, 19 Apr 2011 15:22:26 +0800
Date: Tue, 26 Apr 2011 14:45:59 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 02/13] valgrind: upgrade to version 3.6.1
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:05 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../fix_issue_caused_by_ccache.patch               |    2 ++
 .../fixed-perl-path.patch                          |    2 ++
 .../{valgrind_3.6.0.bb => valgrind_3.6.1.bb}       |    4 ++--
 3 files changed, 6 insertions(+), 2 deletions(-)
 rename meta/recipes-devtools/valgrind/{valgrind-3.6.0 => valgrind-3.6.1}/fix_issue_caused_by_ccache.patch (94%)
 rename meta/recipes-devtools/valgrind/{valgrind-3.6.0 => valgrind-3.6.1}/fixed-perl-path.patch (97%)
 rename meta/recipes-devtools/valgrind/{valgrind_3.6.0.bb => valgrind_3.6.1.bb} (86%)

diff --git a/meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_issue_caused_by_ccache.patch b/meta/recipes-devtools/valgrind/valgrind-3.6.1/fix_issue_caused_by_ccache.patch
similarity index 94%
rename from meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_issue_caused_by_ccache.patch
rename to meta/recipes-devtools/valgrind/valgrind-3.6.1/fix_issue_caused_by_ccache.patch
index a5c273c..4658567 100644
--- a/meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_issue_caused_by_ccache.patch
+++ b/meta/recipes-devtools/valgrind/valgrind-3.6.1/fix_issue_caused_by_ccache.patch
@@ -3,6 +3,8 @@ The script does not expect use of ccache, hence fix it to recognise it.
 2010/08/17
 Nitin A Kamble <nitin.a.kamble@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 Index: valgrind-3.5.0/coregrind/link_tool_exe_linux.in
 ===================================================================
 --- valgrind-3.5.0.orig/coregrind/link_tool_exe_linux.in
diff --git a/meta/recipes-devtools/valgrind/valgrind-3.6.0/fixed-perl-path.patch b/meta/recipes-devtools/valgrind/valgrind-3.6.1/fixed-perl-path.patch
similarity index 97%
rename from meta/recipes-devtools/valgrind/valgrind-3.6.0/fixed-perl-path.patch
rename to meta/recipes-devtools/valgrind/valgrind-3.6.1/fixed-perl-path.patch
index 2a0440a..b054d05 100644
--- a/meta/recipes-devtools/valgrind/valgrind-3.6.0/fixed-perl-path.patch
+++ b/meta/recipes-devtools/valgrind/valgrind-3.6.1/fixed-perl-path.patch
@@ -9,6 +9,8 @@ a better fix would need:
 
 8/31/2010 - created by Qing He <qing.he@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 diff --git a/cachegrind/cg_annotate.in b/cachegrind/cg_annotate.in
 index 9dc9565..cc4ef05 100644
 --- a/cachegrind/cg_annotate.in
diff --git a/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb b/meta/recipes-devtools/valgrind/valgrind_3.6.1.bb
similarity index 86%
rename from meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
rename to meta/recipes-devtools/valgrind/valgrind_3.6.1.bb
index a33a540..4dbc628 100644
--- a/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
+++ b/meta/recipes-devtools/valgrind/valgrind_3.6.1.bb
@@ -13,8 +13,8 @@ SRC_URI = "http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2 \
 	   file://fix_issue_caused_by_ccache.patch \
            file://fixed-perl-path.patch"
 
-SRC_URI[md5sum] = "b289c5f4ab8e39741602445f1dd09b34"
-SRC_URI[sha256sum] = "bc0f0153b5a47b986f1d8efa2c488e0aea85a1cf2c4b11c52be127903080285f"
+SRC_URI[md5sum] = "2c3aa122498baecc9d69194057ca88f5"
+SRC_URI[sha256sum] = "49bdcc4fbcf060049b5f0dcfd8a187a6e90e0b0e57309f633b64e44430726a0e"
 
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
 
-- 
1.7.1


