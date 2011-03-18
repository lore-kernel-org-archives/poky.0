Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94D804C80ACB
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:05 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Mar 2011 09:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="404782266"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by azsmga001.ch.intel.com with ESMTP; 18 Mar 2011 09:59:04 -0700
Message-Id: <0941703d9c7ac49b234dd9bdfaabf6b0530d991e.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 18:28:20 -0600
Date: Fri, 18 Mar 2011 10:59:57 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 13/15] documentation/poky-ref-manual/extendpoky.xml: small edits
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:05 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Various small edits and format changes.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/extendpoky.xml |   29 +++++++++++++------------
 1 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index 951468d..8e41031 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -81,7 +81,7 @@ do_install() {
                 Applications that use autotools such as <filename>autoconf</filename> and 
                 <filename>automake</filename> require a recipe that has a source archive listed in 
                 <glossterm><link linkend='var-SRC_URI'>SRC_URI</link></glossterm> and 
-                <filename>also inherits autotools</filename>, which instructs BitBake to use the
+                also inherits autotools, which instructs BitBake to use the
                 <filename>autotools.bbclass</filename> file, which contains the definitions of all the steps
                 needed to build an autotooled application.
                 The result of the build is automatically packaged. 
@@ -114,7 +114,7 @@ inherit autotools gettext
             <para>
                 Applications that use GNU <filename>make</filename> also require a recipe that has
                 the source archive listed in <glossterm><link linkend='var-SRC_URI'>SRC_URI</link></glossterm>. 
-                You do not need to add a <function>do_compile</function> step since by default BitBake 
+                You do not need to add a "do_compile" step since by default BitBake 
                 starts the <filename>make</filename> command to compile the application. 
                 If you need additional <filename>make</filename> options you should store them in the 
                 <glossterm><link linkend='var-EXTRA_OEMAKE'>EXTRA_OEMAKE</link></glossterm> variable.
@@ -209,8 +209,8 @@ FILES_sxpm = "${bindir}/sxpm"
             <title>Post Install Scripts</title>
 
             <para>
-                To add a post-installation script to a package, add a <function>pkg_postinst_PACKAGENAME()
-                </function> function to the <filename>.bb</filename> file and use 
+                To add a post-installation script to a package, add a <filename>pkg_postinst_PACKAGENAME()
+                </filename> function to the <filename>.bb</filename> file and use 
                 <filename>PACKAGENAME</filename> as the name of the package you want to attach to the 
                 <filename>postinst</filename> script.
                 Normally <glossterm><link linkend='var-PN'>PN</link></glossterm> can be used, which 
@@ -298,8 +298,8 @@ IMAGE_INSTALL += "strace"
             <para>
                 For complex custom images, the best approach is to create a custom task package
                 that is used to build the image or images. 
-                A good example of a tasks package is <filename>meta/recipes-sato/tasks/task-poky.bb
-                </filename>. 
+                A good example of a tasks package is 
+                <filename>meta/recipes-sato/tasks/task-poky.bb</filename>. 
                 The <glossterm><link linkend='var-PACKAGES'>PACKAGES</link></glossterm> 
                 variable lists the task packages to build along with the complementary
                 -dbg and -dev packages. 
@@ -494,7 +494,7 @@ COMPATIBLE_MACHINE = '(qemux86|qemumips)'
             <title>Adding a Formfactor Configuration File</title>
             <para>
                 A formfactor configuration file provides information about the 
-                target hardware on which Poky is running, and information that Poky cannot 
+                target hardware on which Poky is running and information that Poky cannot 
                 obtain from other sources such as the kernel.  
                 Some examples of information contained in a formfactor configuration file include 
                 framebuffer orientation, whether or not the system has a keyboard, 
@@ -505,7 +505,7 @@ COMPATIBLE_MACHINE = '(qemux86|qemumips)'
                 Reasonable defaults are used in most cases, but if customization is 
                 necessary you need to create a <filename>machconfig</filename> file 
                 under <filename>meta/packages/formfactor/files/MACHINENAME/</filename>,
-                where <literal>MACHINENAME</literal> is the name for which this information
+                where <filename>MACHINENAME</filename> is the name for which this information
                 applies. 
                 For information about the settings available and the defaults, see 
                 <filename>meta/packages/formfactor/files/config</filename>. 
@@ -674,7 +674,7 @@ BBFILE_PRIORITY_emenlow = "6"
     variables allowing moves to be made towards generating checksums and allowing
     use of the dependency information in other parts of bitbake.
     
-    Signed-off-by: Richard Purdie rpurdie@linux.intel.com
+    Signed-off-by: Richard Purdie richard.purdie@linuxfoundation.org
             </literallayout>
 
             <para>
@@ -714,7 +714,7 @@ BBFILE_PRIORITY_emenlow = "6"
                 Usually, version increases occur only to packages.
                 However, if for some reason PV changes but does not increase, you can increase the 
                 <glossterm><link linkend='var-PE'>PE</link></glossterm> variable (Package Epoch).
-                The PE variable defaults to '0'.
+                The PE variable defaults to "0".
             </para>
             <para>
                 Version numbering strives to follow the 
@@ -823,7 +823,8 @@ BBFILE_PRIORITY_emenlow = "6"
             For a standard recipe not related to 
             <glossterm><link linkend='var-MACHINE'>MACHINE</link></glossterm> the location is
             <filename>tmp/work/PACKAGE_ARCH-poky-TARGET_OS/PN-PV-PR/</filename>.
-            For target device-dependent packages you should use the MACHINE variable instead of 
+            For target device-dependent packages you should use the <filename>MACHINE</filename>
+            variable instead of 
             <glossterm><link linkend='var-PACKAGE_ARCH'>PACKAGE_ARCH</link></glossterm> 
             in the directory name.
         </para>
@@ -864,19 +865,19 @@ BBFILE_PRIORITY_emenlow = "6"
                 into the new patch file:
 
                 <literallayout class='monospaced'>
-quilt new NAME-OF-PATCH.patch
+     quilt new NAME-OF-PATCH.patch
                 </literallayout>
 
                 After notifying quilt, add all modified files into that patch:
                 <literallayout class='monospaced'>
-quilt add file1 file2 file3
+     quilt add file1 file2 file3
                 </literallayout>
 
                 You can now start editing. 
                 Once you are done editing, you need to use quilt to generate the final patch that 
                 will contain all your modifications.
                 <literallayout class='monospaced'>
-quilt refresh
+     quilt refresh
                 </literallayout>
 
                 You can find the resulting patch file in the
-- 
1.7.1


