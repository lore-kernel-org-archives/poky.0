Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0820F4C811DF
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:23:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034103"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <7463c40b3175413ea8ec9922668388aede38e1d3.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 12:31:06 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/29] documentation/bsp-guide/bsp.xml: Updated common form for file structure.
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:00 -0000

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   20 ++++++++------------
 1 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 874ef6d..f7dd12e 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -76,19 +76,15 @@
 
                 <programlisting>
 meta-&lt;bsp_name&gt;/                                
-meta-&lt;bsp_name&gt;/binary/zImage
-meta-&lt;bsp_name&gt;/binary/poky-image-minimal.directdisk
+meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
+meta-&lt;bsp_name&gt;/README
+meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
 meta-&lt;bsp_name&gt;/conf/layer.conf 
-meta-&lt;bsp_name&gt;/conf/machine/*.conf             
-meta-&lt;bsp_name&gt;/conf/machine/include/tune-*.inc
-meta-&lt;bsp_name&gt;/recipes-kernel/bootloader/bootloader_0.1.bb
-meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp-2.6.50/*.patch
-meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
-meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp_2.6.50.bb
-meta-&lt;bsp_name&gt;/recipes-bsp/modem/modem-driver_0.1.bb
-meta-&lt;bsp_name&gt;/recipes-bsp/modem/modem-daemon_0.1.bb
-meta-&lt;bsp_name&gt;/recipes-bsp/image-creator/image-creator-native_0.1.bb
-meta-&lt;bsp_name&gt;/prebuilds/
+meta-&lt;bsp_name&gt;/conf/machine/*.conf
+meta-&lt;bsp_name&gt;/recipes-bsp/*
+meta-&lt;bsp_name&gt;/recipes-bsp/formfactor/formfactor/&lt;bsp_name&gt;/*
+meta-&lt;bsp_name&gt;/recipes-graphics/*            
+meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
                 </programlisting>
             </para>
 
-- 
1.7.0.4


