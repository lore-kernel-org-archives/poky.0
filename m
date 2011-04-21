Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58E8A4C80050
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 02:55:23 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Apr 2011 00:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,250,1301900400"; d="scan'208";a="736408141"
Received: from unknown (HELO localhost) ([10.255.13.76])
	by orsmga001.jf.intel.com with ESMTP; 21 Apr 2011 00:55:05 -0700
Message-Id: <cb65054e87ac1513aa237f5e15486c29ee6f4e8a.1303372141.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1303372141.git.tom.zanussi@intel.com>
References: <cover.1303372141.git.tom.zanussi@intel.com>
Old-Date: Thu, 21 Apr 2011 02:41:58 -0500
Date: Thu, 21 Apr 2011  2:55:01 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] linux-tools.inc: turn off newt and dwarf for perf
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
X-List-Received-Date: Thu, 21 Apr 2011 07:55:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Turn these off for now to avoid the host infection issues for perf.

Fixes yocto [BUGID #994].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-kernel/linux/linux-tools.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-tools.inc b/meta/recipes-kernel/linux/linux-tools.inc
index 2ac74a5..d64c9be 100644
--- a/meta/recipes-kernel/linux/linux-tools.inc
+++ b/meta/recipes-kernel/linux/linux-tools.inc
@@ -2,11 +2,11 @@
 # perf functionality from their tree.
 
 do_compile_perf() {
-	oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" prefix=${prefix}
+	oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" prefix=${prefix} NO_NEWT=1 NO_DWARF=1
 }
 
 do_install_perf() {
-	oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" prefix=${prefix} DESTDIR=${D} install
+	oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" prefix=${prefix} DESTDIR=${D} install NO_NEWT=1 NO_DWARF=1
 }
 
 
-- 
1.7.0.4


