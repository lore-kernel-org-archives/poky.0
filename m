Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A6BF4C80AA7
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 12:37:56 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Mar 2011 10:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,244,1299484800"; d="scan'208";a="901858426"
Received: from unknown (HELO localhost) ([10.255.12.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2011 10:37:55 -0700
Message-Id: <2457636029082c1a74fe574081c83931b85ef39e.1301074648.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301074648.git.scott.m.rifenbark@intel.com>
References: <cover.1301074648.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Mar 2011 11:34:09 -0600
Date: Fri, 25 Mar 2011 11:39:00 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/1] documentation/adt-manual/adt-prepare.xml: Added instruction for building ADT tarball
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
X-List-Received-Date: Fri, 25 Mar 2011 17:37:56 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I added a note in the "Installing the ADT" section (2.1) saying that
if you need to build the ADT tarball you can use
'bitbake adt-installer'.  I also changed the location of the
toolchain from '...yocto-0.9' to '...yocto-1.0'.  Finally,
I changed the host sub-directory in the toolchain directory
from 'i586' to i686'.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-prepare.xml |   14 +++++++++++---
 1 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 77999b8..1733141 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -22,6 +22,14 @@
         user-space NFS, define which root filesystem profiles to download, 
         and allows you to define the target sysroot location.
     </para>
+    <note>
+        If you need to generate the ADT tarball you can do so using the following command:
+        <literallayout class='monospaced'>
+     $ bitbake adt-installer
+        </literallayout>
+        This command generates the file <filename>adt-installer.tar.bz2</filename>
+        in the <filename>../build/tmp/deploy/sdk</filename> directory.
+    </note>
 
     <section id='configuring-and-running-the-adt-installer'>
         <title>Configuring and Running the ADT Installer</title>
@@ -120,14 +128,14 @@
     <section id='using-an-existing-toolchain-tarball'>
         <title>Using an Existing Toolchain Tarball</title>
         <para>
-            If you don’t want to use the ADT Installer you can install the toolchain 
+            If you do not want to use the ADT Installer you can install the toolchain 
             and the sysroot by hand.  
             Follow these steps:
             <orderedlist>
                 <listitem><para>Locate and download the architecture-specific toolchain 
-                tarball from <ulink url='http://autobuilder.yoctoproject.org/downloads/yocto-0.9'></ulink>.
+                tarball from <ulink url='http://autobuilder.yoctoproject.org/downloads/yocto-1.0'></ulink>.
                 Look in the ‘toolchain’ folder and then open up the folder that matches your 
-                host development system (i.e. 'i586' for 32-bit machines or 'x86_64' 
+                host development system (i.e. 'i686' for 32-bit machines or 'x86_64' 
                 for 64-bit machines).  
                 Then, select the toolchain tarball whose name includes the appropriate 
                 target architecture.
-- 
1.7.1


