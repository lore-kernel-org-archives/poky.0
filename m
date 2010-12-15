Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F02A4C811EB
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034108"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <775c2b327195e0ab4773750879f4a9b92737e6a2.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 14:25:34 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 17/29] documentation/bsp-guide/bsp.xml: Added a Display Support Files section.
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
 documentation/bsp-guide/bsp.xml |   24 ++++++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 4a3b441..5058777 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -282,6 +282,30 @@ meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
             </para>
         </section>
 
+        <section id='bsp-filelayout-recipes-graphics'>
+            <title>Display Support Files</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/recipes-graphics/*            
+            </programlisting>
+
+            <para>
+                This directory contains graphics recipes for the BSP.
+                All files that are needed for the BSP to support a display are kept here. 
+                For example, in the crownbay BSP several display support files exist:
+                <programlisting>
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xcorg.conf
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
+                </programlisting>
+            </para>
+        </section>
+
         <section id='bsp-filelayout-kernel'>
             <title>Linux Kernel Configuration (meta-&lt;bsp_name&gt;/recipes-kernel/linux/*)</title>
 
-- 
1.7.0.4


