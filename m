Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D13AF4C811DB
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 13:10:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 11:10:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="684834919"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 11:10:27 -0800
Message-Id: <257903cafa6b5077cb51e04d27ff3f4fbb4f2094.1291748065.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1291748065.git.scott.m.rifenbark@intel.com>
References: <cover.1291748065.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 3 Dec 2010 07:32:13 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/3] documentation/kernel-manual: Added Bruce Ashfields review comments.
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
X-List-Received-Date: Tue, 07 Dec 2010 19:10:52 -0000

Comments covered some minor points.  We did remove the "Creating
a Transition Kernel Layer" section however.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-concepts.xml  |   28 ++++++++++++------
 documentation/kernel-manual/kernel-doc-intro.xml |    2 +-
 documentation/kernel-manual/kernel-how-to.xml    |   33 ++++++++++-----------
 3 files changed, 35 insertions(+), 28 deletions(-)

diff --git a/documentation/kernel-manual/kernel-concepts.xml b/documentation/kernel-manual/kernel-concepts.xml
index 872264c..d2ebab0 100644
--- a/documentation/kernel-manual/kernel-concepts.xml
+++ b/documentation/kernel-manual/kernel-concepts.xml
@@ -43,7 +43,7 @@
             <listitem><para>Provide mechanisms that support many different work flows, front-ends and 
             management techniques.</para></listitem>
             <listitem><para>Deliver the most up-to-date kernel possible while still ensuring that 
-            the baseline kernel is the the most stable official release.</para></listitem>
+            the baseline kernel is the most stable official release.</para></listitem>
             <listitem><para>Include major technological features as part of Yocto Project's up-rev 
             strategy.</para></listitem>
             <listitem><para>Present a git tree, that just like the upstream kernel.org tree, has a 
@@ -80,9 +80,10 @@
         <para>
             The ultimate source for the Yocto Project kernel is a released kernel 
             from kernel.org.
-            In addition to a foundational kernel from kernel.org the commercially released 
+            In addition to a foundational kernel from kernel.org the released 
             Yocto Project kernel contains a mix of important new mainline
-            developments, non-mainline developments, Board Support Package (BSP) developments,
+            developments, non-mainline developments (when there is no alternative),
+            Board Support Package (BSP) developments,
             and custom features.
             These additions result in a commercially released Yocto Project kernel that caters 
             to specific embedded designer needs for targeted hardware.
@@ -105,7 +106,8 @@
         </para> -->
         <para>
             Once a Yocto Project kernel is officially released the Yocto Project team goes into 
-            their next development cycle, or "uprev" cycle.
+            their next development cycle, or "uprev" cycle while continuing maintenance on the 
+            released kernel.
             It is important to note that the most sustainable and stable way
             to include feature development upstream is through a kernel uprev process.
             Back-porting of hundreds of individual fixes and minor features from various
@@ -143,8 +145,8 @@
             This kernel gives insight into new features and allows focused
             amounts of testing to be done on the kernel, which prevents
             surprises when selecting the next major uprev. 
-            The quality of these cutting edge kernels is evolving and the kernels are used in very special 
-            cases for BSP and feature development.
+            The quality of these cutting edge kernels is evolving and the kernels are used in leading edge 
+            feature and BSP development.
         </para>
     </section>
 
@@ -199,7 +201,8 @@
                 Each branch represents some unique functionality for the BSP or a real-time kernel.
             </para>
             <para>
-                The real-time kernel branch has common features for all real-time kernels and contains
+                In this example structure, the real-time kernel branch has common features for all 
+                real-time kernels and contains
                 more branches for individual BSP-specific real-time kernels.  
                 The illustration shows three branches as an example. 
                 Each branch points the way to specific, unique features for a respective real-time
@@ -226,6 +229,11 @@
                 Rather we store the unique differences required to apply the feature onto the kernel type 
                 in question.
             </para>
+            <note><para>
+                This practice is not typically encouraged.
+                However, during development cycles or when large features are merged the practice
+                can't be avoided.
+            </para></note>
             <para>
                 BSP-specific code additions are handled in a similar manner to kernel-specific additions. 
                 Some BSPs only make sense given certain kernel types.
@@ -238,13 +246,13 @@
                 the supported multiple kernels are uniquely stored.
             </para>
             <para>
-                While this strategy results in a tree with a significant number of branches, it is
-                important to realize that from the customer's point of view, there is a linear
+                While this strategy can result in a tree with a significant number of branches, it is
+                important to realize that from the user's point of view, there is a linear
                 path that travels from the baseline kernel.org, through a select group of features and
                 ends with their BSP-specific commits.
                 In other words, the divisions of the kernel are transparent and are not relevant 
                 to the developer on a day-to-day basis.  
-                From the customer's perspective, this is the "master" branch.
+                From the user's perspective, this is the "master" branch.
                 They do not need not be aware of the existence of any other branches at all.  
                 Of course there is value in the existence of these branches
                 in the tree, should a person decide to explore them. 
diff --git a/documentation/kernel-manual/kernel-doc-intro.xml b/documentation/kernel-manual/kernel-doc-intro.xml
index c9715d4..05e5443 100644
--- a/documentation/kernel-manual/kernel-doc-intro.xml
+++ b/documentation/kernel-manual/kernel-doc-intro.xml
@@ -8,7 +8,7 @@
 <section id='book-intro'>
     <title>Introduction</title>
     <para>
-        Yocto Project presents the kernel as a fully patched, history-clean git
+        The Yocto Project presents the kernel as a fully patched, history-clean git
         repository. 
         The git tree represents the selected features, board support,
         and configurations extensively tested by Yocto Project. 
diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 25b4282..85bd8f8 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -42,7 +42,7 @@
         <para>
             You can find the files used to describe all the valid features and BSPs in the Yocto Project
             kernel in any clone of the kernel git tree.  
-            The directory <filename>wrs/cfg/kernel-cache/</filename> is a snapshot of all the kernel
+            The directory <filename>meta/cfg/kernel-cache/</filename> is a snapshot of all the kernel
             configuration and feature descriptions (.scc) used to build the kernel repository.
             You should realize, however, that browsing the snapshot of feature
             descriptions and patches is not an effective way to determine what is in a
@@ -56,8 +56,8 @@
         <note><para>
             Ground up reconstruction of the complete kernel tree is an action only taken by the 
             Yocto Project team during an active development cycle.  
-            Creating a project takes advantage of this complete tree in order to 
-            place efficiently a git tree within the project.
+            Creating a project simply clones this tree to make it efficiently available for building
+            and development.
         </para></note>
         <para>
             The general flow for constructing a project-specific kernel tree is as follows:
@@ -69,8 +69,7 @@
             these system directories:</para>
 
                 <itemizedlist>
-                    <listitem><para>The kernel-cache under 
-                    <filename>linux/wrs/cfg/kernel-cache</filename></para></listitem>
+                    <listitem><para>The in-tree kernel-cache directories</para></listitem>
 <!--            <listitem><para>kernel-*-cache directories in layers</para></listitem> -->
                     <listitem><para>Recipe SRC_URIs</para></listitem>
 <!--            <listitem><para>configured and default templates</para></listitem> -->
@@ -93,7 +92,7 @@
             <listitem><para>The script is executed, and a meta-series is produced. 
             The meta-series is a description of all the branches, tags, patches and configuration that
             needs to be applied to the base git repository to completely create the
-            "bsp_name-kernel_type".</para></listitem>
+            BSP source (build) branch.</para></listitem>
 
             <listitem><para>The base repository is cloned, and the actions
             listed in the meta-series are applied to the tree.</para></listitem>
@@ -111,7 +110,7 @@
             the Yocto Project release. 
             Any add-ons and configuration data are applied to the end of an existing branch. 
             The full repository generation that is found in the 
-            <filename>linux-2.6-windriver.git</filename> is the combination of all
+            official Yocto Project kernel repositories is the combination of all
             supported boards and configurations.</para>
   
             <para>This technique is flexible and allows the seamless blending of an immutable
@@ -155,7 +154,8 @@ A summary of end user tree construction activities follow:
 
         <itemizedlist>
             <listitem><para>There must be a kernel git repository indicated in the SRC_URI.</para></listitem>
-            <listitem><para>There must be a branch &lt;bsp name&gt;-&lt;kernel type&gt;.</para></listitem>
+            <listitem><para>There must be a BSP build branch - &lt;bsp name&gt;-&lt;kernel type&gt; in 0.9 or 
+            &lt;kernel type&gt;/&lt;bsp name&gt; in 1.0.</para></listitem>
         </itemizedlist>
 
         <para>
@@ -368,8 +368,7 @@ repository.
         <title>Workflow Examples</title>
 
         <para>
-            As previously noted, the Yocto Project kernel has built in git/guilt
-            integration.
+            As previously noted, the Yocto Project kernel has built in git integration.
             However, these utilities are not the only way to work with the kernel repository.
             Yocto Project has not made changes to git or to other tools that
             would invalidate alternate workflows. 
@@ -468,7 +467,7 @@ repository.
      # determine which branches contain a feature
      &gt; git branch --contains &lt;tag&gt;
 
-     # show the changes in a kernel type
+     # show the changes in a kernel type - (0.9 examples)
      &gt; git whatchanged wrs_base..&lt;kernel type&gt;
         &gt; eg: git whatchanged wrs_base..standard
                 </literallayout>
@@ -652,7 +651,7 @@ repository.
                 </para>
 
                 <note><para>
-                    It is recommend to tag or branch before adding changes to a Yocto Project
+                    It is recommended to tag or branch before adding changes to a Yocto Project
                     BSP or before creating a new one.
                     The reason for this recommendation is because the branch or tag provides a
                     reference point to facilitate locating and exporting local changes.
@@ -1150,7 +1149,7 @@ That's it. Configure and build.
                 <para>
                     You could also add these directly to the git repository <filename>wrs_meta</filename>
                     branch as well.
-                    However, the former method is probably easier.
+                    However, the former method is a simple starting point.
                 </para></listitem>
                 
                 <listitem><para>
@@ -1171,7 +1170,7 @@ That's it. Configure and build.
                     Then, modify the code there, using quilt to save the changes, and recompile until 
                     it works:
                     <literallayout class='monospaced'>
-     $ bitbake -c compile -f
+     $ bitbake -c compile -f linux-yocto
                     </literallayout>
                 </para></listitem>
                 
@@ -1925,7 +1924,7 @@ This section shows an example of transforms:
             </para>
         </section>
 
-        <section id='kernel-transition-kernel-layer'>
+<!--        <section id='kernel-transition-kernel-layer'>
             <title>Creating a Transition Kernel Layer</title>
 
             <para>
@@ -1947,7 +1946,7 @@ This section shows an example of transforms:
                 Once you have the transition kernel layer in place you can evaluate
                 another kernel's functionality with the goal of easing transition to an integrated and validated
                 Yocto Project kernel.
-            </para>
+            </para> -->
 
 <!--<para>
 The next few sections describe the process:
@@ -2078,7 +2077,7 @@ files in the kernel-cache with valid hardware and non hardware config
 options.
 </para></note>
             </section> -->
-        </section>
+<!--        </section> -->
     </section>
 
 
-- 
1.7.0.4


