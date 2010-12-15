Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D73B4C811ED
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536777"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <98838adf2b41a3249f28757b5c7b3e9b199dde41.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 14:29:36 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 18/29] documentation/bsp-guide/bsp.xml: Updated Linux Kernel Configuration section.
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:01 -0000

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    9 ++++++---
 1 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 5058777..25bc2a8 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -307,7 +307,10 @@ meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
         </section>
 
         <section id='bsp-filelayout-kernel'>
-            <title>Linux Kernel Configuration (meta-&lt;bsp_name&gt;/recipes-kernel/linux/*)</title>
+            <title>Linux Kernel Configuration</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
+            </programlisting>
 
             <para>
                 These files make up the definition of a kernel to use with this hardware. 
@@ -316,7 +319,7 @@ meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
                 However, kernels can be shared between many machines as well.
                 Following is an example:
                <programlisting>
-meta-Emenlow/recipes-kernel/linux/linux-bsp_2.6.50.bb
+meta-emenlow/recipes-kernel/linux/linux-bsp_2.6.50.bb
                </programlisting>
                 This example file is the core kernel recipe that details from where to get the kernel
                 source.
@@ -340,7 +343,7 @@ linux-bsp-2.6.50/*.patch
             </para>
             <para>
                 <programlisting>
-meta-Emenlow/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
+meta-emenlow/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
                 </programlisting>
             </para>
             <para>
-- 
1.7.0.4


