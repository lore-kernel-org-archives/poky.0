Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 377964C80ACB
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:38 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 09:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="721663674"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 09:58:58 -0700
Message-Id: <07bd0e098b06f8bfba54778d72eb1f2b399a2654.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 16:41:43 -0600
Date: Fri, 18 Mar 2011 10:59:51 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 09/15] documentation/poky-ref-manual/usingpoky.xml: grammar fix and BitBake fix
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:38 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Fixed a grammar problem and then did a search and replace for
"bitbake" to replace with "BitBake".

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/usingpoky.xml |   32 +++++++++++++-------------
 1 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index aecefd3..f27b349 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -5,7 +5,7 @@
 
     <para>
         This section gives an overview of the components that make up Poky 
-        following by information about running poky builds and dealing with any
+        followed by information about running poky builds and dealing with any
         problems that may arise.
     </para>
 
@@ -13,8 +13,8 @@
     <title>Poky Overview</title>
 
     <para>
-        The bitbake task executor together with various types of configuration files form the core of Poky.
-        This section overviews the bitbake task executor and the
+        The BitBake task executor together with various types of configuration files form the core of Poky.
+        This section overviews the BitBake task executor and the
         configuration files by describing what they are used for and they they interact.
     </para>
     
@@ -48,12 +48,12 @@
         <para>
             Bitbake is the tool at the heart of Poky and is responsible
             for parsing the metadata, generating a list of tasks from it
-            and then executing them. To see a list of the options bitbake
+            and then executing them. To see a list of the options BitBake
             supports look at 'bitbake --help'.
         </para>
 
         <para>
-            The most common usage for bitbake is <filename>bitbake &lt;packagename&gt;</filename>, where
+            The most common usage for BitBake is <filename>bitbake &lt;packagename&gt;</filename>, where
             packagename is the name of the package you want to build (referred to as the 'target'
             in this manual). 
             The target often equates to the first part of a <filename>.bb</filename> filename.
@@ -64,13 +64,13 @@
             </literallayout>
             Several different versions of <filename>matchbox-desktop</filename> might exist.
             Bitbake chooses the one selected by the distribution configuration.
-            You can get more details about how bitbake chooses between different versions
+            You can get more details about how BitBake chooses between different versions
             and providers in the <link linkend='ref-bitbake-providers'>
             'Preferences and Providers'</link> section.
         </para>
         <para>
             Bitbake also tries to execute any dependent tasks first.
-            So for example, before building <filename>matchbox-desktop</filename> bitbake
+            So for example, before building <filename>matchbox-desktop</filename> BitBake
             would build a cross compiler and glibc if they had not already been built.
         </para>
 
@@ -202,7 +202,7 @@
         <para>The log file for shell tasks is available in <filename>${WORKDIR}/temp/log.do_taskname.pid</filename>. 
             For example, the "compile" task of busybox 1.01 on the ARM spitz machine might be 
             <filename>tmp/work/armv5te-poky-linux-gnueabi/busybox-1.01/temp/log.do_compile.1234</filename>.
-            To see what bitbake runs to generate that log, look at the corresponding 
+            To see what BitBake runs to generate that log, look at the corresponding 
             <filename>run.do_taskname.pid </filename> file located in the same directory.
         </para>
 
@@ -219,10 +219,10 @@
             In most cases the series is: fetch, unpack, patch, configure,
             compile, install, package, package_write and build. 
             The default task is "build" and any tasks on which it depends build first - hence, 
-            the standard bitbake behaviour. 
+            the standard BitBake behaviour. 
             Some tasks exist, such as devshell, that are not part of the default build chain.  
             If you wish to run a task that is not part of the default build chain you can use the 
-            "-c" option in bitbake as follows:
+            "-c" option in BitBake as follows:
             <literallayout class='monospaced'>
      $ bitbake matchbox-desktop -c devshell
             </literallayout>
@@ -264,7 +264,7 @@
         <title>Dependency Graphs</title>
 
         <para>
-            Sometimes it can be hard to see why bitbake wants to build some other packages before a given 
+            Sometimes it can be hard to see why BitBake wants to build some other packages before a given 
             package you've specified.
             The <filename>bitbake -g targetname</filename> command creates the <filename>depends.dot</filename> and
             <filename>task-depends.dot</filename> files in the current directory. 
@@ -278,8 +278,8 @@
         <title>General Bitbake Problems</title>
 
         <para>
-            You can see debug output from bitbake by using the "-D" option.
-            The debug output gives more information about what bitbake
+            You can see debug output from BitBake by using the "-D" option.
+            The debug output gives more information about what BitBake
             is doing and the reason behind it. 
             Each "-D" option you use increases the logging level.
             The most common usage is <filename>-DDD</filename>.
@@ -287,9 +287,9 @@
 
         <para>
             The output from <filename>bitbake -DDD -v targetname</filename> can reveal why
-            bitbake chose a certain version of a package or why bitbake
+            BitBake chose a certain version of a package or why BitBake
             picked a certain provider.
-            This command could also help you in a situation where you think bitbake did something 
+            This command could also help you in a situation where you think BitBake did something 
             unexpected.
         </para>
     </section>
@@ -301,7 +301,7 @@
             the command form <filename>bitbake -b somepath/somefile.bb</filename>. 
             This command form does not check for dependencies so you should use it
             only when you know its dependencies already exist. 
-            You can also specify fragments of the filename and bitbake checks for a unique match.
+            You can also specify fragments of the filename and BitBake checks for a unique match.
         </para>
     </section>
 
-- 
1.7.1


