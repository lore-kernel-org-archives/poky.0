Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8556FE0144D
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:43 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D80232FD1D
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:37 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:00 -0700
Message-Id: <dc5ee8318f0ee72e3f03850a843584d2ba74f2c2.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D80232FD1D.1ADB6
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 10/31] documentation/bsp-guide/bsp.xml: Updates to requirements section
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:43 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Implemented review feedback from Dave Stewart and Tom Zanussi.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |  101 +++++++++++++++++++++++----------------
 1 file changed, 61 insertions(+), 40 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 1b5f0f5..e111713 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -670,10 +670,12 @@
                 <para>
                     Before looking at BSP requirements, you should consider the following:
                     <itemizedlist>
-                        <listitem><para>The requirements here assume the base Yocto Project requirements
-                            for the BSP layer are already met.
-                            For example, requirements for working with the 
-                            <filename>oe-core</filename> and standard toolchain layers.</para></listitem>
+                        <listitem><para>The requirements here assume the BSP layer is a well-formed, "legal"
+                            layer that can be added to the Yocto Project.
+                            For guidelines on creating a Yocto Project layer that meets these base requirements, see the
+                            "<link linkend='bsp-layers'>BSP Layers</link>" and the 
+                            "<ulink url='&YOCTO_DOCS_DEV_URL;#understanding-and-creating-layers'>Understanding
+                            and Creating Layers"</ulink> in the Yocto Project Development Manual.</para></listitem>
                         <listitem><para>The requirements in this section apply regardless of how you 
                             ultimately package a BSP.
                             You should consult the packaging and distribution guidelines for your
@@ -686,7 +688,7 @@
                             For example, the BSP metadata can be contained within a Git repository
                             and could have a directory structure completely different from what appears
                             in the officially released BSP layer.</para></listitem>
-                        <listitem><para>No requirement stipulates that specific packages or package 
+                        <listitem><para>It is not required that specific packages or package 
                             modifications exist in the BSP layer, beyond the requirements for general 
                             compliance with the Yocto Project.
                             For example, no requirement exists dictating that a specific kernel or 
@@ -705,9 +707,16 @@
                             "<link linkend='bsp-layers'>BSP Layers</link>" section.
                             </para></listitem>
                         <listitem><para><emphasis>File System Layout:</emphasis>
-                            In general, the filesystem layout for the BSP layer 
-                            should use the same directory names
-                            as listed in <filename>recipes.txt</filename>.
+                            When possible, use the same directory names in your 
+                            BSP layer as listed in the <filename>recipes.txt</filename> file.
+                            In particular, you should place recipes 
+                            (<filename>.bb</filename> files) and recipe
+                            modifications (<filename>.bbappend</filename> files) into  
+                            <filename>recipes-*</filename> subdirectories by functional area 
+                            as outlined in <filename>recipes.txt</filename>.
+                            If you cannot find a category in <filename>recipes.txt</filename>
+                            to fit a particular recipe, you can make up your own 
+                            <filename>recipe-*</filename> subdirectory.
                             You can find <filename>recipes.txt</filename> in the
                             <filename>meta</filename> directory of the 
                             <ulink url='&YOCTO_DOCS_DEV_URL;#yocto-project-files'>Yocto 
@@ -715,13 +724,6 @@
                             (<filename>openembedded-core</filename>) found at 
                             <ulink url='http://git.openembedded.org/openembedded-core/tree/meta'></ulink>.
                             </para>
-                            <para>In particular, you should place recipes 
-                            (<filename>.bb</filename> files) and recipe
-                            modifications (<filename>.bbappend</filename> files) into  
-                            <filename>recipes-*</filename> subdirectories by functional area 
-                            as outlined in <filename>recipes.txt</filename>.  
-                            If none of the categories fits a particular recipe, you can
-                            make up your own <filename>recipe-*</filename> subdirectory.</para>
                             <para>Within any particular <filename>recipes-*</filename> category, the layout
                             should match what is found in the OpenEmbedded Core
                             Git repository (<filename>openembedded-core</filename>)
@@ -739,11 +741,19 @@
                             <filename>meta-&lt;bsp_name&gt;</filename> directory.
                             This license covers the BSP metadata as a whole.
                             You must specify which license to use since there is no 
