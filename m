Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC4694C80FD4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:00:17 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 09:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="668767339"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 09:59:00 -0700
Message-Id: <74d897267d7a7a8f0988b82b2d3000c14465b134.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 16:46:38 -0600
Date: Fri, 18 Mar 2011 10:59:53 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 10/15] documentation/poky-ref-manual/usingpoky.xml: More BitBake changes
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
X-List-Received-Date: Fri, 18 Mar 2011 17:00:18 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Forgot to search for "Bitbake" occurances.  These are now changed
to "BitBake."

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/usingpoky.xml |   16 ++++++++--------
 1 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index f27b349..70ed309 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -19,7 +19,7 @@
     </para>
     
     <para>  
-        Bitbake handles the parsing and execution of the data files. 
+        BitBake handles the parsing and execution of the data files. 
         The data itself is of various types:
     <itemizedlist>
         <listitem><para>Recipes:  Provides details about particular pieces of software</para></listitem>
@@ -31,7 +31,7 @@
     </para>
 
     <para> 
-        Bitbake knows how to combine multiple data sources together and refers to each data source
+        BitBake knows how to combine multiple data sources together and refers to each data source
         as a <link linkend='usingpoky-changes-layers'>'layer'</link>.
     </para>
 
@@ -43,10 +43,10 @@
     </para>
 
     <section id='usingpoky-components-bitbake'>
-        <title>Bitbake</title>
+        <title>BitBake</title>
 
         <para>
-            Bitbake is the tool at the heart of Poky and is responsible
+            BitBake is the tool at the heart of Poky and is responsible
             for parsing the metadata, generating a list of tasks from it
             and then executing them. To see a list of the options BitBake
             supports look at 'bitbake --help'.
@@ -63,13 +63,13 @@
      $ bitbake matchbox-desktop
             </literallayout>
             Several different versions of <filename>matchbox-desktop</filename> might exist.
-            Bitbake chooses the one selected by the distribution configuration.
+            BitBake chooses the one selected by the distribution configuration.
             You can get more details about how BitBake chooses between different versions
             and providers in the <link linkend='ref-bitbake-providers'>
             'Preferences and Providers'</link> section.
         </para>
         <para>
-            Bitbake also tries to execute any dependent tasks first.
+            BitBake also tries to execute any dependent tasks first.
             So for example, before building <filename>matchbox-desktop</filename> BitBake
             would build a cross compiler and glibc if they had not already been built.
         </para>
@@ -246,7 +246,7 @@
         <para>
             This sequence first builds <filename>matchbox-desktop</filename> and then recompiles it.
             The last command reruns all tasks, basically the packaging tasks, after the compile.
-            Bitbake recognizes that the "compile" task was rerun and therefore understands that the other
+            BitBake recognizes that the "compile" task was rerun and therefore understands that the other
             tasks also need to be run again.
         </para>
 
@@ -275,7 +275,7 @@
     </section>
 
     <section id='usingpoky-debugging-bitbake'>
-        <title>General Bitbake Problems</title>
+        <title>General BitBake Problems</title>
 
         <para>
             You can see debug output from BitBake by using the "-D" option.
-- 
1.7.1


