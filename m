Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12C4E0144C
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:40 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 49DA72FE87
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:35 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:40:59 -0700
Message-Id: <613bf5ae5a3f6929d3005985fde17032ac8743b3.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 49DA72FE87.AE4DA
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 09/31] documentation/bsp-guide/bsp.xml: BSP recommendations section added
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:41 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Added the "Requirements and Recommendations for Released BSPs"
section.  This section was requested by Dave Stewart based on
community input for direction on how to create a BSP that was
compliant with the Yocto Project.  The input for the section came
from Tom Zanussi.

A spell-check was performed also prior to this commit that addressed
a few spelling issues across the file.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |  206 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 201 insertions(+), 5 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index a245332..1b5f0f5 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -75,7 +75,7 @@
 
             <para>
                 Some layers function as a layer to hold other BSP layers.
-                An example of this type of layers is the <filename>meta-intel</filename> layer.  
+                An example of this type of layer is the <filename>meta-intel</filename> layer.  
                 The <filename>meta-intel</filename> layer contains over 10 individual BSP layers.
             </para>
 
@@ -122,6 +122,15 @@
             </para>
 
             <para>
+                Before looking at the common form for the file structure inside a BSP Layer, 
+                you should be aware that some requirements do exist in order for a BSP to 
+                be considered compliant with the Yocto Project.
+                For that list of requirements, see the
+                "<link linkend='released-bsp-requirements'>Released BSP Requirements</link>"
+                section.
+            </para>
+
+            <para>
                 Below is the common form for the file structure inside a BSP Layer.
                 While you can use this basic form for the standard, realize that the actual structures
                 for specific BSPs could differ. 
@@ -644,6 +653,193 @@
             </section>
         </section>
 
