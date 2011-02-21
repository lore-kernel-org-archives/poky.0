Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF4B34C80A88
	for <poky@yoctoproject.org>; Sun, 20 Feb 2011 23:51:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Feb 2011 21:51:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,198,1297065600"; d="scan'208";a="711153639"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga001.jf.intel.com with ESMTP; 20 Feb 2011 21:51:21 -0800
Message-Id: <7aba6ab1cdbcf7967e12d5d7dca97857afac4b11.1298324963.git.liping.ke@intel.com>
In-Reply-To: <cover.1298324963.git.liping.ke@intel.com>
References: <cover.1298324963.git.liping.ke@intel.com>
Old-Date: Tue, 22 Feb 2011 05:36:15 +0800
Date: Tue, 22 Feb 2011  5:54:38 +0800
To: poky@yoctoproject.org
From: Liping Ke <liping.ke@intel.com>
Cc: Liping Ke <liping.ke@intel.coom>
Subject: [PATCH 1/1] ADT: Fix check_result script cond comparison bug
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
X-List-Received-Date: Mon, 21 Feb 2011 05:51:23 -0000

From: Liping Ke <liping.ke@intel.com>

When meeting errors, the return number can't be directly compared with
"-1". The correct way is to compare it with 0. If the result is a non-zero
number, we meet error. This patch is for fixing [BUGID #742]

Signed-off-by: Liping Ke <liping.ke@intel.coom>
---
 .../installer/adt-installer/scripts/util           |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/util b/meta/recipes-devtools/installer/adt-installer/scripts/util
index 4b88fee..9be7517 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/util
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/util
@@ -84,14 +84,14 @@ done
 
 check_result()
 {
-  result="$?"
-  if [  "$result" == "-1" ]; then
+  result=$?
+  if [ $result -eq 1 ]; then
+    exit -1
+  elif [  $result -ne 0 ]; then
      echo_info "\n#############################################################################"
      echo_info "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
      echo_info "#############################################################################\n"
     exit -1
-  elif [ "$result" == "1" ]; then
-    exit -1
   fi
 }
 
-- 
1.7.0.4


