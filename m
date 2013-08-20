Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A4ADE014E4
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:40:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814962"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:40:45 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 819816A4007;
	Tue, 20 Aug 2013 01:40:43 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:13 +0200
Message-Id: <95cdad1c2edd8f4698a245ad88e2bccb0cf93e6d.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 031/186] ref-manual: Start of new section on deeper look into dev env.
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:47 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Start of the new section on the closer look into the development
environment.

(From yocto-docs rev: e1f1cee951433144d1adedcb4f0bbc8d8296c444)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/ref-manual/technical-details.xml |  210 ++++++++++++++++++++++++
 1 file changed, 210 insertions(+)

diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index 17f96b5..583d204 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -153,6 +153,216 @@
     </section>
 </section>
 
+<section id="a-closer-look-at-the-yocto-project-development-environment">
+    <title>A Closer Look at the Yocto Project Development Environment</title>
+
+    <para>
+        This section is a work-in-progress for an expanded discussion of the
+        Yocto Project Development Environment.
+        The section is rooted in the figure found in the
+        "<ulink url='&YOCTO_DOCS_QS_URL;#yp-intro'>Introducing the Yocto Project Development Environment</ulink>"
+        section of the Yocto Project Quick Start.
+        This expanded discussion presents a deeper level of detail regarding
+        sources of input, generated output, and controlling
+        <ulink url='&YOCTO_DOCS_DEV_URL;#metadata'>Metadata</ulink>.
+    </para>
+
+    <para>
+        I will either replicate the exact figure from the YP Quick Start here
+        or I will create a more simplified version that can be used as the
+        top-level diagram from which to base subsequent sections and expanded
+        illustrations.
+    </para>
+
+    <para>
+        [NEED REPEATED FIGURE HERE OR A NEW FIGURE]
+    </para>
+
+    <para>
+        This paragraph will introduce the main blocks of the preceding figure
+        to overview and organize the remainder of the section:
+        <itemizedlist>
+            <listitem><para><emphasis>User Configuration:</emphasis>
+                Methods by with the user can directly control the build
+                process.</para></listitem>
+            <listitem><para><emphasis>Metadata Layers:</emphasis>
+                Various layers that provide software, machine, and
+                distro Metadata.</para></listitem>
+            <listitem><para><emphasis>Soure Files:</emphasis>
+                Upstream releases, local projects, and SCMs.</para></listitem>
+            <listitem><para><emphasis>Build System:</emphasis>
+                Processes inside the BitBake "box".
+                This block expands on how BitBake fetches source, applies
+                patches, completes compilation, analyzes output for package
+                generation, creates and tests packages, generates images, and
+                generates cross-development tools.</para></listitem>
+            <listitem><para><emphasis>Package Feeds</emphasis>
+                Package feeds into the BitBake process.</para></listitem>
+            <listitem><para><emphasis>Images</emphasis>
+                Images produced by the development process.
+                Where do they go?
+                Can you mess with them (i.e. freely delete them or move them?).
+                </para></listitem>
+            <listitem><para><emphasis>Application Development SDK</emphasis>
+                Cross-development tools that are produced along with an image
+                or separately with BitBake.</para></listitem>
+        </itemizedlist>
+    </para>
+
+    <section id="user-configuration">
+        <title>User Configuration</title>
+
+        <para>
+            User configuration affects how you define the build.
+            The following figure shows an expanded representation of the
+            user configuration in the Yocto Project development environment:
+        </para>
+
+        <mediaobject>
+            <imageobject>
+                <imagedata fileref="figures/user-configuration.png"
+                    format="PNG" align='center' scalefit='1' width="100%"/>
+            </imageobject>
+         </mediaobject>
+
+         <para>
+             BitBake needs some basic configuration files in order to complete
+             a build.
+             These files are <filename>*.conf</filename> files and the
+             minimally necessary ones reside as example files in the
+             <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
+             For simplicity, this section refers to the Source Directory as
+             the "Poky Directory."
+             <note>
+                 Poky is primarily an aggregation of existing repositories and
+                 is not actual canonical upstream source for anything.
+             </note>
+             When you clone the <filename>poky</filename> Git repository or you
+             download and unpack a Yocto Project release, you can set up the
+             Source Directory to be named anything you want.
+             Here, though, we will assume that you have a cloned repository that
+             has the default name <filename>poky</filename>.
+         </para>
+
+         <para>
+             The <filename>meta-yocto</filename> layer inside Poky contains
+             a <filename>conf</filename> directory that has example
+             configuration files.
+             These example files are used as a basis for creating actual
+             configuration files when you source the build environment
+             script <filename>oe-init-build-env</filename>.
+             <note>
+                 The <filename>oe-init-build-env</filename> script also exists
+                 in the <filename>meta</filename> directory of the OE-Core
+                 root directory.
+                 Both scripts look for sample configuration files through
+                 a <filename>$TEMPLATECONF</filename> variable.
+                 When using the Yocto Project Development Environment,
+                 that location resolves to the samples found in the
+                 <filename>poky/meta-yocto/conf</filename> directory.
+             </note>
+         </para>
+
+         <para>
+             When you source the build environment script, it creates a
+             <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
+             that BitBake uses as the area in which it does all its work
+             during builds.
+             The Build Directory has a <filename>conf</filename> directory that
+             contains default versions of your <filename>local.conf</filename>
+             and <filename>bblayers.conf</filename> configuration files.
+             These default configuration files are created by
+             <filename>oe-init-build-env</filename> only if versions of these
+             files do not already exist in the Build Directory you specify
+             when you run the script.
+         </para>
+
+         <para>
+             The <filename>local.conf</filename> file provides many
+             basic variables that define your build.
+             Here is a list of a few.
+             To see the default configurations in a <filename>local.conf</filename>
+             file created by the build environment script, see the
+             <filename>local.conf.sample</filename> in the
+             <filename>meta-yocto</filename> layer:
+             <itemizedlist>
+                 <listitem><para><emphasis>Parallelism Options:</emphasis>
+                     Controlled by the
+                     <link linkend='var-BB_NUMBER_THREADS'><filename>BB_NUMBER_THREADS</filename></link>
+                     and
+                     <link linkend='var-PARALLEL_MAKE'><filename>PARALLEL_MAKE</filename></link>
+                     variables.</para></listitem>
+                 <listitem><para><emphasis>Target Machine Selection:</emphasis>
+                     Controlled by the
+                     <link linkend='var-MACHINE'><filename>MACHINE</filename></link>
+                     variable.</para></listitem>
+                 <listitem><para><emphasis>Download Directory:</emphasis>
+                     Controlled by the
+                     <link linkend='var-DL_DIR'><filename>DL_DIR</filename></link>
+                     variable.</para></listitem>
+                 <listitem><para><emphasis>Shared State Directory:</emphasis>
+                     Controlled by the
+                     <link linkend='var-SSTATE_DIR'><filename>SSTATE_DIR</filename></link>
+                     variable.</para></listitem>
+                 <listitem><para><emphasis>Build Output:</emphasis>
+                     Controlled by the
+                     <link linkend='var-TMPDIR'><filename>TMPDIR</filename></link>
+                     variable.</para></listitem>
+             </itemizedlist>
+         </para>
+
+         <para>
+             The <filename>bblayers.conf</filename> file tells BitBake what
+             layers you want it to consider during the build.
+             The list of layers includes default layers needed by the build
+             system.
+             You have to manually add any custom layers that you have created.
+             You can find more information on working with the
+             <filename>bblayers.conf</filename> file in the
+             "<ulink url='&YOCTO_DOCS_DEV_URL;#enabling-your-layer'>Enabling Your Layer</ulink>"
+             section in the Yocto Project Development Manual.
+         </para>
+
+         <para>
+             The files <filename>site.conf</filename> and
+             <filename>auto.conf</filename> are not created by the environment
+             initialization script.
+             If you want these configuration files, you must create them
+             yourself.
+             Here a bit about what these files do:
+             <itemizedlist>
+                 <listitem><para><emphasis><filename>site.conf</filename>:</emphasis>
+                     I don't really know what this does.
+                     All I know is that if you want it, you need to hand-create
+                     it.
+                     I need some information on it.</para></listitem>
+                 <listitem><para><emphasis><filename>auto.conf</filename>:</emphasis>
+                     This file is not hand-created.
+                     Rather, the file is usually created and written to by
+                     an autobuilder.
+                     The settings put into the file are typically the same as
+                     you would find in the <filename>local.conf</filename>
+                     or <filename>site.conf</filename> files.
+                     </para></listitem>
+             </itemizedlist>
+         </para>
+
+         <para>
+             All configuration files can undergo edits to further define
+             the build.
+             This process is represented by the "User Configuration Edits"
+             box in the figure.
+         </para>
+
+         <para>
+             When you launch your build with the
+             <filename>bitbake &lt;target&gt;</filename> command, BitBake
+             draws on the user configurations you have provided in your
+             Build Directory.
+         </para>
+    </section>
+</section>
+
 <section id="cross-development-toolchain-generation">
     <title>Cross-Development Toolchain Generation</title>
 
-- 
1.7.9.5


