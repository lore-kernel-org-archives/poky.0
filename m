Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FB1F4C8106A
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:23:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536769"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <9603b1b781812e5aae44f8d0150577064034d683.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Tue, 14 Dec 2010 16:45:22 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/29] documentation/bsp-guide/bsp.xml: Changed meta naming convention
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

Replaced meta-<bsp_name>/recipes-<bsp_name> with meta-<bsp_name>/recipes-bsp.
This conforms to how the BSP standard will be working.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 3cad0fd..f55d14c 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -82,9 +82,9 @@ meta-&lt;bsp_name&gt;/recipes-kernel/bootloader/bootloader_0.1.bb
 meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp-2.6.50/*.patch
 meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
 meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp_2.6.50.bb
-meta-&lt;bsp_name&gt;/recipes-&lt;bsp_name&gt;/modem/modem-driver_0.1.bb
-meta-&lt;bsp_name&gt;/recipes-&lt;bsp_name&gt;/modem/modem-daemon_0.1.bb
-meta-&lt;bsp_name&gt;/recipes-&lt;bsp_name&gt;/image-creator/image-creator-native_0.1.bb
+meta-&lt;bsp_name&gt;/recipes-bsp/modem/modem-driver_0.1.bb
+meta-&lt;bsp_name&gt;/recipes-bsp/modem/modem-daemon_0.1.bb
+meta-&lt;bsp_name&gt;/recipes-bsp/image-creator/image-creator-native_0.1.bb
 meta-&lt;bsp_name&gt;/prebuilds/
                 </programlisting>
             </para>
-- 
1.7.0.4


