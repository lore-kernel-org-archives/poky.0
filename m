Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 727DA4C80050
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 16:56:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 14:56:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="641932385"
Received: from unknown (HELO localhost) ([10.255.13.238])
	by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2010 14:56:37 -0800
Message-Id: <e5cc85afdfc1e70dfac07f1e77cfa726b678d8a0.1293749684.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1293749684.git.dvhart@linux.intel.com>
References: <cover.1293749684.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 21 Dec 2010 09:48:26 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] linux-2.6-windriver: atom-pc-preempt_rt meta-data
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
X-List-Received-Date: Thu, 30 Dec 2010 22:56:37 -0000

The following patch adds support for the preempt_rt kernel type
for the atom-pc machine. It should be applied to the wrs_meta
branch.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/atom-pc/atom-pc-preempt_rt.scc             |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
 create mode 100644 wrs/patches/atom_pc-preempt_rt/series
 create mode 100644 wrs/patches/atom_pc-preempt_rt/status

diff --git a/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc b/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
new file mode 100644
index 0000000..3e13665
--- /dev/null
+++ b/wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
@@ -0,0 +1,7 @@
+define WRS_BOARD atom-pc
+define WRS_KERNEL preempt_rt
+define WRS_ARCH i386
+
+scc_leaf ktypes/preempt_rt atom-pc-preempt_rt
+
+include bsp/atom-pc/atom-pc.scc
diff --git a/wrs/patches/atom_pc-preempt_rt/series b/wrs/patches/atom_pc-preempt_rt/series
new file mode 100644
index 0000000..e69de29
diff --git a/wrs/patches/atom_pc-preempt_rt/status b/wrs/patches/atom_pc-preempt_rt/status
new file mode 100644
index 0000000..e69de29
-- 
1.7.1


