Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 721544C811F5
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 18:28:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2010 16:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,339,1288594800"; d="scan'208";a="583405524"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 16:28:13 -0800
Message-Id: <39d22312d6b36cd85e172a4caa695680be1ded02.1292286117.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292286117.git.scott.m.rifenbark@intel.com>
References: <cover.1292286117.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Mon, 13 Dec 2010 16:21:12 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] documentation/bsp-guide/bsp.xml: General edits.
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
X-List-Received-Date: Tue, 14 Dec 2010 00:28:14 -0000

1. Edited to incorporate new file system naming structure per Saul Wold.  This
   is the version I am sending him and Tom Z. to review.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>

Conflicts:

	documentation/bsp-guide/bsp.xml

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |  185 +++++++++++++++++++--------------------
 1 files changed, 91 insertions(+), 94 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index ecf6431..3cad0fd 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -55,27 +55,37 @@
             <title>Example Filesystem Layout</title>
 
             <para>
-                The BSP consists of a file structure inside a base directory, meta-bsp in this example, 
-                where "bsp" is a placeholder for the machine or platform name. 
-                Examples of some files that it could contain are:
-            </para>
-
-            <para>
+                The BSP consists of a file structure inside a base directory, which uses the following 
+                naming convention:
+                <literallayout class='monospaced'>
+     meta-&lt;bsp_name&gt;
+                </literallayout>
+                "bsp_name" is a placeholder for the machine or platform name.
+                Here are some example base directory names:
+                <literallayout class='monospaced'>
+     meta-Emenlow
+     meta-intel_n450
+     meta-oaktrail
+                </literallayout>
+            </para>
+
+            <para>
+                The file structure inside the base directory takes on the following form:
                 <programlisting>
