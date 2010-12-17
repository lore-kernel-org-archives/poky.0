Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D2C1A4C811E6
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034111"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:59 -0800
Message-Id: <4d71691466079246ba74789a2202679d0784f2e0.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 17 Dec 2010 08:30:35 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 24/29] documentation/bsp-guide/bsp.xml: Updated Linux Kernel Configuration section.
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:02 -0000

I have re-written this section extensively based on a phone call with
Tom Z.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   69 ++++++++++++++++++++++----------------
 1 files changed, 40 insertions(+), 29 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 94dd516..cf9c91f 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -319,46 +319,57 @@ meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
             </programlisting>
 
             <para>
-                These files make up the definition of a kernel to use with this hardware. 
-                In this case, it is a complete self-contained kernel with its own
-                configuration and patches.
-                However, kernels can be shared between many machines as well.
-                Following is an example:
-               <programlisting>
-meta-emenlow/recipes-kernel/linux/linux-bsp_2.6.50.bb
-               </programlisting>
-                This example file is the core kernel recipe that details from where to get the kernel
-                source.
-                All standard source code locations are supported.
-                Consequently, the source could be a release tarball, a git repository, or source included in
-                the directory within the BSP itself.
-            </para>
-            <para>
-                The file then contains information about what patches to apply and how to configure and build them.
-                Because the file can reuse the main Poky kernel build class, the definitions here can 
-                remain very simple.   
+                This file appends your specific changes to the kernel you are using.
             </para>
             <para>
-                <programlisting>
-linux-bsp-2.6.50/*.patch
-                </programlisting>
+                For your BSP you typically want to use an existing Poky kernel found in the 
+                Poky repository at <filename class='directory'>meta/recipes-kernel/kernel</filename>.
+                You can append your specific changes to the kernel by using a 
+                <filename>.bbappend</filename> file, which is located in the 
+                <filename class='directory'>meta-&lt;bsp_name&gt;/recipes-kernel/linux</filename>
+                directory.
             </para>
             <para>
-                The above example file contains patches you can apply against the base kernel, from wherever
-                they may have been obtained.
+                Consider a BSP that uses the <filename>linux-yocto-stable_git.bb</filename> kernel.
+                You would use the <filename>linux-yocto-stable_git.bbappend</filename> file to add 
+                specific BSP settings to the kernel, thus configuring the kernel for your particular BSP.
             </para>
             <para>
+                Consider an example for the existing "crownbay" BSP.
+                The <filename>.bbaappend</filename> file used for the "crownbay" BSP is:
+                <programlisting>
+meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
+                </programlisting>
+                The file contains the following:
                 <programlisting>
-meta-emenlow/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+COMPATIBLE_MACHINE_crownbay = "cronwbay"
+KMACHINE_crownbay = "crownbay"
                 </programlisting>
+                This <filename>.bbappend</filename> file adds "crownbay" as a compatible machine,
+                and additionally sets a Yocto Kernel-specific variable that identifies the name of the 
+                BSP branch to use in the GIT repository to find configuration information.
             </para>
-            <para>
-                Finally, this last example file contains kernel configuration information.
+            <note><para>
+                For an established BSP the configuration information is incorporated directly into the 
+                git tree.
+                For a new BSP, however, the <filename>.bbappend</filename> file needs to 
+                include its own set of configuration options in a file called 
+                <filename>defconfig</filename> located in a directory that matches the recipe name.
+                <programlisting>
+SRC_URI += "file://defconfig"
+                </programlisting>
+                Once a BSP is committed, the Yocto kernel maintainer moves this configuration information
+                into the git tree so that the <filename>.bbappend</filename> file does not need to locate
+                its own configuration options.
+                Again, the initial configuration options using the SRC_URI are put into a 
+                directory named 
+                <filename class='directory'>meta-&lt;bsp_name&gt;/recipes/linux/linux-yocto-stable</filename>.
             </para>
             <para>
-                Examples of kernel recipes are available in Poky itself, and thus, make these files optional.
-                However, it would be unusual not to have a kernel configuration.
-            </para>
+                 You can find more information about creating a BSP that is based on an existing similar
+                 BSP by reading the "Yocto Project Kernel Architecture and Use Manual."
+            </para></note>
             </section>
 
 <!--            <section id='bsp-filelayout-packages'>
-- 
1.7.0.4


