Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A59F4C811E1
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536772"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <105230d416e0e9e525d0445c8aadbcfc98d48b4b.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 12:46:11 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/29] documentation/bsp-work/bsp.xml: Added crownbay BSP example to section 1.1.
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
 documentation/bsp-guide/bsp.xml |   24 ++++++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index f7dd12e..d2e293f 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -89,6 +89,30 @@ meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
             </para>
 
             <para>
+                Below is an example of the crownbay BSP:
+
+                <programlisting>
+meta-crownbay/COPYING.MIT
+meta-crownbay/README
+meta-crownbay/binary/.gitignore
+meta-crownbay/conf/layer.conf
+meta-crownbay/conf/machine/crownbay.conf
+meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
+meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xcorg.conf
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
+meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
+meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
+                </programlisting>
+            </para>
+
+            <para>
                 The following sections detail what these files and directories could contain.
             </para>
 
-- 
1.7.0.4