-meta-bsp/                                
-meta-bsp/binary/zImage
-meta-bsp/binary/poky-image-minimal.directdisk
-meta-bsp/conf/layer.conf 
-meta-bsp/conf/machine/*.conf             
-meta-bsp/conf/machine/include/tune-*.inc
-meta-bsp/packages/bootloader/bootloader_0.1.bb
-meta-bsp/packages/linux/linux-bsp-2.6.50/*.patch
-meta-bsp/packages/linux/linux-bsp-2.6.50/defconfig-bsp
-meta-bsp/packages/linux/linux-bsp_2.6.50.bb
-meta-bsp/packages/modem/modem-driver_0.1.bb
-meta-bsp/packages/modem/modem-daemon_0.1.bb
-meta-bsp/packages/image-creator/image-creator-native_0.1.bb
-meta-bsp/prebuilds/
+meta-&lt;bsp_name&gt;/                                
+meta-&lt;bsp_name&gt;/binary/zImage
+meta-&lt;bsp_name&gt;/binary/poky-image-minimal.directdisk
+meta-&lt;bsp_name&gt;/conf/layer.conf 
+meta-&lt;bsp_name&gt;/conf/machine/*.conf             
+meta-&lt;bsp_name&gt;/conf/machine/include/tune-*.inc
+meta-&lt;bsp_name&gt;/recipes-kernel/bootloader/bootloader_0.1.bb
+meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp-2.6.50/*.patch
+meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
+meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-bsp_2.6.50.bb
+meta-&lt;bsp_name&gt;/recipes-&lt;bsp_name&gt;/modem/modem-driver_0.1.bb
+meta-&lt;bsp_name&gt;/recipes-&lt;bsp_name&gt;/modem/modem-daemon_0.1.bb
+meta-&lt;bsp_name&gt;/recipes-&lt;bsp_name&gt;/image-creator/image-creator-native_0.1.bb
+meta-&lt;bsp_name&gt;/prebuilds/
                 </programlisting>
             </para>
 
@@ -86,32 +96,29 @@ meta-bsp/prebuilds/
         </section>
 
         <section id="bsp-filelayout-binary">
-            <title>Prebuilt User Binaries (meta-bsp/binary/*)</title>
+            <title>Pre-built User Binaries (meta-&lt;bsp_name&gt;/binary/*)</title>
 
             <para>
-                This optional area contains useful prebuilt kernels and userspace filesystem 
+                This optional area contains useful pre-built kernels and userspace filesystem 
                 images appropriate to the target system. 
-                Users could use these to get a system 
-                running and quickly get started on development tasks. 
-                The exact types of binaries
-                present are highly hardware-dependent.
-                However, a README file should be present 
-                that explains how to use them with the target hardware. 
-                If prebuilt binaries are 
-                present, source code to meet licensing requirements must also be provided in 
-                some form.
-            </para>
-       
+                You can use these kernels and images to get a system running and quickly get started 
+                on development tasks. 
+                The exact types of binaries present are highly hardware-dependent.
+                However, a README file should be present that explains how to use the kernels and 
+                images with the target hardware. 
+                If pre-built binaries are present, source code to meet licensing requirements must also 
+                be provided in some form.
+            </para>
         </section>
 
         <section id='bsp-filelayout-layer'>
-            <title>Layer Configuration (meta-bsp/conf/layer.conf)</title>
+            <title>Layer Configuration (meta-&lt;bsp_name&gt;/conf/layer.conf)</title>
 
             <para>
                 This file identifies the structure as a Poky layer, identifies the  
-                contents of the layer and contains information about how Poky should use 
+                contents of the layer, and contains information about how Poky should use 
                 it. 
-                Generally, a standard boilerplate file consisting of the following works.
+                Generally, a standard boilerplate file such as the following works:
             </para>
 
             <para>
@@ -129,26 +136,25 @@ BBFILE_PRIORITY_bsp = "5"
             </para>
 
             <para>
-                This file simply makes bitbake aware of the recipes and conf directories and is required 
-                for recognition of the BSP by Poky.
+                This file simply makes BitBake aware of the recipes and configuration directories.
+                This file must exist so that Poky can recognize the BSP.
             </para>
-
         </section>
 
         <section id="bsp-filelayout-machine">
-            <title>Hardware Configuration Options (meta-bsp/conf/machine/*.conf)</title>
+            <title>Hardware Configuration Options (meta-&lt;bsp_name&gt;/conf/machine/*.conf)</title>
 
             <para>
                 The machine files bind together all the information contained elsewhere
-                in the BSP into a format that Poky/OpenEmbedded can understand. 
+                in the BSP into a format that Poky can understand. 
                 If the BSP supports multiple machines, multiple machine configuration files
                 can be present. 
                 These filenames correspond to the values to which users have set the MACHINE variable.
             </para>
 
             <para>
-                These files define things such as what kernel package to use
-                (PREFERRED_PROVIDER of virtual/kernel), what hardware drivers to
+                These files define things such as the kernel package to use
+                (PREFERRED_PROVIDER of virtual/kernel), the hardware drivers to
                 include in different types of images, any special software components
                 that are needed, any bootloader information, and also any special image
                 format requirements.
@@ -158,22 +164,21 @@ BBFILE_PRIORITY_bsp = "5"
                 At least one machine file is required for a Poky BSP layer.
                 However, you can supply more than one file.
             </para>
-
         </section>
 
         <section id="bsp-filelayout-tune">
-            <title>Hardware Optimization Options (meta-bsp/conf/machine/include/tune-*.inc)</title>
+            <title>Hardware Optimization Options (meta-&lt;bsp_name&gt;/conf/machine/include/tune-*.inc)</title>
 
             <para>
-                These are shared hardware "tuning" definitions and are commonly used to
+                These files are shared hardware "tuning" definitions and are commonly used to
                 pass specific optimization flags to the compiler. 
-                An example is tune-atom.inc:
+                An example is <filename>tune-atom.inc</filename>:
             </para>
             <para>
-               <programlisting>
+                <programlisting>
 BASE_PACKAGE_ARCH = "core2"
 TARGET_CC_ARCH = "-m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse"
-               </programlisting>
+                </programlisting>
             </para>
             <para>
                 This example defines a new package architecture called "core2" and uses the
@@ -191,59 +196,58 @@ TARGET_CC_ARCH = "-m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse"
         </section>
 
         <section id='bsp-filelayout-kernel'>
-            <title>Linux Kernel Configuration (meta-bsp/packages/linux/*)</title>
+            <title>Linux Kernel Configuration (meta-&lt;bsp_name&gt;/recipes-kernel/linux/*)</title>
 
             <para>
-                These files make up the definition of a kernel to use with this
-                hardware. 
+                These files make up the definition of a kernel to use with this hardware. 
                 In this case, it is a complete self-contained kernel with its own
                 configuration and patches.
                 However, kernels can be shared between many machines as well.
                 Following is an example:
                <programlisting>
-meta-bsp/packages/linux/linux-bsp_2.6.50.bb
+meta-Emenlow/recipes-kernel/linux/linux-bsp_2.6.50.bb
                </programlisting>
                 This example file is the core kernel recipe that details from where to get the kernel
                 source.
-                All standard source code locations are supported so this could 
-                be a release tarball, some git repository, or source included in
+                All standard source code locations are supported.
+                Consequently, the source could be a release tarball, a git repository, or source included in
                 the directory within the BSP itself.
             </para>
             <para>
                 The file then contains information about what patches to apply and how to configure and build them.
-                It can reuse the main Poky kernel build class, so the definitions here can remain very simple.   
+                Because the file can reuse the main Poky kernel build class, the definitions here can 
+                remain very simple.   
             </para>
             <para>
-               <programlisting>
+                <programlisting>
 linux-bsp-2.6.50/*.patch
-               </programlisting>
+                </programlisting>
             </para>
             <para>
                 The above example file contains patches you can apply against the base kernel, from wherever
                 they may have been obtained.
             </para>
             <para>
-               <programlisting>
-meta-bsp/packages/linux/linux-bsp-2.6.50/defconfig-bsp
-               </programlisting>
+                <programlisting>
+meta-Emenlow/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
+                </programlisting>
             </para>
             <para>
                 Finally, this last example file contains kernel configuration information.
             </para>
             <para>
-                Examples of kernel recipes are available in Poky itself. 
-                These files are optional since a kernel from Poky could be selected, although it
-                would be unusual not to have a kernel configuration.
+                Examples of kernel recipes are available in Poky itself, and thus, make these files optional.
+                However, it would be unusual not to have a kernel configuration.
             </para>
         </section>
 
         <section id='bsp-filelayout-packages'>
-            <title>Other Software (meta-bsp/packages/*)</title>
+            <title>Other Software (meta-&lt;bsp_name&gt;/recipes-kernel/*)</title>
 
             <para>
                 This section describes other pieces of software that the hardware might need for best
                 operation. 
-                This section shows examples of the kinds of things that you could encounter.  
+                Examples show some of the things you could encounter.  
                 The examples are standard <filename>.bb</filename> file recipes in the 
                 usual Poky format.  
                 You can include the source directly by referring to it in the source control system or 
@@ -257,7 +261,7 @@ meta-bsp/packages/linux/linux-bsp-2.6.50/defconfig-bsp
             </para>
             <para>
                <programlisting>
-meta-bsp/packages/bootloader/bootloader_0.1.bb
+meta-Emenlow/recipes-kernel/bootloader/bootloader_0.1.bb
                </programlisting>
             </para>
             <para>
@@ -267,8 +271,8 @@ meta-bsp/packages/bootloader/bootloader_0.1.bb
             </para>
             <para>
                <programlisting>
-meta-bsp/packages/modem/modem-driver_0.1.bb
-meta-bsp/packages/modem/modem-daemon_0.1.bb
+meta-Emenlow/recipes-Emenlow/modem/modem-driver_0.1.bb
+meta-Emenlow/recipes-Emenlow/modem/modem-daemon_0.1.bb
                </programlisting>
             </para>
             <para>
@@ -279,7 +283,7 @@ meta-bsp/packages/modem/modem-daemon_0.1.bb
             </para>
             <para>
                <programlisting>
-meta-bsp/packages/image-creator/image-creator-native_0.1.bb
+meta-Emenlow/recipes-Emenlow/image-creator/image-creator-native_0.1.bb
                </programlisting>
             </para>
         </section>
@@ -287,7 +291,7 @@ meta-bsp/packages/image-creator/image-creator-native_0.1.bb
         <section id='bs-filelayout-bbappend'>
             <title>Append BSP-Specific Information to Existing Recipes</title>
             <para>
-                Suppose you have a recipe such as 'pointercal' that requires machine-specific information.
+                Suppose you have a recipe such as "pointercal" that requires machine-specific information.
                 At the same time, you have your new BSP code nicely partitioned into a layer through which  
                 you would also like to specify any machine-specific information associated with your new machine. 
                 Before the <filename>.bbappend</filename> extension was introduced, you would have to copy the whole
@@ -296,9 +300,9 @@ meta-bsp/packages/image-creator/image-creator-native_0.1.bb
             <para>
                 With the <filename>.bbappend</filename> extension, however, your work becomes much easier.
                 This extension allows you to easily merge BSP-specific information with the original recipe.
-                Whenever bitbake finds any <filename>.bbappend</filename> files they will be
-                included after bitbake loads the associated <filename>.bb</filename> but before any finalize 
-                or anonymous methods run.
+                Whenever BitBake finds any <filename>.bbappend</filename> files BitBake will include them after
+                it loads the associated <filename>.bb</filename> file but before any finalize 
+                or anonymous methods are run.
                 This allows the BSP layer to do whatever it might want to do to customize the original recipe.
             </para>
             <para>
@@ -311,17 +315,17 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
             </programlisting>
             <para>
             This technique allows the BSP to add machine-specific configuration files to the layer directory, 
-            which will be picked up by bitbake. 
+            which will be picked up by BitBake. 
             For an example see <filename>meta-emenlow/packages/formfactor</filename>.
             </para>
         </section>
 
         <section id="bsp-filelayout-prebuilds">
-            <title>Prebuild Data (meta-bsp/prebuilds/*)</title>
+            <title>Pre-build Data (meta-&lt;bsp_name&gt;/prebuilds/*)</title>
             <para>
                 This location can contain precompiled representations of the source code 
                 contained elsewhere in the BSP layer. 
-                Assuming a compatible configuration is used, Poky can process and use these optional precompiled 
+                Assuming a compatible configuration is used, Poky can process and use these optional pre-compiled 
                 representations to provide much faster build times.
             </para>
         </section>
@@ -354,24 +358,18 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
             <para>
 	      For cases where you can substitute something and still maintain functionality, the Poky website will make
-	      available a 'de-featured' BSP completely free of
-	      the encumbered IP.
-              In that case you can use the substitution directly and without
-	      any further licensing requirements.  
-              If present, this
-	      fully 'de-featured' BSP will be named meta-bsp (i.e. the
+	      available a 'de-featured' BSP completely free of the encumbered IP.
+              In that case you can use the substitution directly and without any further licensing requirements.  
+              If present, this fully 'de-featured' BSP will be named meta-&lt;bsp_name&gt; (i.e. the
 	      normal default naming convention).  
               If available, this is the simplest the most preferred option.
               This, of course, assumes the resulting functionality meets requirements.
             </para>
 
             <para>
-	      If however, a non-encumbered version is unavailable or
-	      the 'free' version would provide unsuitable
-	      functionality or quality, an encumbered version can be
-	      used.  
-              Encumbered versions of a BSP are given names of
-	      the form meta-bsp-nonfree.
+	      If however, a non-encumbered version is unavailable or the 'free' version would provide unsuitable
+	      functionality or quality, an encumbered version can be used.  
+              Encumbered versions of a BSP are given names of the form meta-&lt;bsp_name&gt;-nonfree.
             </para>
 
             <para>  
@@ -381,11 +379,10 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
             </para>
 
 	    <orderedlist>
-              <listitem>
+            <listitem>
 
 		<para>
-		  Get a license key (or keys) for the encumbered BSP
-		  by visiting 
+		  Get a license key (or keys) for the encumbered BSP by visiting 
                   <ulink url='https://pokylinux.org/bsp-keys.html'>https://pokylinux.org/bsp-keys.html</ulink>
 		  and give the name of the BSP and your e-mail address in the web form.
 		</para>
@@ -427,7 +424,7 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 		  applicable license must be present in <filename>local.conf</filename> or
 		  supplied on the command-line.
 		</para>
-              </listitem>
+              </listitem> 
               <listitem>
 		<para>
 		  Do nothing - build as you normally would.
@@ -465,7 +462,7 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 	      non-free BSPs.  
               Those images are likewise available at
 	      <ulink url='https://pokylinux.org/bsps.html'>https://pokylinux.org/bsps.html</ulink>.
-            </para>
+            </para> 
         </section>
 
 </chapter>
-- 
1.7.0.4


