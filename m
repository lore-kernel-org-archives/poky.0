Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 856B94C80889
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 07:29:30 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 05:29:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,193,1299484800"; d="scan'208";a="720755433"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2011 05:29:29 -0700
Message-Id: <cea6b5f80bd71deec58980d59de6310933aea0c7.1300277765.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1300277765.git.edwin.zhai@intel.com>
References: <cover.1300277765.git.edwin.zhai@intel.com>
Old-Date: Wed, 16 Mar 2011 14:53:20 +0800
Date: Wed, 16 Mar 2011 20:32:10 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 2/2] qemu: Use mesa's libGL rather than nVidia's to avoid segfault of qemu
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
X-List-Received-Date: Wed, 16 Mar 2011 12:29:30 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Proprietary nVidia driver introduce its own libGL that precede mesa's.
qemu has segfault if linked with it. This fix try to use mesa's libGL
in such case.

[YOCTO #649]
[YOCTO #698]

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 scripts/poky-qemu |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index 2d94a11..1d04c37 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -404,6 +404,10 @@ if [ "$nv_libgl" == 'yes' ]; then
     echo "************** !!!Warning!!! **************
     You installed nVidia's libGL.so that probably lead qemu segfault!
     Pls. uninstall proprietary nVidia driver or make mesa libgl precede nvidia's."
+
+    # To avoid segfault of qemu, skip nVidia's libGL and use mesa's instead
+    echo "Skip nVidia's libGL!"
+    export LD_PRELOAD="/usr/lib/libGL.so $LD_PRELOAD"
 fi
 
 INTERNAL_SCRIPT=`which poky-qemu-internal`
-- 
1.7.1


