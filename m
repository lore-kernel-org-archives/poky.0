Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E41164C8120C
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536784"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <222a10c9a43ecebd9a17c51b8dbaf7e2a0aea738.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 17 Dec 2010 14:53:40 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 26/29] documentation/bsp-guide/bsp.xml: Updated the Linux Kernel Configuration section
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

These changes are another round of edits from Tom Z.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   89 +++++++++++++++++++++++++++-----------
 1 files changed, 63 insertions(+), 26 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 75640cc..ff8a481 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -324,21 +324,22 @@ meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
             <para>
                 For your BSP you typically want to use an existing Poky kernel found in the 
                 Poky repository at <filename class='directory'>meta/recipes-kernel/kernel</filename>.
-                You can append your specific changes to the kernel by using a 
-                <filename>.bbappend</filename> file, which is located in the 
-                <filename class='directory'>meta-&lt;bsp_name&gt;/recipes-kernel/linux</filename>
+                You can append your specific changes to the kernel recipe by using an append file, 
+                which is located in the 
+                <filename class='directory'>meta-&lt;bsp_name&gt;/recipes-kernel/linux</filename> 
                 directory.
             </para>
             <para>
-                Consider a BSP that uses the <filename>linux-yocto-stable_git.bb</filename> kernel.
-                You would use the <filename>linux-yocto-stable_git.bbappend</filename> file to add 
+                Consider a BSP that uses the <filename>linux-yocto-stable_git.bb</filename> kernel, 
+                which is the preferred kernel to use for developing a new BSP using the Yocto Project.
+                You would use the <filename>linux-yocto-stable_git.bbappend</filename> file to append 
                 specific BSP settings to the kernel, thus configuring the kernel for your particular BSP.
             </para>
             <para>
                 Consider an example for the existing "crownbay" BSP.
-                The <filename>.bbaappend</filename> file used for the "crownbay" BSP is:
+                The append file used for the "crownbay" BSP is:
                 <programlisting>
-meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
+meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
                 </programlisting>
                 The file contains the following:
                 <programlisting>
@@ -346,31 +347,67 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_crownbay = "cronwbay"
 KMACHINE_crownbay = "crownbay"
                 </programlisting>
-                This <filename>.bbappend</filename> file adds "crownbay" as a compatible machine,
+                This append file adds "crownbay" as a compatible machine,
                 and additionally sets a Yocto Kernel-specific variable that identifies the name of the 
                 BSP branch to use in the GIT repository to find configuration information.
             </para>
-            <note><para>
-                For an established BSP the configuration information is incorporated directly into the 
-                git tree.
-                For a new BSP, however, the <filename>.bbappend</filename> file needs to 
-                include its own set of configuration options in a file called 
-                <filename>defconfig</filename> located in a directory that matches the recipe name.
+            <para>
+                One thing missing in this particular BSP, which you will typically need when 
+                developing a BSP, is the kernel configuration (.config) for your BSP.
+                When developing a BSP, you probably have a kernel configuration file or a set of kernel
+                configuration files that, when taken together, define the kernel configuration for your BSP.
+                You can accomplish this definition by putting the configurations in a file or a set of files 
+                inside a directory located at the same level as your append file and having the same name 
+                as the kernel.
+                With all these conditions met simply reference those files in a SRC_URI statement in the append 
+                file.
+            </para>
+            <para>
+                For example, suppose you had a set of configuration options in a file called 
+                <filename>defonfig</filename>.  
+                If you put that file inside a directory named 
+                <filename class='directory'>/linux-yocto-stable_git</filename> and then added 
+                a SRC_URI statement such as the following to the append file, those configuration
+                options will be picked up and applied when the kernel is built.
                 <programlisting>
 SRC_URI += "file://defconfig"
                 </programlisting>
-                Once a BSP is committed, the Yocto kernel maintainer moves this configuration information
-                into the git tree so that the <filename>.bbappend</filename> file does not need to locate
-                its own configuration options.
-                Again, the initial configuration options using the SRC_URI are put into a 
-                directory named 
-                <filename class='directory'>meta-&lt;bsp_name&gt;/recipes/linux/linux-yocto-stable</filename>.
-            </para>
-            <para>
-                 You can find more information about creating a BSP that is based on an existing similar
-                 BSP by reading the "Creating a BSP Based on an Existing Similar BSP" section in the 
-                 "<ulink url="http://www.yoctoproject.org/community/documentation">Yocto Project
-                 Kernel Architecture and Use Manual</ulink>".
+            </para>
+            <para>
+                As mentioned earlier, you can group related configurations into multiple files and 
+                name them all in the SRC_URI statement as well.
+                For example, you could group separate configurations specifically for ethernet and graphics
+                into their own files and add those by using a SRC_URI statement like the 
+                following in your append file:
+                <programlisting>
+SRC_URI += "file://defconfig \
+            file://eth.cfg \
+            file://gfx.cfg"
+                </programlisting>
+            </para>
+            <para>
+                The FILESEXTRAPATHS variable is boilerplated here in order to make it easy to do that.
+                It basically allows those configuration files to be found by the build process.
+            </para>
+            <note><para>
+                Other methods exist to accomplish grouping and defining configuration options.
+                For example, you could directly add configuration options to the Yocto kernel 
+                <filename class='directory'>wrs_meta</filename> branch for your BSP.
+                The configuration options will likely end up in that location anyway if the BSP gets 
+                added to the Yocto Project. 
+                For information on how to add these configurations directly, see the 
+                "Yocto Project Kernel Architecture and Use Manual" on the 
+                <ulink url="http://yoctoproject.org/community/documentation">Yocto Project website
+                Documentation Page</ulink> 
+            </para>
+            <para>
+                In general, however, the Yocto Project maintainers take care of moving the SRC_URI-specified 
+                configuration options to the <filename class='directory'>wrs_meta</filename> branch.
+                Not only is it easier for BSP developers to not have to worry about putting those 
+                configurations in the branch, but having the manintainers do it allows them to apply 
+                'global' knowledge about the kinds of common configuration options multiple BSPs in 
+                the tree are typically using.  
+                This allows for promotion of common configurations into common features.
             </para></note>
             </section>
 
-- 
1.7.0.4


