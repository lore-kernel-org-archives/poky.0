Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C6974C80655
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 00:50:22 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2011 22:50:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,314,1297065600"; d="scan'208";a="896923129"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2011 22:50:21 -0700
Message-Id: <b3358d9bde3fd31dbca76323337d248dacce8c5b.1300081427.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1300081427.git.tom.zanussi@intel.com>
References: <cover.1300081427.git.tom.zanussi@intel.com>
Old-Date: Mon, 14 Mar 2011 00:36:28 -0500
Date: Mon, 14 Mar 2011  0:50:19 -0500
To: poky@yoctoproject.org, dvhart@linux.intel.com, bruce.ashfield@windriver.com,
	bruce.ashfield@gmail.com
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/2] documentation: Kernel Manual fixes
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
X-List-Received-Date: Mon, 14 Mar 2011 05:50:22 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Upgraded to reflect 1.0 usage rather than 0.90 usage, and some other
clarifications and minor changes.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |  120 +++++++++++++------------
 1 files changed, 61 insertions(+), 59 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index abb19f2..fdfda40 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -425,18 +425,18 @@ repository.
 
                 <literallayout class='monospaced'>
      # full description of the changes
-     &gt; git whatchanged &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
-        &gt; eg: git whatchanged standard..common_pc-standard
+     &gt; git whatchanged &lt;kernel type&gt;..&lt;kernel type&gt;/&lt;bsp&gt;
+        &gt; eg: git whatchanged yocto/standard/base..yocto/standard/common-pc/base
 
      # summary of the changes
-     &gt; git log --pretty=oneline --abbrev-commit &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
+     &gt; git log --pretty=oneline --abbrev-commit &lt;kernel type&gt;..&lt;kernel type&gt;/&lt;bsp&gt;
 
      # source code changes (one combined diff)
-     &gt; git diff &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
-     &gt; git show &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
+     &gt; git diff &lt;kernel type&gt;..&lt;kernel type&gt;/&lt;bsp&gt;
+     &gt; git show &lt;kernel type&gt;..&lt;kernel type&gt;/&lt;bsp&gt;
 
      # dump individual patches per commit
-     &gt; git format-patch -o &lt;dir&gt; &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
+     &gt; git format-patch -o &lt;dir&gt; &lt;kernel type&gt;..&lt;kernel type&gt;/&lt;bsp&gt;
 
      # determine the change history of a particular file
      &gt; git whatchanged &lt;path to file&gt;
@@ -467,9 +467,9 @@ repository.
      # determine which branches contain a feature
      &gt; git branch --contains &lt;tag&gt;
 
-     # show the changes in a kernel type - (0.9 examples)
-     &gt; git whatchanged wrs_base..&lt;kernel type&gt;
-        &gt; eg: git whatchanged wrs_base..standard
+     # show the changes in a kernel type
+     &gt; git whatchanged yocto/base..&lt;kernel type&gt;
+        &gt; eg: git whatchanged yocto/base..yocto/standard/base
                 </literallayout>
 
                 <para>
@@ -733,10 +733,10 @@ repository.
 
                     <para>
                         For example, the following command pushes the changes from your local branch
-                        <filename>common_pc-standard</filename> to the remote branch with the same name 
-                        in the master repository <filename>//git.mycompany.com/pub/git/kernel-2.6.27</filename>.
+                        <filename>yocto/standard/common-pc/base</filename> to the remote branch with the same name 
+                        in the master repository <filename>//git.mycompany.com/pub/git/kernel-2.6.37</filename>.
                     <literallayout class='monospaced'>
-     &gt; push ssh://git.mycompany.com/pub/git/kernel-2.6.27 common_pc-standard:common_pc-standard
+     &gt; push ssh://git.mycompany.com/pub/git/kernel-2.6.37 yocto/standard/common-pc/base:yocto/standard/common-pc/base
                     </literallayout>
                     </para>
 
@@ -866,9 +866,9 @@ repository.
 
                 <para>
                     The following commands illustrate some of the steps you could use to
-                    import the common_pc-standard kernel into a secondary SCM:
+                    import the yocto/standard/common-pc/base kernel into a secondary SCM:
                 <literallayout class='monospaced'>
-     &gt; git checkout common_pc-standard
+     &gt; git checkout yocto/standard/common-pc/base
      &gt; cd .. ; echo linux/.git &gt; .cvsignore
      &gt; cvs import -m "initial import" linux MY_COMPANY start
                 </literallayout>
@@ -881,8 +881,8 @@ repository.
                 <para>
                     The following commands illustrate how you can condense and merge two BSPs into a second SCM:
                 <literallayout class='monospaced'>
