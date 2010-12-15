Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD40E4C8106A
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:23:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034101"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <9dcc022748fe42a77e52e6ee3e39e4253b9f4d3e.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Tue, 14 Dec 2010 17:03:53 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/29] documentation/bsp-guide/bsp.xml: Added information about /binary
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
X-List-Received-Date: Mon, 20 Dec 2010 20:23:59 -0000

Added information in the section about Pre-built User Binaries.
In the first paragraph I stated that this directory would contain
the Application Development Toolkit and minimal live images when the
BSP is "tarred" up and placed on the Yocto Project website.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 9698e93..321965a 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -105,7 +105,9 @@ meta-&lt;bsp_name&gt;/prebuilds/
 
             <para>
                 This optional area contains useful pre-built kernels and userspace filesystem 
-                images appropriate to the target system. 
+                images appropriate to the target system.
+                This directory contains the Application Development Toolkit (ADT) and minimal
+                live images when the BSP is has been "tar-balled" and placed on the Yocto Project website. 
                 You can use these kernels and images to get a system running and quickly get started 
                 on development tasks. 
                 The exact types of binaries present are highly hardware-dependent.
-- 
1.7.0.4


