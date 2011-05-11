Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0203E4C80FFE
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:46 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2011 23:29:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="641093020"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 23:29:46 -0700
Message-Id: <71b268a97a3fb3f77f89204ef9c1c1810387ce64.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:38:51 +0800
Date: Wed, 11 May 2011 14:27:10 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 20/24] powertop: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:47 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../stub_out_the_ncurses_calls_in_dump_mode.patch  |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/powertop/powertop-1.13/stub_out_the_ncurses_calls_in_dump_mode.patch b/meta/recipes-kernel/powertop/powertop-1.13/stub_out_the_ncurses_calls_in_dump_mode.patch
index e837765..ae4cf5d 100644
--- a/meta/recipes-kernel/powertop/powertop-1.13/stub_out_the_ncurses_calls_in_dump_mode.patch
+++ b/meta/recipes-kernel/powertop/powertop-1.13/stub_out_the_ncurses_calls_in_dump_mode.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [this patch is 1.13 specific and 2.0 will be coming.]
+
 Running PowerTop in Poky in dump mode (with --dump) always ends with a
 segmentation fault.
 
-- 
1.7.2