-     &gt; git checkout common_pc-standard
-     &gt; git merge common_pc_64-standard
+     &gt; git checkout yocto/standard/common-pc/base
+     &gt; git merge yocto/standard/common-pc-64/base
      # resolve any conflicts and commit them
      &gt; cd .. ; echo linux/.git &gt; .cvsignore
      &gt; cvs import -m "initial import" linux MY_COMPANY start
@@ -1006,9 +1006,12 @@ That's it. Configure and build.
             <title>Creating a BSP Based on an Existing Similar BSP</title>
 
             <para>
-                This section provides an example for creating a BSP that is based on an existing, and hopefully, 
-                similar one.  
-                Follow these steps and keep in mind your particular situation and differences:
+                This section provides an example for creating a BSP
+                that is based on an existing, and hopefully, similar
+                one.  It assumes you'll be using a local kernel
+                repository and will be pointing the kernel recipe at
+                that.  Follow these steps and keep in mind your
+                particular situation and differences:
 
             <orderedlist>
                 <listitem><para>
@@ -1016,16 +1019,10 @@ That's it. Configure and build.
                 </para>
                 
                 <para>
-                    You can start with something in <filename>meta/conf/machine</filename>.  
-                    Or, <filename>meta-emenlow/conf/machine</filename> has an example in its own layer.
+                    You can start with something in <filename>meta/conf/machine</filename> - <filename>meta/conf/machine/atom-pc.conf</filename> for example.  Or, you can start with a machine configuration from any of the BSP layers in the meta-intel repository at <ulink url='http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/'></ulink>, such as <filename>meta-intel/meta-emenlow/conf/machine/emenlow.conf</filename>.
                 </para>
                 
                 <para>
-                    The most up-to-date machines that are probably most similar to yours and that you might want 
-                    to look at are <filename>meta/conf/machine/atom-pc.conf</filename> and 
-                    <filename>meta-emenlow/conf/machine/emenlow.conf</filename>.  
-                    Both of these files were either just added or upgraded to use the Yocto Project kernel 
-                    at <ulink url='http://git.pokylinux.org/cgit/cgit.cgi/linux-2.6-windriver/'></ulink>.
                     The main difference between the two is that "emenlow" is in its own layer.
                     It is in its own layer because it needs extra machine-specific packages such as its 
                     own video driver and other supporting packages.  
@@ -1049,19 +1046,21 @@ That's it. Configure and build.
                 <para>
                     As an example consider this:
                     <itemizedlist>
-                        <listitem><para>Copy meta-emenlow</para></listitem>
+                        <listitem><para>Copy meta-emenlow to meta-mymachine</para></listitem>
                         <listitem><para>Fix or remove anything you do not need.  
                         For this example the only thing left was the kernel directory with a 
