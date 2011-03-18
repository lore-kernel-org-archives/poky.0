Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 909DD4C80FE0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:00:02 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 09:58:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="898726294"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 09:58:49 -0700
Message-Id: <c88677cc7635ce52a2cd542471993acaaf891885.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 08:21:21 -0600
Date: Fri, 18 Mar 2011 10:59:42 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 03/15] documentation/poky-ref-manual/extendpoky.xml: Spell check
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
X-List-Received-Date: Fri, 18 Mar 2011 17:00:02 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

A spell check performed on this chapter.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/extendpoky.xml |   30 +++++++++++++-------------
 1 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index d7d2c6c..951468d 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -46,7 +46,7 @@
                 "do_install" tasks.
                 The <glossterm><link linkend='var-S'>S</link></glossterm> variable defines the 
                 directory containing the source code, which is set to <glossterm><link linkend='var-WORKDIR'>
-                WORKDIR</link></glossterm> in this case - the directory Bitbake uses for the build.
+                WORKDIR</link></glossterm> in this case - the directory BitBake uses for the build.
             </para>
             <programlisting>
 DESCRIPTION = "Simple helloworld application"
@@ -68,7 +68,7 @@ do_install() {
 }
             </programlisting>
             <para>
-                By default, the "helloworld", "helloworld-dbg" and "hellworld-dev"
+                By default, the "helloworld", "helloworld-dbg" and "helloworld-dev"
                 packages are built. 
                 For information on how to customize the packaging process, see
                 <link linkend='usingpoky-extend-addpkg-files'>Controlling Package Content</link>.
@@ -81,7 +81,7 @@ do_install() {
                 Applications that use autotools such as <filename>autoconf</filename> and 
                 <filename>automake</filename> require a recipe that has a source archive listed in 
                 <glossterm><link linkend='var-SRC_URI'>SRC_URI</link></glossterm> and 
-                <filename>also inherits autotools</filename>, which instructs Bitbake to use the
+                <filename>also inherits autotools</filename>, which instructs BitBake to use the
                 <filename>autotools.bbclass</filename> file, which contains the definitions of all the steps
                 needed to build an autotooled application.
                 The result of the build is automatically packaged. 
@@ -114,13 +114,13 @@ inherit autotools gettext
             <para>
                 Applications that use GNU <filename>make</filename> also require a recipe that has
                 the source archive listed in <glossterm><link linkend='var-SRC_URI'>SRC_URI</link></glossterm>. 
-                You do not need to add a <function>do_compile</function> step since by default Bitbake 
+                You do not need to add a <function>do_compile</function> step since by default BitBake 
                 starts the <filename>make</filename> command to compile the application. 
                 If you need additional <filename>make</filename> options you should store them in the 
                 <glossterm><link linkend='var-EXTRA_OEMAKE'>EXTRA_OEMAKE</link></glossterm> variable.
-                Bitbake passes these options into the <filename>make</filename> GNU invocation. 
+                BitBake passes these options into the <filename>make</filename> GNU invocation. 
                 Note that a "do_install" task is still required.
-                Otherwise Bitbake runs an empty "do_install" task by default. 
+                Otherwise BitBake runs an empty "do_install" task by default. 
             </para>
             <para>
                 Some applications might require extra parameters to be passed to the compiler.
@@ -529,7 +529,7 @@ DISPLAY_SUBPIXEL_ORDER=vrgb
     <section id="usingpoky-changes">
         <title>Making and Maintaining Changes</title>
         <para>
-            Because Poky offers extreme configurability and flexibility, we recognize that people will want 
+            Because Poky is extremely configurable and flexible, we recognize that people will want 
             to extend, configure or optimize Poky for their specific uses.
             To best keep pace with future Poky changes we recommend you make controlled changes to Poky.
         </para>
@@ -541,12 +541,12 @@ DISPLAY_SUBPIXEL_ORDER=vrgb
         </para>
 
         <section id="usingpoky-changes-layers">
-          <title>Bitbake Layers</title>
+          <title>BitBake Layers</title>
           <para>
                 Often, people want to extend Poky either by adding packages
                 or by overriding files contained within Poky to add their own
                 functionality. 
-                Bitbake has a powerful mechanism called
+                BitBake has a powerful mechanism called
                 "layers", which provides a way to handle this extension in a fully
                 supported and non-invasive fashion.
            </para>
@@ -575,7 +575,7 @@ BBLAYERS = " \
            </para>
 
           <para>
-               Bitbake parses each <filename>conf/layer.conf</filename> file for each layer in BBLAYERS
+               BitBake parses each <filename>conf/layer.conf</filename> file for each layer in BBLAYERS
                and adds the recipes, classes and configuration contained within the layer to Poky.
                To create your own layer, independent of the main Poky repository,
                simply create a directory with a <filename>conf/layer.conf</filename> file and
@@ -613,14 +613,14 @@ BBFILE_PRIORITY_emenlow = "6"
                 Note the use of the <glossterm><link linkend='var-LAYERDIR'>LAYERDIR</link></glossterm> 
                 variable with the immediate expansion operator.
                 The LAYERDIR variable expands to the directory of the current layer and
-                requires the immediate expansion operator so that Bitbake does not wait to expand the variable 
+                requires the immediate expansion operator so that BitBake does not wait to expand the variable 
                 when it's parsing a different directory.
             </para>
             <para>
-                Bitbake can locate where other bbclass and configuration files are applied through 
+                BitBake can locate where other bbclass and configuration files are applied through 
                 the <glossterm><link linkend='var-BBPATH'>BBPATH</link></glossterm>
                 environment variable. 
-                For these cases, Bitbake uses the first file with the matching name found in BBPATH.
+                For these cases, BitBake uses the first file with the matching name found in BBPATH.
                 This is similar to the way the PATH variable is used for binaries. 
                 We recommend, therefore, that you use unique bbclass and configuration file names in your
                 custom layer.
@@ -747,7 +747,7 @@ BBFILE_PRIORITY_emenlow = "6"
             <para>
                 The core component of any development effort with Poky is often an 
                 automated build testing framework and an image generation process. 
-                You can use these core components to check that the metadata is buildable, 
+                You can use these core components to check that the metadata can be built, 
                 highlight when commits break the build, and provide up-to-date images that 
                 allow people to test the end result and use it as a base platform for further 
                 development. 
@@ -969,7 +969,7 @@ LIC_FILES_CHKSUM = "file://../license.html;md5=5c94767cedb5d6987c902ac850ded2c6"
                 This practice allow you to just track the "COPYING" file as long as it is kept up to date. 
             </para>
             <tip>
-                If you specify an empty or invalid "md5" parameter, Bitbake returns an md5 mis-match 
+                If you specify an empty or invalid "md5" parameter, BitBake returns an md5 mis-match 
                 error and displays the correct "md5" parameter value during the build. The correct parameter
                 is also captured in the build log. 
             </tip>
-- 
1.7.1