-                            default license if one is not specified.</para></listitem>
+                            default license if one is not specified.
+                            See the 
+                            <ulink url='&YOCTO_GIT_URL;/cgit.cgi/meta-intel/tree/meta-fishriver/COPYING.MIT'><filename>COPYING.MIT</filename></ulink>
+                            file for the Fish River BSP in the <filename>meta-fishriver</filename> BSP layer 
+                            as an example.</para></listitem>
                         <listitem><para><emphasis>README File:</emphasis>
                             You must include a <filename>README</filename> file in the 
                             <filename>meta-&lt;bsp_name&gt;</filename> directory.
-                            At a minimum, the <filename>README</filename> file should 
+                            See the 
+                            <ulink url='&YOCTO_GIT_URL;/cgit.cgi/meta-intel/tree/meta-fishriver/README'><filename>README</filename></ulink>
+                            file for the Fish River BSP in the <filename>meta-fishriver</filename> BSP layer 
+                            as an example.</para>
+                            <para>At a minimum, the <filename>README</filename> file should 
                             contain the following:
                             <itemizedlist>
                                 <listitem><para>A brief description about the hardware the BSP 
@@ -779,7 +789,11 @@
                             <filename>meta-&lt;bsp_name&gt;</filename> directory.
                             This file specifies exactly where you can find the sources used to 
                             generate the binary images contained in the 
-                            <filename>/binary</filename> directory, if present.</para></listitem>
+                            <filename>/binary</filename> directory, if present.
+                            See the 
+                            <ulink url='&YOCTO_GIT_URL;/cgit.cgi/meta-intel/tree/meta-fishriver/README.sources'><filename>README.sources</filename></ulink>
+                            file for the Fish River BSP in the <filename>meta-fishriver</filename> BSP layer 
+                            as an example.</para></listitem>
                         <listitem><para><emphasis>Layer Configuration File:</emphasis>
                             You must include a <filename>conf/layer.conf</filename> in the
                             <filename>meta-&lt;bsp_name&gt;</filename> directory.
@@ -814,28 +828,35 @@
                 <title>Released BSP Recommendations</title>
 
                 <para>
-                    One recommendation for BSP releases is that they contain 
-                    one or more bootable images.
-                    Including bootable images allows users to easily try out the BSP
-                    on their own hardware.  
-                </para>
-
-                <para>
-                    In some cases, it might not be convenient to include a 
-                    bootable image. 
-                    In this case, you might want to make two versions of the 
-                    BSP available: one that contains binary images, and one
-                    that does not.
-                    The version that does not contain bootable images avoids 
-                    unnecessary download times for users not interested in the images.
-                </para>
-
-                <para>
-                    If you need to distribute a BSP and include bootable images or build kernel and
-                    filesystems meant to allow users to boot the BSP for evaluation
-                    purposes, you should put the images and artifacts within a 
-                    <filename>binary/</filename> subdirectory located in the 
-                    <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                    Following are recommendations for a released BSP that conforms to the 
+                    Yocto Project:
+                    <itemizedlist>
+                        <listitem><para><emphasis>Bootable Images:</emphasis>
+                            BSP releases 
+                            can contain one or more bootable images.
+                            Including bootable images allows users to easily try out the BSP
+                            on their own hardware.</para>
+                            <para>In some cases, it might not be convenient to include a 
+                            bootable image. 
+                            In this case, you might want to make two versions of the 
+                            BSP available: one that contains binary images, and one
+                            that does not.
+                            The version that does not contain bootable images avoids 
+                            unnecessary download times for users not interested in the images.
+                            </para>
+                            <para>If you need to distribute a BSP and include bootable images or build kernel and
+                            filesystems meant to allow users to boot the BSP for evaluation
+                            purposes, you should put the images and artifacts within a 
+                            <filename>binary/</filename> subdirectory located in the 
+                            <filename>meta-&lt;bsp_name&gt;</filename> directory.</para></listitem>
+                        <listitem><para><emphasis>Use a Yocto Linux Kernel:</emphasis>
+                            Kernel recipes in the BSP should be based on a Yocto Linux kernel. 
+                            Basing your recipes on these kernels reduces the costs for maintaining 
+                            the BSP and increases its scalability.
+                            See the <filename>Yocto Linux Kernel</filename> category in the 
+                            <ulink url='&YOCTO_GIT_URL;/cgit.cgi'><filename>Yocto Source Repositories</filename></ulink>
+                            for these kernels.</para></listitem>
+                    </itemizedlist>
                 </para>
             </section>
         </section>
-- 
1.7.9.5


