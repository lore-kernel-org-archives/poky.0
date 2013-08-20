Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EA4EE014E4
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:41:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="365375098"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 01:41:01 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 744CA6A4007;
	Tue, 20 Aug 2013 01:40:58 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:21 +0200
Message-Id: <cb66b6e1a28ae20261ea2d02c638b0a8590ab8b2.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 039/186] ref-manual: Review comments added.
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
X-List-Received-Date: Tue, 20 Aug 2013 08:41:23 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Fixes [YOCTO #2808]

Applied review comments from Paul Eggleton on the user configuration
and the layers section.  Changes applied to the figure for the
user configuration section as well.

(From yocto-docs rev: b05af4b740f0daf3d6c59acf71c362decba2a176)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../ref-manual/figures/user-configuration.png      |  Bin 24982 -> 24734 bytes
 documentation/ref-manual/technical-details.xml     |   48 ++++++++++++--------
 2 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/documentation/ref-manual/figures/user-configuration.png b/documentation/ref-manual/figures/user-configuration.png
index 5f49e2fccffb703246ae4711d998597de8b1b449..b9425a9e50e59da1ac674ce757f2f6d92d84576c 100644
GIT binary patch
literal 24734
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
I3L5*r0PvjhNdN!<

literal 24982
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
Y!$>}SC4UUQOMyU1PE9uNjw$y404L*`K>z>%

diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index 77c1ba8..f35b296 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -184,13 +184,19 @@
             <listitem><para><emphasis>Source Files:</emphasis>
                 Upstream releases, local projects, and SCMs.</para></listitem>
             <listitem><para><emphasis>Build System:</emphasis>
-                Processes inside the BitBake "box".
+                Processes under the control of BitBake.
                 This block expands on how BitBake fetches source, applies
                 patches, completes compilation, analyzes output for package
                 generation, creates and tests packages, generates images, and
                 generates cross-development tools.</para></listitem>
             <listitem><para><emphasis>Package Feeds:</emphasis>
-                Package feeds into the BitBake process.</para></listitem>
+                Directories containing output packages (rpm, deb or ipk),
+                which are subsequently used in the construction of an image or
+                SDK, produced by the build system.
+                These feeds can also be copied and shared using a web server or
+                other means to facilitate extending or updating existing
+                images on devices at runtime if runtime package management is
+                enabled.</para></listitem>
             <listitem><para><emphasis>Images:</emphasis>
                 Images produced by the development process.
                 Where do they go?
@@ -269,12 +275,11 @@
         <para>
             Because the Poky repository is fundamentally an aggregation of
             existing repositories, some users might be familiar with running
-            the <filename>oe-init-build-env</filename> script in the context
-            of the OpenEmbedded development environment, which is outside
-            of the Yocto Project development environment.
-            This discussion assumes the script is executed from within a
-            cloned or unpacked version of Poky (i.e. within the Yocto Project
-            environment).
+            the <filename>oe-init-build-env</filename> script in the context of
+            separate OpenEmbedded-Core and BitBake repositories rather than a
+            single Poky repository.
+            This discussion assumes the script is executed from within a cloned
+            or unpacked version of Poky.
         </para>
 
         <para>
@@ -514,16 +519,16 @@
                         This area holds configuration files for the
                         layer (<filename>conf/layer.conf</filename>),
                         the distribution
-                        (<filename>conf/distro/&lt;distro&lt;.conf</filename>),
+                        (<filename>conf/distro/&lt;distro&gt;.conf</filename>),
                         and any distribution-wide include files.
                         </para></listitem>
                     <listitem><para><emphasis>recipes-*:</emphasis>
                         Recipes and append files that affect common
                         functionality across the distribution.
-                        This area also can hold common distribution headers,
-                        initialization files, and
-                        <filename>&lt;recipe&gt;/files/defconfig</filename>
-                        files for the distribution.</para></listitem>
+                        This area could include recipes and append files to
+                        to add distribution-specific configuration,
+                        initialization scripts, custom image recipes,
+                        and so forth.</para></listitem>
                 </itemizedlist>
             </para>
         </section>
@@ -535,10 +540,13 @@
                 The BSP Layer provides machine configurations.
                 Everything in this layer is specific to the machine for which
                 you are building the image or the SDK.
-                BSP Layers have a structure that is followed if they are
-                considered to be compatible with the Yocto Project.
-                For information on the structure, see the
+                A common structure or form is defined for BSP layers.
+                You can learn more about this structure in the
                 <ulink url='&YOCTO_DOCS_BSP_URL;'>Yocto Project Board Support Package (BSP) Developer's Guide</ulink>.
+                <note>
+                    In order for a BSP layer to be considered compliant with the
+                    Yocto Project, it must meet some structural requirements.
+                </note>
             </para>
 
             <para>
@@ -568,8 +576,8 @@
             <title>Software Layer</title>
 
             <para>
-                The software layer provides the Metadata for your source
-                code used during the build.
+                The software layer provides the Metadata for your
+                software packages used during the build.
                 This layer does not include Metadata that is specific to the
                 distribution or the machine, which are found in their
                 respective layers.
@@ -578,8 +586,8 @@
             <para>
                 This layer contains any new recipes that your project needs
                 in the form of recipe files.
-                Patch files are stored in the <filename>files</filename>
-                directory.
+                If the software layer contains any patch files, they can be
+                stored in a <filename>files</filename> directory.
             </para>
         </section>
     </section>
-- 
1.7.9.5