-                        <filename>linux-yocto-stable_git.bbappend</filename> file 
-                        (linux-yocto-stable is the kernel listed in 
-                        <filename>meta-crownbay/conf/machine/crownbay.conf</filename></para></listitem>.
+                        <filename>linux-yocto_git.bbappend</filename>
+                        file
+                        and <filename>meta-mymachine/conf/machine/mymachine.conf</filename>
+                        (linux-yocto is the kernel listed in
+                        <filename>meta-emenlow/conf/machine/emenlow.conf</filename>)</para></listitem>.
                         <listitem><para>Add a new entry in the <filename>build/conf/bblayers.conf</filename> 
                         so the new layer can be found by Bitbake.</para></listitem>
                     </itemizedlist>
                 </para></listitem>
                 
                 <listitem><para>
-                    Get an image with a working kernel built.
+                    Create a machine branch for your machine.
                 </para>
 
                 <para>
@@ -1070,58 +1069,52 @@ That's it. Configure and build.
                     To create this branch first create a bare clone of the Yocto Project git repository.
                     Next, create a local clone of that:
                     <literallayout class='monospaced'>
-     $ git clone --bare git://git.pokylinux.org/linux-2.6-windriver.git
-     linux-2.6-windriver.git
-     $ git clone linux-2.6-windriver.git linux-2.6-windriver
+     $ git clone --bare git://git.pokylinux.org/linux-yocto-2.6.37.git
+     linux-yocto-2.6.37.git
+     $ git clone linux-yocto-2.6.37.git linux-yocto-2.6.37
                     </literallayout>
                 </para>
                 
                 <para>
                     Now create a branch in the local clone and push it to the bare clone:
                     <literallayout class='monospaced'>
-     $ git checkout -b crownbay-standard origin/standard 
-     $ git push origin crownbay-standard:crownbay-standard
+     $ git checkout -b yocto/standard/mymachine origin/yocto/standard/base
+     $ git push origin yocto/standard/mymachine:yocto/standard/mymachine
                     </literallayout>
-                </para>
-               
-                <para>
-                    At this point, your git tree should compile.
                 </para></listitem>
-                
+               
                 <listitem><para>
-                    In a layer, create a <filename>linux-yocto-stable_git.bbappend</filename> 
+                    In a layer, create a <filename>linux-yocto_git.bbappend</filename> 
                     file with the following:
                 </para>       
                 
                 <para>
                     <literallayout class='monospaced'>
-     COMPATIBLE_MACHINE = ${MACHINE}
+     FILESEXTRAPATHS := "${THISDIR}/${PN}"
+     COMPATIBLE_MACHINE_mymachine = "mymachine"
 
      # It is often nice to have a local clone of the kernel repository, to
      # allow patches to be staged, branches created, and so forth.  Modify
      # KSRC to point to your local clone as appropriate.
 
-     # KSRC ?= /path/to/your/bare/clone/yocto-kernel
+     KSRC ?= /path/to/your/bare/clone/for/example/linux-yocto-2.6.37.git
 
-     # KMACHINE is the branch to be built, or alternateively 
+     # KMACHINE is the branch to be built, or alternatively 
      # KBRANCH can be directly set.
+     # KBRANCH is set to KMACHINE in the main linux-yocto_git.bb
+     # KBRANCH ?= "${LINUX_KERNEL_TYPE}/${KMACHINE}"
 
-     # KBRANCH ?= "${KMACHINE}-${LINUX_KERNEL_TYPE}"
+     KMACHINE_mymachine  = "yocto/standard/mymachine"
 
-     # SRC_URI = "git://${KSRC};nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+     SRC_URI = "git://${KSRC};nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
                     </literallayout>
                 </para>
 
                 <para>
-                    In the previous sample file you need to update and remove the comment from 
-                    the KSRC assignment and also remove the comment from the SRC_URI line.
-                </para>
-                
-                <para>
                     After doing that, select the machine in <filename>build/conf/local.conf</filename>:
                     <literallayout class='monospaced'>
       #
-      MACHINE ?= "crownbay"
+      MACHINE ?= "mymachine"
       #
                     </literallayout>
                 </para>
@@ -1131,6 +1124,10 @@ That's it. Configure and build.
                     <literallayout class='monospaced'>
      $ bitbake poky-image-sato-live
                     </literallayout>
+                </para></listitem>
+
+                <listitem><para>
+                    Modify the kernel configuration for your machine.
                 </para>
                 
                 <para>
@@ -1149,17 +1146,22 @@ That's it. Configure and build.
                     And, another <filename>.cfg</filename> file would contain:
                     <literallayout class='monospaced'>
      CONFIG_LOG_BUF_SHIFT=18
+                    </literallayout>
 
-     http://git.pokylinux.org/cgit/cgit.cgi/linux-2.6-windriver/
+                <para>
+                    These config fragments could then be picked up and
+                    applied to the kernel .config by appending them to the kernel SRC_URI:
+                </para>
 
-     SRC_URI_append_crownbay = " file://some.cfg \
+                    <literallayout class='monospaced'>
+     SRC_URI_append_mymachine = " file://some.cfg \
                                   file://other.cfg \
                                "
                     </literallayout>
                 </para>
                 
                 <para>
-                    You could also add these directly to the git repository <filename>wrs_meta</filename>
+                    You could also add these directly to the git repository <filename>meta</filename>
                     branch as well.
                     However, the former method is a simple starting point.
                 </para></listitem>
@@ -1173,7 +1175,7 @@ That's it. Configure and build.
                 <para>
                     Practically speaking, to generate the patches, you'd go to the source in the build tree:
                     <literallayout class='monospaced'>
-     build/tmp/work/crownbay-poky-linux/linux-yocto-2.6.34+git0+d1cd5c80ee97e81e130be8c3de3965b770f320d6_0+
+     build/tmp/work/mymachine-poky-linux/linux-yocto-2.6.37+git0+d1cd5c80ee97e81e130be8c3de3965b770f320d6_0+
 0431115c9d720fee5bb105f6a7411efb4f851d26-r13/linux
                     </literallayout>
                 </para>
@@ -1182,7 +1184,7 @@ That's it. Configure and build.
                     Then, modify the code there, using quilt to save the changes, and recompile until 
                     it works:
                     <literallayout class='monospaced'>
-     $ bitbake -c compile -f linux-yocto-stable
+     $ bitbake -c compile -f linux-yocto
                     </literallayout>
                 </para></listitem>
                 
@@ -1191,7 +1193,7 @@ That's it. Configure and build.
                     SRC_URI location.
                     The patch is applied the next time you do a clean build.
                     Of course, since you have a branch for the BSP in git, it would be better to put it there instead.
-                    For example, in this case, commit the patch to the "crownbay-standard" branch, and during the 
+                    For example, in this case, commit the patch to the "yocto/standard/mymachine" branch, and during the 
                     next build it is applied from there.
                 </para></listitem>
             </orderedlist>
-- 
1.7.0.4


