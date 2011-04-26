Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17A084C80BEE
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:18 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2011 23:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="738414548"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 23:43:17 -0700
Message-Id: <d9b176564ef6c1d7ffb1a615aff10710067cad0a.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Wed, 20 Apr 2011 15:17:11 +0800
Date: Tue, 26 Apr 2011 14:46:12 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 12/13] cwautomacros: upgrade to version 20110201
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:18 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...macros_20090610.bb => cwautomacros_20110201.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/cwautomacros/{cwautomacros_20090610.bb => cwautomacros_20110201.bb} (74%)

diff --git a/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb b/meta/recipes-extended/cwautomacros/cwautomacros_20110201.bb
similarity index 74%
rename from meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
rename to meta/recipes-extended/cwautomacros/cwautomacros_20110201.bb
index bc588d7..18efced 100644
--- a/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
+++ b/meta/recipes-extended/cwautomacros/cwautomacros_20110201.bb
@@ -8,8 +8,8 @@ SRC_URI = http://download.berlios.de/cwautomacros/cwautomacros-${PV}.tar.bz2
 
 PR = "r0"
 
-SRC_URI[md5sum] = "352b295897ddb30c0d7d0acdd0b2313a"
-SRC_URI[sha256sum] = "8f683713baa63e6b5c2ea72067f77cbacf0bee7d4efa907951c6bb5ac1ffd6b0"
+SRC_URI[md5sum] = "074afcb50d0a8bff10786a2954b2b02d"
+SRC_URI[sha256sum] = "3115603b891f3a163c0bbb5fea2f3742113a183fa6745ee5e89e5f6d0e9f6121"
 
 do_install() {
 	oe_runmake CWAUTOMACROSPREFIX=${D}${prefix} install
-- 
1.7.1


