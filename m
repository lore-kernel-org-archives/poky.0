Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64FBB4C804CA
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:31:06 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2011 10:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="614775192"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 10:31:05 -0700
Message-Id: <dcabdfbf3e19b6fc09dd590877c6359251fd7f11.1300469401.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300469401.git.scott.m.rifenbark@intel.com>
References: <cover.1300469401.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 16 Mar 2011 17:00:19 -0600
Date: Fri, 18 Mar 2011 11:31:58 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 4/6] documentation/yocto-project-qs/yocto-project-qs.xml: 1.0 edits applied to examples
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
X-List-Received-Date: Fri, 18 Mar 2011 17:31:06 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This is first guess at the correct example commands and directory
names for the Bernard 5.0 release.  I don't have any real directories
available to look at and doc changes are supposed to be frozen before the
actual build.  So these are guesses and will need reviewed.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   42 ++++++++++----------
 1 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index c2e019a..c481d5f 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -176,7 +176,7 @@
             
         <para>
             The latest release images for the Yocto Project are kept at 
-            <ulink url="http://yoctoproject.org/downloads/yocto-0.9/"></ulink>.
+            <ulink url="http://yoctoproject.org/downloads/yocto-1.0/"></ulink>.
             Nightly and developmental builds are also maintained.  However, for this 
             document a released version of Yocto Project is used.
         </para>
@@ -230,9 +230,9 @@
 
          <para>
              <literallayout class='monospaced'>
-     $ wget http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2
-     $ tar xjf poky-laverne-4.0.tar.bz2
-     $ source poky-laverne-4.0/poky-init-build-env poky-4.0-build
+     $ wget http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2
+     $ tar xjf poky-bernard-5.0.tar.bz2
+     $ source poky-bernard-5.0/poky-init-build-env poky-5.0-build
              </literallayout>
          </para>
 
@@ -250,8 +250,8 @@
              <listitem><para>The first two commands extract the Yocto Project files from the 
              release tarball and place them into a subdirectory of your current directory.</para></listitem>
              <listitem><para>The <command>source</command> command creates the 
-             <filename>poky-4.0-build</filename> directory and executes the <command>cd</command>
-             command to make <filename>poky-4.0-build</filename> the working directory.
+             <filename>poky-5.0-build</filename> directory and executes the <command>cd</command>
+             command to make <filename>poky-5.0-build</filename> the working directory.
              The resulting build directory contains all the files created during the build.   
              By default the target architecture is qemux86.
              To change this default, edit the value of the MACHINE variable in the 
@@ -353,9 +353,10 @@
         <title>Installing the Toolchain</title>
          <para>
              You can download the pre-built toolchain, which includes the poky-qemu script and 
-             support files, from <ulink url='http://yoctoproject.org/downloads/yocto-0.9/toolchain/'></ulink>.  
+             support files, from 
+             <ulink url='http://yoctoproject.org/downloads/yocto-1.0/toolchain/'></ulink>.  
              Toolchains are available for 32-bit and 64-bit development systems from the 
-             <filename>i586</filename> and <filename>x86_64</filename> folders, respectively. 
+             <filename>i686</filename> and <filename>x86_64</filename> folders, respectively. 
              Each type of development system supports five target architectures.
              The tarball files are named such that a string representing the host system appears 
              first in the filename and then is immediately followed by a string representing
@@ -367,10 +368,10 @@
 
      Where:
          &lt;<emphasis>host_system</emphasis>&gt; is a string representing your development system: 
-                i586 or x86_64.
+                i686 or x86_64.
        
          &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture: 
-                i585, x86_64, powerpc, mips, or arm.
+                i686, x86_64, powerpc, mips, or arm.
        
          &lt;<emphasis>release</emphasis>&gt; is the version of Yocto Project.
          </literallayout>
@@ -381,7 +382,7 @@
          </para>
 
          <literallayout class='monospaced'>
-     yocto-eglibc-x86_64-i586-toolchain-sdk-0.9.tar.bz2
+     yocto-eglibc-x86_64-i686-toolchain-sdk-1.0.tar.bz2
          </literallayout>
 
          <para>
@@ -393,7 +394,7 @@
          <para>
              <literallayout class='monospaced'>
      $ cd /
-     $ sudo tar -xvjf yocto-eglibc-x86_64-i586-toolchain-sdk-0.9.tar.bz2
+     $ sudo tar -xvjf yocto-eglibc-x86_64-i686-toolchain-sdk-1.0.tar.bz2
              </literallayout>
          </para>
          </section>
@@ -403,7 +404,7 @@
          <para>
              You can download the pre-built Linux kernel and the filesystem image suitable for 
              running in the emulator QEMU from 
-             <ulink url='http://yoctoproject.org/downloads/yocto-0.9/qemu'></ulink>.
+             <ulink url='http://yoctoproject.org/downloads/yocto-1.0/machines/qemu'></ulink>.
              Be sure to use the kernel and filesystem image that matches the architecture you want 
              to simulate.
          </para>
@@ -455,10 +456,10 @@
 
      Where:
          &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture: 
-                i586, x86_64, ppc603e, mips, or armv5te.
+                i686, x86_64, ppc603e, mips, or armv5te.
 
          &lt;<emphasis>if</emphasis>&gt; is a string representing an embedded application binary interface.
-                Not all setup scripts include this string.
+              Not all setup scripts include this string.
          </literallayout>
 
          <para>
@@ -466,17 +467,16 @@
          </para>
 
          <literallayout class='monospaced'>
-     $ poky-qemu &lt;<emphasis>qemuarch</emphasis>&gt; &lt;<emphasis>kernel</emphasis>&gt; &lt;<emphasis>image</emphasis>&gt; &lt;<emphasis>fstype</emphasis>&gt;
+     $ poky-qemu &lt;<emphasis>qemuarch</emphasis>&gt; &lt;<emphasis>kernel</emphasis>&gt; &lt;<emphasis>filesystem_image</emphasis>&gt;
 
      Where:
          &lt;<emphasis>qemuarch</emphasis>&gt; is a string representing the target architecture: qemux86, qemux86-64, 
                     qemuppc, qemumips, or qemuarm.
 
-         &lt;<emphasis>kernel</emphasis>&gt;    is the architecture-specific kernel.
+         &lt;<emphasis>kernel</emphasis>&gt; is the architecture-specific kernel.
 
-         &lt;<emphasis>image</emphasis>&gt;     is the .ext3 filesystem image.
+         &lt;<emphasis>filesystem_image</emphasis>&gt; is the .ext3 filesystem image.
 
-         &lt;<emphasis>fstype</emphasis>&gt;    is the filesystem type.
          </literallayout>
 
          <para>
@@ -486,8 +486,8 @@
          </para>
 
          <literallayout class='monospaced'>
-     $ source /opt/poky/environment-setup-i586-poky-linux 
-     $ poky-qemu qemui586 zImage-2.6.34-qemux86-0.9 yocto-image-sdk-qemux86-0.9.rootfs.ext3 ext3
+     $ source /opt/poky/environment-setup-i686-poky-linux 
+     $ poky-qemu qemux86 zImage-2.6.34-qemux86-1.0.bin yocto-image-sdk-qemux86-1.0.rootfs.ext3
          </literallayout>
 
          <para>
-- 
1.7.1


