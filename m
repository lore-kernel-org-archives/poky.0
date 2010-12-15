Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DD2E4C811EE
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034109"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <bd8f8a35a4bfd9b96c92afa07e211a981c2ff452.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 14:37:33 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 20/29] documentation/bsp-guide/bsp.xml: Changed numbering scheme.
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

It makes more sense to have the sections that describe the various
parts of the common structure as sub-sections to that.  That pulls
out the click-through licensing into a higher-level section.
This is better overall section organization.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   47 +++++++++++++++++++--------------------
 1 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 37e7fe8..8518bf0 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -115,9 +115,7 @@ meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
                 The following sections describe each part of the proposed BSP format.
             </para>
 
-        </section>
-
-        <section id="bsp-filelayout-license">
+            <section id="bsp-filelayout-license">
             <title>License Files</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
@@ -134,9 +132,9 @@ meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
                 Licensing files can be MIT, BSD, GPLv*, and so forth.
                 These files are recommended for the BSP but are optional and totally up to the BSP developer.
             </para>
-        </section>
+            </section>
 
-        <section id="bsp-filelayout-readme">
+            <section id="bsp-filelayout-readme">
             <title>README File</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/README
@@ -153,9 +151,9 @@ meta-&lt;bsp_name&gt;/README
                 Technically speaking a <filename>README</filename> is optional but it is highly 
                 recommended that every BSP has one.
             </para>
-        </section>
+            </section>
 
-        <section id="bsp-filelayout-binary">
+            <section id="bsp-filelayout-binary">
             <title>Pre-built User Binaries</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
@@ -177,9 +175,9 @@ meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
                 If pre-built binaries are present, source code to meet licensing requirements must also 
                 be provided in some form.
             </para>
-        </section>
+            </section>
 
-        <section id='bsp-filelayout-layer'>
+            <section id='bsp-filelayout-layer'>
             <title>Layer Configuration File</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/conf/layer.conf 
@@ -209,9 +207,9 @@ BBFILE_PRIORITY_bsp = "5"
                 This file simply makes BitBake aware of the recipes and configuration directories.
                 This file must exist so that Poky can recognize the BSP.
             </para>
-        </section>
+            </section>
 
-        <section id="bsp-filelayout-machine">
+            <section id="bsp-filelayout-machine">
             <title>Hardware Configuration Options</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/conf/machine/*.conf
@@ -262,9 +260,9 @@ TARGET_CC_ARCH = "-m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse"
             <para>
                 Both the base package architecuture file and the tune file are optional for a Poky BSP layer.
             </para>
-        </section>
+            </section>
 
-        <section id='bsp-filelayout-misc-recipes'>
+            <section id='bsp-filelayout-misc-recipes'>
             <title>Miscellaneous Recipe Files</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/recipes-bsp/*
@@ -280,9 +278,9 @@ meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
 meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
                 </programlisting>
             </para>
-        </section>
+            </section>
 
-        <section id='bsp-filelayout-recipes-graphics'>
+            <section id='bsp-filelayout-recipes-graphics'>
             <title>Display Support Files</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/recipes-graphics/*            
@@ -304,9 +302,9 @@ meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
                 </programlisting>
             </para>
-        </section>
+            </section>
 
-        <section id='bsp-filelayout-kernel'>
+            <section id='bsp-filelayout-kernel'>
             <title>Linux Kernel Configuration</title>
             <programlisting>
 meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
@@ -353,9 +351,9 @@ meta-emenlow/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
                 Examples of kernel recipes are available in Poky itself, and thus, make these files optional.
                 However, it would be unusual not to have a kernel configuration.
             </para>
-        </section>
+            </section>
 
-<!--        <section id='bsp-filelayout-packages'>
+<!--            <section id='bsp-filelayout-packages'>
             <title>Other Software (meta-&lt;bsp_name&gt;/recipes-kernel/*)</title>
 
             <para>
@@ -400,9 +398,9 @@ meta-Emenlow/recipes-Emenlow/modem/modem-daemon_0.1.bb
 meta-Emenlow/recipes-Emenlow/image-creator/image-creator-native_0.1.bb
                </programlisting>
             </para>
-        </section>
+            </section>
 
-        <section id='bs-filelayout-bbappend'>
+            <section id='bs-filelayout-bbappend'>
             <title>Append BSP-Specific Information to Existing Recipes</title>
             <para>
                 Suppose you have a recipe such as "pointercal" that requires machine-specific information.
@@ -432,9 +430,9 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
             which will be picked up by BitBake. 
             For an example see <filename>meta-emenlow/packages/formfactor</filename>.
             </para>
-        </section>
+            </section>
 
-        <section id="bsp-filelayout-prebuilds">
+            <section id="bsp-filelayout-prebuilds">
             <title>Pre-build Data (meta-&lt;bsp_name&gt;/prebuilds/*)</title>
             <para>
                 This location can contain precompiled representations of the source code 
@@ -442,7 +440,8 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
                 Assuming a compatible configuration is used, Poky can process and use these optional pre-compiled 
                 representations to provide much faster build times.
             </para>
-        </section> -->
+            </section> -->
+        </section>
 
         <section id='bsp-click-through-licensing'>
             <title>BSP 'Click-Through' Licensing Procedure</title>
-- 
1.7.0.4


