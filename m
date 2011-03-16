Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54E7D4C8009D
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 07:29:29 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 05:29:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,193,1299484800"; d="scan'208";a="720755431"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2011 05:29:28 -0700
Message-Id: <e14949b8c5f3dced8a9fdac73d1423b74e828244.1300277765.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1300277765.git.edwin.zhai@intel.com>
References: <cover.1300277765.git.edwin.zhai@intel.com>
Old-Date: Wed, 16 Mar 2011 14:15:55 +0800
Date: Wed, 16 Mar 2011 20:32:09 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/2] qemu: Give warnings when running qemu if nVidia GL library installed on host
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
X-List-Received-Date: Wed, 16 Mar 2011 12:29:29 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 scripts/poky-qemu |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index c76b3ab..2d94a11 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -394,6 +394,18 @@ if [ "$libgl" != 'yes' ]; then
     exit 1;
 fi
 
+# qemu got segfault if linked with nVidia's libgl
+nv_libgl='no'
+
+test -e /usr/lib/nvidia*/libGL.so && nv_libgl='yes'
+test -e /usr/lib64/nvidia*/libGL.so && nv_libgl='yes'
+
+if [ "$nv_libgl" == 'yes' ]; then
+    echo "************** !!!Warning!!! **************
+    You installed nVidia's libGL.so that probably lead qemu segfault!
+    Pls. uninstall proprietary nVidia driver or make mesa libgl precede nvidia's."
+fi
+
 INTERNAL_SCRIPT=`which poky-qemu-internal`
 
 . $INTERNAL_SCRIPT
-- 
1.7.1


