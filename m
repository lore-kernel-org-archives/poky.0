Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C33FFE013DE
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:41:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="284227884"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Aug 2013 01:40:59 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id CDA196A4095;
	Tue, 20 Aug 2013 01:40:55 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:20 +0200
Message-Id: <c7ac8851c8c1d21a3d49fb9aa58c531dfaf85fd6.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 038/186] ref-manual: Review comments for config and layer sections.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:41:02 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Fixes [YOCTO #2808]

I applied extensive review comments to the user configuration
and to the layer sections.  These revisions also included
updates to the two figures.

(From yocto-docs rev: 029692b07cb7dff605b81aa45de7c891a3a77db1)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/ref-manual/figures/layer-input.png   |  Bin 45379 -> 46729 bytes
 .../ref-manual/figures/user-configuration.png      |  Bin 23323 -> 24982 bytes
 documentation/ref-manual/technical-details.xml     |  459 +++++++++++---------
 3 files changed, 258 insertions(+), 201 deletions(-)

diff --git a/documentation/ref-manual/figures/layer-input.png b/documentation/ref-manual/figures/layer-input.png
index f06c9ba6b6dbf7ab0ab1b92ec63cbaec667f87e3..1e22bd713b20f02ba1e50498e4b73b820ed720a3 100644
GIT binary patch
literal 46729
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%0AgzfJo7(@X~FN$&06y&C6
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
WNTjZ4Ei_Yse>inKwnWt?`2PW9{ov35

literal 45379
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
X+nU~2d&huDI`9vxjnlfV=@9-udHr2$

diff --git a/documentation/ref-manual/figures/user-configuration.png b/documentation/ref-manual/figures/user-configuration.png
index b4dafe60a21ff7d71980430169f33f25fe84959b..5f49e2fccffb703246ae4711d998597de8b1b449 100644
GIT binary patch
literal 24982
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
Y!$>}SC4UUQOMyU1PE9uNjw$y404L*`K>z>%

literal 23323
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%0Ap?
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
WcAdRgAorOG{EYR@^h!_Ri2nhGk*%Qs

diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index 664c4f7..77c1ba8 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -157,25 +157,18 @@
     <title>A Closer Look at the Yocto Project Development Environment</title>
 
     <para>
-        This section is a work-in-progress for an expanded discussion of the
-        Yocto Project Development Environment.
-        The section is rooted in the figure found in the
-        "<ulink url='&YOCTO_DOCS_QS_URL;#yp-intro'>Introducing the Yocto Project Development Environment</ulink>"
-        section of the Yocto Project Quick Start.
-        This expanded discussion presents a deeper level of detail regarding
-        input, output, and
-        <ulink url='&YOCTO_DOCS_DEV_URL;#metadata'>Metadata</ulink>.
+        This section takes a more detailed look at the Yocto Project
+        development environment.
+        The following diagram represents the development environment at a
+        high level.
+        The remainder of this section expands on the fundamental input, output,
+        process, and
+        <ulink url='&YOCTO_DOCS_DEV_URL;#metadata'>Metadata</ulink>) blocks
+        in the Yocto Project development environment.
     </para>
 
     <para>
-        I will either replicate the exact figure from the YP Quick Start here
-        or I will create a more simplified version that can be used as the
-        top-level diagram from which to base subsequent sections and expanded
-        illustrations.
-    </para>
-
-    <para>
-        [NEED REPEATED FIGURE HERE OR A NEW FIGURE]
+        <imagedata fileref="figures/yocto-environment-ref.png" align="center" width="8in" depth="4.25in" />
     </para>
 
     <para>
@@ -222,7 +215,9 @@
             environment:
         </para>
 
-        <imagedata fileref="figures/user-configuration.png" align="center" width="6in" depth="3.5in" />
+        <para>
+            <imagedata fileref="figures/user-configuration.png" align="center" width="6in" depth="3.5in" />
+        </para>
 
         <para>
             BitBake needs some basic configuration files in order to complete
@@ -232,15 +227,21 @@
             <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
             For simplicity, this section refers to the Source Directory as
             the "Poky Directory."
-            <note>
-                Poky is primarily an aggregation of existing repositories and
-                is not actual canonical upstream source for anything.
-            </note>
+        </para>
+
+        <para>
             When you clone the <filename>poky</filename> Git repository or you
             download and unpack a Yocto Project release, you can set up the
             Source Directory to be named anything you want.
             For this discussion, the cloned repository uses the default
             name <filename>poky</filename>.
+            Within the figure, layers appear inside the Source Directory using
+            a bold typeface.
+            <note>
+                The Poky repository is primarily an aggregation of existing
+                repositories.
+                It is not a canonical upstream source.
+            </note>
         </para>
 
         <para>
@@ -250,35 +251,50 @@
             These example files are used as a basis for creating actual
             configuration files when you source the build environment
             script <filename>oe-init-build-env</filename>.
-            <note>
-                The <filename>oe-init-build-env</filename> script also exists
-                in the <filename>meta</filename> directory of the OE-Core
-                root directory.
-                Both scripts look for sample configuration files through
-                a <filename>$TEMPLATECONF</filename> variable.
-                When using the Yocto Project Development Environment,
-                that location resolves to the samples found in the
-                <filename>poky/meta-yocto/conf</filename> directory.
-            </note>
         </para>
 
         <para>
-            When you source the build environment script, it creates a
+            Sourcing the build environment script creates a
             <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
             if one does not already exist.
             BitBake uses the Build Directory for all its work during builds.
             The Build Directory has a <filename>conf</filename> directory that
             contains default versions of your <filename>local.conf</filename>
             and <filename>bblayers.conf</filename> configuration files.
-            These default configuration files are created by
-            <filename>oe-init-build-env</filename> only if versions of these
-            files do not already exist in the Build Directory you specify
-            when you run the script.
+            These default configuration files are created only if versions
+            do not already exist in the Build Directory at the time you
+            source the <filename>oe-init-build-env</filename> script.
+        </para>
+
+        <para>
+            Because the Poky repository is fundamentally an aggregation of
+            existing repositories, some users might be familiar with running
+            the <filename>oe-init-build-env</filename> script in the context
+            of the OpenEmbedded development environment, which is outside
+            of the Yocto Project development environment.
+            This discussion assumes the script is executed from within a
+            cloned or unpacked version of Poky (i.e. within the Yocto Project
+            environment).
+        </para>
+
+        <para>
+            Depending on where the script is sourced, different sub-scripts
+            are called to set up the Build Directory (Yocto or OpenEmbedded).
+            Specifically, the script
+            <filename>scripts/oe-setup-builddir</filename> inside the
+            poky directory sets up the Build Directory and seeds the directory
+            (if necessary) with configuration files appropriate for the
+            Yocto Project development environment.
+            <note>
+                The <filename>scripts/oe-setup-builddir</filename> script
+                uses the <filename>$TEMPLATECONF</filename> variable to
+                determine which sample configuration files to locate.
+            </note>
         </para>
 
         <para>
             The <filename>local.conf</filename> file provides many
-            basic variables that define your build.
+            basic variables that define a build environment.
             Here is a list of a few.
             To see the default configurations in a <filename>local.conf</filename>
             file created by the build environment script, see the
@@ -308,14 +324,20 @@
                     <link linkend='var-TMPDIR'><filename>TMPDIR</filename></link>
                     variable.</para></listitem>
             </itemizedlist>
+            <note>
+                Configurations set in the <filename>conf/local.conf</filename>
+                file can also be set in the
+                <filename>conf/site.conf</filename> and
+                <filename>conf/auto.conf</filename> configuration files.
+            </note>
         </para>
 
         <para>
             The <filename>bblayers.conf</filename> file tells BitBake what
-            layers you want it to consider during the build.
-            The list of layers includes default layers needed by the build
-            system.
-            You have to manually add any custom layers that you have created.
+            layers you want considered during the build.
+            By default, the layers listed in this file include layers
+            minimally needed by the build system.
+            However, you must manually add any custom layers you have created.
             You can find more information on working with the
             <filename>bblayers.conf</filename> file in the
             "<ulink url='&YOCTO_DOCS_DEV_URL;#enabling-your-layer'>Enabling Your Layer</ulink>"
@@ -330,24 +352,44 @@
             yourself:
             <itemizedlist>
                 <listitem><para><emphasis><filename>site.conf</filename>:</emphasis>
-                    I don't really know what this does.
-                    All I know is that if you want it, you need to hand-create
-                    it.
-                    I need some information on it.</para></listitem>
+                    You can use the <filename>conf/site.conf</filename>
+                    configuration file to configure multiple build directories.
+                    For example, suppose you had several build environments and
+                    they shared some common features.
+                    You can set these default build properties here.
+                    A good example is perhaps the level of parallelism you want
+                    to use through the
+                    <link linkend='var-BB_NUMBER_THREADS'><filename>BB_NUMBER_THREADS</filename></link>
+                    and
+                    <link linkend='var-PARALLEL_MAKE'><filename>PARALLEL_MAKE</filename></link>
+                    variables.</para>
+                    <para>One useful scenario for using the
+                    <filename>conf/site.conf</filename> file is to extend your
+                    <link linkend='var-BBPATH'><filename>BBPATH</filename></link>
+                    variable to include the path to a
+                    <filename>conf/site.conf</filename>.
+                    Then, when BitBake looks for Metadata using
+                    <filename>BBPATH</filename>, it finds the
+                    <filename>conf/site.conf</filename> file and applies your
+                    common configurations found in the file.
+                    To override configurations in a particular build directory,
+                    alter the similar configurations within that build
+                    directory's <filename>conf/local.conf</filename> file.
+                    </para></listitem>
                 <listitem><para><emphasis><filename>auto.conf</filename>:</emphasis>
                     This file is not hand-created.
                     Rather, the file is usually created and written to by
                     an autobuilder.
                     The settings put into the file are typically the same as
-                    you would find in the <filename>local.conf</filename>
-                    or <filename>site.conf</filename> files.
+                    you would find in the <filename>conf/local.conf</filename>
+                    or the <filename>conf/site.conf</filename> files.
                     </para></listitem>
             </itemizedlist>
         </para>
 
         <para>
             You can edit all configuration files to further define
-            the build.
+            any particular build environment.
             This process is represented by the "User Configuration Edits"
             box in the figure.
         </para>
@@ -355,8 +397,8 @@
         <para>
             When you launch your build with the
             <filename>bitbake &lt;target&gt;</filename> command, BitBake
-            draws on the user configurations you have provided in your
-            Build Directory.
+            sorts out the configurations to ultimately define your build
+            environment.
         </para>
     </section>
 
@@ -372,159 +414,174 @@
             policy.
         </para>
 
-         <para>
-             In general, three types of layer input exist:
-             <itemizedlist>
-                 <listitem><para><emphasis>Metadata:</emphasis>
-                     Software layers contain user-supplied recipe files,
-                     patches, and append files.
-                     </para></listitem>
-                 <listitem><para><emphasis>Machine Configuration:</emphasis>
-                     Board Support Package (BSP) layers provide machine
-                     configurations.
-                     This type of information is specific to a particular
-                     target architecture.</para></listitem>
-                 <listitem><para><emphasis>Policy Configuration:</emphasis>
-                     Distribution Layers provide top-level or general
-                     policies for the image or SDK being built.
-                     For example, this layer would dictate whether BitBake
-                     produces RPM or IPK packages.</para></listitem>
-             </itemizedlist>
-         </para>
-
-         <para>
+        <para>
+            In general, three types of layer input exist:
+            <itemizedlist>
+                <listitem><para><emphasis>Policy Configuration:</emphasis>
+                    Distribution Layers provide top-level or general
+                    policies for the image or SDK being built.
+                    For example, this layer would dictate whether BitBake
+                    produces RPM or IPK packages.</para></listitem>
+                <listitem><para><emphasis>Machine Configuration:</emphasis>
+                    Board Support Package (BSP) layers provide machine
+                    configurations.
+                    This type of information is specific to a particular
+                    target architecture.</para></listitem>
+                <listitem><para><emphasis>Metadata:</emphasis>
+                    Software layers contain user-supplied recipe files,
+                    patches, and append files.
+                    </para></listitem>
+            </itemizedlist>
+        </para>
+
+        <para>
             The following figure shows an expanded representation of the
             Metadata, Machine Configuration, and Policy Configuration input
-            boxes of the Yocto Project development environment:
-         </para>
-
-         <imagedata fileref="figures/layer-input.png" align="center" width="8in" depth="7.5in" />
-
-         <para>
-             The Yocto Project has many layers that can be used.
-             You can see a web-interface listing of them on the
-             <ulink url="http://git.yoctoproject.org/">Source Repositories</ulink>
-             page.
-             The layers are shown at the bottom categorized under
-             "Yocto Metadata Layers."
-             These layers are fundamentally a subset of the
-             <ulink url="http://layers.openembedded.org/layerindex/layers/">OpenEmbedded Metadata Index</ulink>,
-             which shows all layers supported by OpenEmbedded.
-         </para>
-
-         <note>
-             Layers exist in the Yocto Project Source Repositories that cannot
-             be found in the OpenEmbedded Metadata Index.
-             These layers are either deprecated or experimental in nature.
-         </note>
-
-         <para>
-             BitBake uses the <filename>bblayers.conf</filename> file that is
-             part of the user configuration to find what layers it should be
-             using as part of the build.
-         </para>
-
-         <para>
-             For more information on layers, see the
-             "<ulink url='&YOCTO_DOCS_DEV_URL;#understanding-and-creating-layers'>Understanding and Creating Layers</ulink>"
-             section in the Yocto Project Development Manual.
-         </para>
-
-         <section id="software-layer">
-             <title>Software Layer</title>
-
-             <para>
-                 The software layer provides the Metadata for your source
-                 code used during the build.
-                 This general layer minimally contains license
-                 information; a <filename>README</filename> file; a layer
-                 configuration file named <filename>layer.conf</filename>;
-                 and recipe files (<filename>.bb</filename>), append files
-                 (<filename>.bbappend</filename>), and patches
-                 (<filename>.patch</filename>).
-             </para>
-
-             <para>
-                 You provide any new recipes that your project needs in the
-                 form of recipe files.
-                 If you are modifying any existing recipes from other layers,
-                 rather than duplicate them here with the modifcations, you can
-                 provide a recipe append file that just has the modifications.
-                 Patch files are stored in the <filename>files</filename>
-                 directory.
-             </para>
-         </section>
-
-         <section id="distro-layer">
-             <title>Distro Layer</title>
-
-             <para>
-                 The distribution layer provides policy configurations for your
-                 distribution.
-                 Best practices dictate that you isolate these types of
-                 configurations into their own layer.
-                 Metadata you provide in this layer overrides similar settings
-                 that BitBake finds in your <filename>local.conf</filename>
-                 file in the Build Directory.
-             </para>
-
-             <para>
-                 The following list provides some explanation and references
-                 for what you typically find in the distribution layer:
-                 <itemizedlist>
-                     <listitem><para><emphasis>classes:</emphasis>
-                         Class files (<filename>.bbclass</filename>) hold
-                         common functionality that can be shared among
-                         recipes in the distribution.
-                         When your recipes inherit a class, they take on the
-                         settings and functions for that class.
-                         You can read more about class files in the
-                         "<link linkend='ref-classes'>Classes</link>" section.
-                         </para></listitem>
-                     <listitem><para><emphasis>conf:</emphasis>
-                         This area holds configuration information for the
-                         distribution.
-                         Any distribution-wide include files and, of course, the
-                         <filename>layer.conf</filename> configuration
-                         file that every layer must have.</para></listitem>
-                     <listitem><para><emphasis>recipes-core:</emphasis>
-                         Recipes and append files that affect common
-                         functionality across the distribution.
-                         This area also can hold common distribution headers,
-                         initialization files, and
-                         <filename>defconfig</filename> files for the
-                         distribution.</para></listitem>
-                 </itemizedlist>
-             </para>
-         </section>
-
-         <section id="bsp-layer">
-             <title>BSP Layer</title>
-
-             <para>
-                 The BSP Layer provides machine configurations.
-                 Everything in this layer is specific to the machine for which
-                 you are building the image or the SDK.
-                 BSP Layer's have a structure that is followed if they are
-                 considered to be compatible with the Yocto Project.
-                 For information on the structure, see the
-                 <ulink url='&YOCTO_DOCS_BSP_URL;'>Yocto Project Board Support Package (BSP) Developer's Guide</ulink>.
-             </para>
-
-             <para>
-                 The BSP Layer contains a configuration directory that has
-                 configuration files for the machine
-                 (<filename>&lt;machine&gt;.conf</filename>) and, of course,
-                 the layer (<filename>layer.conf</filename>).
-             </para>
-
-             <para>
-                 The remainder of the layer is dedicated to specific recipes
-                 by function: bsp, core, graphics, and kernel.
-                 Metadata can exist for multiple formfactors, graphics
-                 support systems, and so forth.
-             </para>
-         </section>
+            (layers) boxes of the Yocto Project development environment:
+        </para>
+
+        <para>
+            <imagedata fileref="figures/layer-input.png" align="center" width="8in" depth="7.5in" />
+        </para>
+
+        <para>
+            In general, all layers have a similar structure.
+            They all contain a licensing file
+            (e.g. <filename>COPYING</filename>) if the layer is to be
+            distributed, a <filename>README</filename> file as good practice
+            and especially if the layer is to be distributed, a
+            configuration directory, and recipe directories.
+        </para>
+
+        <para>
+            The Yocto Project has many layers that can be used.
+            You can see a web-interface listing of them on the
+            <ulink url="http://git.yoctoproject.org/">Source Repositories</ulink>
+            page.
+            The layers are shown at the bottom categorized under
+            "Yocto Metadata Layers."
+            These layers are fundamentally a subset of the
+            <ulink url="http://layers.openembedded.org/layerindex/layers/">OpenEmbedded Metadata Index</ulink>,
+            which lists all layers provided by the OpenEmbedded community.
+            <note>
+                Layers exist in the Yocto Project Source Repositories that
+                cannot be found in the OpenEmbedded Metadata Index.
+                These layers are either deprecated or experimental in nature.
+            </note>
+        </para>
+
+        <para>
+            BitBake uses the <filename>conf/bblayers.conf</filename> file,
+            which is part of the user configuration, to find what layers it
+            should be using as part of the build.
+        </para>
+
+        <para>
+            For more information on layers, see the
+            "<ulink url='&YOCTO_DOCS_DEV_URL;#understanding-and-creating-layers'>Understanding and Creating Layers</ulink>"
+            section in the Yocto Project Development Manual.
+        </para>
+
+        <section id="distro-layer">
+            <title>Distro Layer</title>
+
+            <para>
+                The distribution layer provides policy configurations for your
+                distribution.
+                Best practices dictate that you isolate these types of
+                configurations into their own layer.
+                Settings you provide in
+                <filename>conf/&lt;distro&gt;.conf</filename> override similar
+                settings that BitBake finds in your
+                <filename>conf/local.conf</filename> file in the Build
+                Directory.
+            </para>
+
+            <para>
+                The following list provides some explanation and references
+                for what you typically find in the distribution layer:
+                <itemizedlist>
+                    <listitem><para><emphasis>classes:</emphasis>
+                        Class files (<filename>.bbclass</filename>) holds
+                        common functionality that can be shared among
+                        recipes in the distribution.
+                        When your recipes inherit a class, they take on the
+                        settings and functions for that class.
+                        You can read more about class files in the
+                        "<link linkend='ref-classes'>Classes</link>" section.
+                        </para></listitem>
+                    <listitem><para><emphasis>conf:</emphasis>
+                        This area holds configuration files for the
+                        layer (<filename>conf/layer.conf</filename>),
+                        the distribution
+                        (<filename>conf/distro/&lt;distro&lt;.conf</filename>),
+                        and any distribution-wide include files.
+                        </para></listitem>
+                    <listitem><para><emphasis>recipes-*:</emphasis>
+                        Recipes and append files that affect common
+                        functionality across the distribution.
+                        This area also can hold common distribution headers,
+                        initialization files, and
+                        <filename>&lt;recipe&gt;/files/defconfig</filename>
+                        files for the distribution.</para></listitem>
+                </itemizedlist>
+            </para>
+        </section>
+
+        <section id="bsp-layer">
+            <title>BSP Layer</title>
+
+            <para>
+                The BSP Layer provides machine configurations.
+                Everything in this layer is specific to the machine for which
+                you are building the image or the SDK.
+                BSP Layers have a structure that is followed if they are
+                considered to be compatible with the Yocto Project.
+                For information on the structure, see the
+                <ulink url='&YOCTO_DOCS_BSP_URL;'>Yocto Project Board Support Package (BSP) Developer's Guide</ulink>.
+            </para>
+
+            <para>
+                The BSP Layer's configuration directory contains
+                configuration files for the machine
+                (<filename>conf/machine/&lt;machine&gt;.conf</filename>) and,
+                of course, the layer (<filename>conf/layer.conf</filename>).
+            </para>
+
+            <para>
+                The remainder of the layer is dedicated to specific recipes
+                by function: <filename>recipes-bsp</filename>,
+                <filename>recipes-core</filename>,
+                <filename>recipes-graphics</filename>, and
+                <filename>recipes-kernel</filename>.
+                Metadata can exist for multiple formfactors, graphics
+                support systems, and so forth.
+                <note>
+                    While the figure shows several <filename>recipe-*</filename>
+                    directories, not all these directories appear in all
+                    BSP layers.
+                </note>
+            </para>
+        </section>
+
+        <section id="software-layer">
+            <title>Software Layer</title>
+
+            <para>
+                The software layer provides the Metadata for your source
+                code used during the build.
+                This layer does not include Metadata that is specific to the
+                distribution or the machine, which are found in their
+                respective layers.
+            </para>
+
+            <para>
+                This layer contains any new recipes that your project needs
+                in the form of recipe files.
+                Patch files are stored in the <filename>files</filename>
+                directory.
+            </para>
+        </section>
     </section>
 </section>
 
-- 
1.7.9.5