+        <section id='requirements-and-recommendations-for-released-bsps'>
+            <title>Requirements and Recommendations for Released BSPs</title>
+
+            <para>
+                Certain requirements exist for a released BSP to be considered
+                compliant with the Yocto Project.
+                Additionally, a single recommendation also exists. 
+                This section describes the requirements and recommendation for
+                released BSPs.
+            </para>
+
+            <section id='released-bsp-requirements'>
+                <title>Released BSP Requirements</title>
+
+                <para>
+                    Before looking at BSP requirements, you should consider the following:
+                    <itemizedlist>
+                        <listitem><para>The requirements here assume the base Yocto Project requirements
+                            for the BSP layer are already met.
+                            For example, requirements for working with the 
+                            <filename>oe-core</filename> and standard toolchain layers.</para></listitem>
+                        <listitem><para>The requirements in this section apply regardless of how you 
+                            ultimately package a BSP.
+                            You should consult the packaging and distribution guidelines for your
+                            specific release process. 
+                            For an example of packaging and distribution requirements, see the 
+                            <ulink url='https://wiki.yoctoproject.org/wiki/Third_Party_BSP_Release_Process'>Third 
+                            Party BSP Release Process</ulink> wiki page.</para></listitem>
+                        <listitem><para>The requirements for the BSP as it is made available to a developer
+                            are completely independent of the released form of the BSP. 
+                            For example, the BSP metadata can be contained within a Git repository
+                            and could have a directory structure completely different from what appears
+                            in the officially released BSP layer.</para></listitem>
+                        <listitem><para>No requirement stipulates that specific packages or package 
+                            modifications exist in the BSP layer, beyond the requirements for general 
+                            compliance with the Yocto Project.
+                            For example, no requirement exists dictating that a specific kernel or 
+                            kernel version be used in a given BSP.</para></listitem>
+                    </itemizedlist>
+                </para>
+
+                <para>
+                    Following are the requirements for a released BSP that conforms to the 
+                    Yocto Project:
+                    <itemizedlist>
+                        <listitem><para><emphasis>Layer Name:</emphasis>
+                            The BSP must have a layer name that follows the Yocto
+                            Project standards.  
+                            For information on BSP layer names, see the
+                            "<link linkend='bsp-layers'>BSP Layers</link>" section.
+                            </para></listitem>
+                        <listitem><para><emphasis>File System Layout:</emphasis>
+                            In general, the filesystem layout for the BSP layer 
+                            should use the same directory names
+                            as listed in <filename>recipes.txt</filename>.
+                            You can find <filename>recipes.txt</filename> in the
+                            <filename>meta</filename> directory of the 
+                            <ulink url='&YOCTO_DOCS_DEV_URL;#yocto-project-files'>Yocto 
+                            Project Files</ulink>, or in the OpenEmbedded Core Layer
+                            (<filename>openembedded-core</filename>) found at 
+                            <ulink url='http://git.openembedded.org/openembedded-core/tree/meta'></ulink>.
+                            </para>
+                            <para>In particular, you should place recipes 
+                            (<filename>.bb</filename> files) and recipe
+                            modifications (<filename>.bbappend</filename> files) into  
+                            <filename>recipes-*</filename> subdirectories by functional area 
+                            as outlined in <filename>recipes.txt</filename>.  
+                            If none of the categories fits a particular recipe, you can
+                            make up your own <filename>recipe-*</filename> subdirectory.</para>
+                            <para>Within any particular <filename>recipes-*</filename> category, the layout
+                            should match what is found in the OpenEmbedded Core
+                            Git repository (<filename>openembedded-core</filename>)
+                            or the Yocto Project Files (<filename>poky</filename>).
+                            In other words, make sure you place related files in appropriately
+                            related <filename>recipes-*</filename> subdirectories specific to the
+                            recipe's function, or within a subdirectory containing a set of closely-related
+                            recipes.  
+                            The recipes themselves should follow the general guidelines
+                            for recipes used in the Yocto Project found in the 
+                            <ulink url='https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide'>Yocto
+                            Recipe and Patch Style Guide</ulink>.</para></listitem>
+                        <listitem><para><emphasis>License File:</emphasis>
+                            You must include a license file in the 
+                            <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                            This license covers the BSP metadata as a whole.
+                            You must specify which license to use since there is no 
+                            default license if one is not specified.</para></listitem>
+                        <listitem><para><emphasis>README File:</emphasis>
+                            You must include a <filename>README</filename> file in the 
+                            <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                            At a minimum, the <filename>README</filename> file should 
+                            contain the following:
+                            <itemizedlist>
+                                <listitem><para>A brief description about the hardware the BSP 
+                                    targets.</para></listitem>
+                                <listitem><para>A list of all the dependencies a 
+                                    on which a BSP layer depends.
+                                    These dependencies are typically a list of required layers needed 
+                                    to build the BSP.
+                                    However, the dependencies should also contain information regarding 
+                                    any other dependencies the BSP might have.</para></listitem>
+                                <listitem><para>Any required special licensing information.
+                                    For example, this information includes information on 
+                                    special variables needed to satisfy a EULA,
+                                    or instructions on information needed to build or distribute
+                                    binaries built from the BSP metadata.</para></listitem>
+                                <listitem><para>The name and contact information for the 
+                                    BSP layer maintainer.
+                                    This is the person to whom patches and questions should
+                                    be sent.</para></listitem>
+                                <listitem><para>Instructions on how to build the BSP using the BSP 
+                                    layer.</para></listitem>
+                                <listitem><para>Instructions on how to boot the BSP build from 
+                                    the BSP layer.</para></listitem>
+                                <listitem><para>Instructions on how to boot the binary images 
+                                    contained in the <filename>/binary</filename> directory, 
+                                    if present.</para></listitem>
+                                <listitem><para>Information on any known bugs or issues that users 
+                                    should know about when either building or booting the BSP 
+                                    binaries.</para></listitem>
+                            </itemizedlist></para></listitem>
+                        <listitem><para><emphasis>README.sources File:</emphasis>
+                            You must include a <filename>README.sources</filename> in the 
+                            <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                            This file specifies exactly where you can find the sources used to 
+                            generate the binary images contained in the 
+                            <filename>/binary</filename> directory, if present.</para></listitem>
+                        <listitem><para><emphasis>Layer Configuration File:</emphasis>
+                            You must include a <filename>conf/layer.conf</filename> in the
+                            <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                            This file identifies the <filename>meta-&lt;bsp_name&gt;</filename>
+                            BSP layer as a layer to the build system.</para></listitem>
+                        <listitem><para><emphasis>Machine Configuration File:</emphasis>
+                            You must include a <filename>conf/machine/&lt;bsp_name&gt;.conf</filename>
+                            in the <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                            This configuration file defines a machine target that can be built
+                            using the BSP layer.
+                            Multiple machine configuration files define variations of machine 
+                            configurations that are supported by the BSP.
+                            If a BSP supports more multiple machine variations, you need to 
+                            adequately describe each variation in the BSP 
+                            <filename>README</filename> file.
+                            Do not use multiple machine configuration files to describe disparate
+                            hardware. 
+                            Multiple machine configuration files should describe very similar targets.
+                            If you do have very different targets, you should create a separate
+                            BSP.
+                            <note>It is completely possible for a developer to structure the 
+                            working repository as a conglomeration of unrelated BSP
+                            files, and to possibly generate specifically targeted 'release' BSPs 
+                            from that directory using scripts or some other mechanism.  
+                            Such considerations are outside the scope of this document.</note>
+                            </para></listitem>
+                    </itemizedlist>
+                </para>
+            </section>
+
+            <section id='released-bsp-recommendations'>
+                <title>Released BSP Recommendations</title>
+
+                <para>
+                    One recommendation for BSP releases is that they contain 
+                    one or more bootable images.
+                    Including bootable images allows users to easily try out the BSP
+                    on their own hardware.  
+                </para>
+
+                <para>
+                    In some cases, it might not be convenient to include a 
+                    bootable image. 
+                    In this case, you might want to make two versions of the 
+                    BSP available: one that contains binary images, and one
+                    that does not.
+                    The version that does not contain bootable images avoids 
+                    unnecessary download times for users not interested in the images.
+                </para>
+
+                <para>
+                    If you need to distribute a BSP and include bootable images or build kernel and
+                    filesystems meant to allow users to boot the BSP for evaluation
+                    purposes, you should put the images and artifacts within a 
+                    <filename>binary/</filename> subdirectory located in the 
+                    <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                </para>
+            </section>
+        </section>
+
         <section id='customizing-a-recipe-for-a-bsp'>
             <title>Customizing a Recipe for a BSP</title>
 
@@ -760,7 +956,7 @@
 		        restart the build to continue where it left off.
 		        During the build, the prompt will not appear again
 		        since you have satisfied the requirement.</para>
-                        <para>Once the appropriate license flags are whitelisted
+                        <para>Once the appropriate license flags are on the white list
 		        in the <filename>LICENSE_FLAGS_WHITELIST</filename> variable, you 
 		        can build the encumbered image with no change at all
 		        to the normal build process.</para></listitem> 
@@ -931,7 +1127,7 @@
                 <para>
                     Now that you know where these two commands reside and how to access information 
                     on them, you should find it relatively straightforward to discover the commands 
-                    necessary to create a BSP and perform basic kernel maintainence on that BSP using
+                    necessary to create a BSP and perform basic kernel maintenance on that BSP using
                     the tools.
                     The next sections provide a concrete starting point to expand on a few points that 
                     might not be immediately obvious or that could use further explanation.
@@ -990,7 +1186,7 @@
                     In every other way, this architecture is representative of how creating a BSP for
                     a 'real' machine would work.
                     The reason the example uses this architecture is because it is an emulated architecture
-                    and can easily be followed without requireing actual hardware.
+                    and can easily be followed without requiring actual hardware.
                 </para>
 
                 <para>
@@ -1059,7 +1255,7 @@
                             If you enter 'n', the script prompts you to further enter the kernel
                             you do want to use (e.g. 3.0, 3.2_preempt-rt, etc.).</para></listitem>
                         <listitem><para>Next, the script asks whether you would like to have a new 
-                            branch created especially for your BSPin the local 
+                            branch created especially for your BSP in the local 
                             <ulink url='&YOCTO_DOCS_DEV_URL;#local-kernel-files'>Linux Yocto Kernel</ulink> 
                             Git repository .
                             If not, then the script re-uses an existing branch.</para>
-- 
1.7.9.5


