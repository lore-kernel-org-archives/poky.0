Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4001F4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 13:05:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2011 11:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="698492687"
Received: from scott-desktop.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2011 11:05:30 -0800
Message-Id: <e846bac334224024d285d391d952a30683524efe.1295462360.git.scott@scott-desktop.(none)>
In-Reply-To: <cover.1295462360.git.scott@scott-desktop.(none)>
References: <cover.1295462360.git.scott@scott-desktop.(none)>
From: Scott Rifenbark <scott@scott-desktop.(none)>
Old-Date: Wed, 19 Jan 2011 10:20:11 -0800
Date: Wed, 19 Jan 2011 11:05:34 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] documentation/yocto-project-qs/yocto-project-qs.xml: General edits to YP QS.
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
X-List-Received-Date: Wed, 19 Jan 2011 19:05:31 -0000

Revised the manual for better grammar and more technically accurate wordings.
Worked closely with Scott Garman on the revision.

Signed-off-by: Scott Rifenbark <scott@scott-desktop.(none)>
---
 .../yocto-project-qs/yocto-project-qs.xml          |  187 ++++++++++++++------
 1 files changed, 133 insertions(+), 54 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index c62ec58..2748a68 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -160,14 +160,14 @@
      autoconf automake
             </literallayout>
  
-       <para>
-            <emphasis>NOTE:</emphasis>  Packages vary in number and name for other Linux distributions.  
+       <note><para>
+            Packages vary in number and name for other Linux distributions.  
             The commands here should work.  We are interested, though, to learn what works for you.
             You can find more information for package requirements on common Linux distributions 
             at <ulink url="http://wiki.openembedded.net/index.php/OEandYourDistro"></ulink>.
             However, you should be careful when using this information as the information applies
             to old Linux distributions that are known to not work with a current Poky install.
-        </para>
+        </para></note>
     </section>
 
     <section id='releases'>
@@ -216,15 +216,16 @@
          </mediaobject>
 
          <para>
-             Use the following commands from a shell on your Debian-based host to build your image.  
-             The build creates an entire Linux system including the Toolchain from the source.
+             Use the following commands to build your image.  
+             The build process creates an entire Linux distribution, including the toolchain, from source.
          </para>
 
-         <para><emphasis>NOTE:</emphasis>  The build process using Sato currently consumes 
-             50GB of disk space.
-             To allow for variations in the build process and for future package expansion we 
-             recommend 100GB of free disk space.
-         </para>
+         <note><para>
+             The build process using Sato currently consumes 
+             about 50GB of disk space.
+             To allow for variations in the build process and for future package expansion, we 
+             recommend having at least 100GB of free disk space.
+         </para></note>
 
          <para>
              <literallayout class='monospaced'>
@@ -235,52 +236,56 @@
          </para>
          <itemizedlist>
              <listitem><para>The first two commands extract the Yocto Project files from the 
-             release area and place them into a subdirectory of your current directory 
-             (<command>poky-4.0-build</command> in this example).</para></listitem>
-             <listitem><para>The <command>$ source</command> command creates the directory and places 
-             you there.  
-             The build directory contains all the object files used during the build.   
-             The default build directory is <command>poky-4.0-build</command>.  
-             Note that you can change the target architecture by editing the 
-             <command>&lt;build_directory&gt;/conf/local.conf</command> file. 
-             By default the target architecture is qemux86.</para></listitem>
+             release tarball and place them into a subdirectory of your current directory.</para></listitem>
+             <listitem><para>The <command>source</command> command creates the 
+             <filename>poky-4.0-build</filename> directory and executes the <command>cd</command>
+             command to make <filename>poky-4.0-build</filename> the working directory.
+             The resulting build directory contains all the files created during the build.   
+             By default the target architecture is qemux86.
+             To change this default, edit the value of the MACHINE variable in the 
+             <filename>conf/local.conf</filename> file.</para></listitem>
          </itemizedlist>
          <para>
-             Now might be a good time to edit the <command>conf/local.conf</command>
-             file.  
-             The defaults should all be fine.  However, you might want to look at the variables
-             BB_NUMBER_THREADS and PARALLEL_MAKE.
+             Take some time to examine your <filename>conf/local.conf</filename> file.  
+             The defaults should work fine.  
+             However, if you have a multi-core CPU you might want to set the variables
+             BB_NUMBER_THREADS and PARALLEL_MAKE to the number of processor cores on your build machine.
              By default, these variables are commented out.
          </para>
          <para>
-             Continue with the following command to build the OS image for the target, which is 
-             poky-image-sato in this example.
+             Continue with the following command to build an OS image for the target, which is 
+             <filename>poky-image-sato</filename> in this example.
              <literallayout class='monospaced'>
      $ bitbake poky-image-sato
              </literallayout>
-             <emphasis>NOTE:</emphasis>  If you are running Fedora 14 or another distribution 
-             with GNU make 3.82 you might have to run the following two 
-             <command>$bitbake</command> commands instead:
-             <literallayout class='monospaced'>
+             <note><para>
+                 If you are running Fedora 14 or another distribution 
+                 that ships with GNU make v3.82 you need to run the following two 
+                 <command>bitbake</command> commands instead:
+                 <literallayout class='monospaced'>
      $ bitbake make-native
      $ bitbake poky-image-sato
-             </literallayout>
+                 </literallayout>
+             </para></note>
              The final command runs the image:
              <literallayout class='monospaced'>
      $ poky-qemu qemux86
              </literallayout>
-             The build process could take several hours the first time you run it. 
-             Depending on the number of processors and cores, the amount or RAM, the speed of your
-             internet connection and other factors.
-             After the initial build, subsequent builds run much faster.
+             <note><para>
+                 Depending on the number of processors and cores, the amount or RAM, the speed of your
+                 Internet connection and other factors, the build process could take several hours the first
+                 time you run it.
+                 Subsequent builds run much faster since parts of the build are cached.
+             </para></note>
          </para>
     </section>
 
     <section id='using-pre-built'>
         <title>Using Pre-Built Binaries and QEMU</title>
         <para>
-            If hardware, libraries and services are stable you can use a pre-built binary of the image, kernel and toolchain and just run it on the target using the emulator QEMU.  
-            This situation is perfect for developing application software.
+            If hardware, libraries and services are stable you can get started by using a pre-built binary 
+            of the image, kernel and toolchain and run it using the emulator QEMU.  
+            This scenario is useful for developing application software.
         </para>
 
         <para></para>
@@ -303,25 +308,60 @@
          <itemizedlist>
              <listitem>
                  <para>
-                     Install the standalone Yocto toolchain tarball.
+                     Install the stand-alone Yocto toolchain tarball.
                  </para>
              </listitem>
              <listitem>
                  <para>
-                     Download the pre-built kernel that will run on QEMU.  
-                     You need to be sure to get the QEMU image that matches your target machine’s architecture (e.g. x86, ARM, etc.).
+                     Download the pre-built kernel that will boot with QEMU.  
+                     You need to be sure to get the QEMU image that matches your target machine’s 
+                     architecture (e.g. x86, ARM, etc.).
                  </para>
              </listitem>
              <listitem>
                  <para>
-                     Download and decompress the file image system.
+                     Download the filesystem image for your target machine's architecture.
                  </para>
              </listitem>
          </itemizedlist>
 
          <para>
-             You can download the pre-built toolchain, which includes the poky-qemu script and support files, from <ulink url='http://yoctoproject.org/downloads/yocto-0.9/toolchain/'></ulink>.  These are available for i586 (32-bit) and x86_64 (64 bit) host machines, targeting each of the five supported target architectures. The tarballs are self contained and install into <filename>/opt/poky</filename>.
-             Use these commands to install the toolchain tarball (taking the 64 bit host, 32 bit i586 target as an example):
+             You can download the pre-built toolchain, which includes the poky-qemu script and 
+             support files, from <ulink url='http://yoctoproject.org/downloads/yocto-0.9/toolchain/'></ulink>.  
+             Toolchains are available for 32-bit and 64-bit development systems from the 
+             <filename>i586</filename> and <filename>x86_64</filename> folders, respectively. 
+             Each type of development system supports five target architectures.
+             The tarball files are named such that a string representing the host system appears 
+             first in the filename and then is immediately followed by a string representing
+             the target architecture.
+         </para>
+
+         <literallayout class='monospaced'>
+     yocto-eglibc&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>arch</emphasis>&gt;-toolchain-sdk-&lt;<emphasis>release</emphasis>&gt;.tar.bz2
+
+     Where:
+         &lt;<emphasis>host_system</emphasis>&gt; is a string representing your development system: 
+                i586 or x86_64.
+       
+         &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture: 
+                i585, x86_64, powerpc, mips, or arm.
+       
+         &lt;<emphasis>release</emphasis>&gt; is the version of Yocto Project.
+         </literallayout>
+
+         <para>       
+             For example, the following toolchain tarball is for a 64-bit development 
+             host system and a 32-bit target architecture:
+         </para>
+
+         <literallayout class='monospaced'>
+     yocto-eglibc-x86_64-i586-toolchain-sdk-0.9.tar.bz2
+         </literallayout>
+
+         <para>
+             The toolchain tarballs are self-contained and should be installed into <filename>/opt/poky</filename>.
+             The following commands show how you install the toolchain tarball given a 64-bit development host system
+             and a 32-bit target architecture.
          </para>
 
          <para>
@@ -332,44 +372,83 @@
          </para>
 
          <para>
-             You can download the pre-built Linux kernel and the file image system suitable for 
+             You can download the pre-built Linux kernel and the filesystem image suitable for 
              running in the emulator QEMU from 
              <ulink url='http://yoctoproject.org/downloads/yocto-0.9/qemu'></ulink>.
-             Be sure to use the kernel and file image system that matches the architecture you want 
+             Be sure to use the kernel and filesystem image that matches the architecture you want 
              to simulate.
          </para>
        
          <para>  
-             The kernel and file image system have the following forms, respectively:
+             Most kernel files have the following form:
+         </para>
+
+         <literallayout class='monospaced'>
+     *zImage*qemu&lt;<emphasis>arch</emphasis>&gt;*.bin
+
+     Where:
+         &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture: 
+                x86, x86-64, ppc, mips, or arm.
+         </literallayout>
+
+         <para>
+             The filesystem image has two forms.
+             One form is an <filename>ext3</filename> filesystem image.
+             The other form is a tarball of the filesystem and is booted using user-space NFS.
+             Here are the respective forms:
          </para>
 
           <literallayout class='monospaced'>
-     *zImage*qemu*.bin
-     yocto-image-*-qemu*.ext3.bz2
+     yocto-image-&lt;<emphasis>profile</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;.rootfs.ext3
+     yocto-image-&lt;<emphasis>profile</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;.rootfs.tar.bz2
+
+     Where:
+         &lt;<emphasis>profile</emphasis>&gt; is the filesystem image's profile:
+                   sdk, sato, minimal, or lsb.
+
+         &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture: 
+                x86, x86-64, ppc, mips, or arm.
           </literallayout>
 
          <para>
-             You must decompress the file image system using the following command:
+             The following command form sets up the emulation environment.
          </para>
 
          <literallayout class='monospaced'>
-     $ bzip2 -d
+     $ source /opt/poky/environment-setup-&lt;<emphasis>arch</emphasis>&gt;-poky-linux 
+
+     Where:
+         &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture: 
+                i586, x86-64, ppc, mips, or arm.
          </literallayout>
 
          <para>
-             You can now start the emulator using these commands (assuming an 32 bit i586 target):
+              Finally, this command form invokes the QEMU emulator 
          </para>
 
          <literallayout class='monospaced'>
-     $ source /opt/poky/environment-setup-i586-poky-linux 
      $ poky-qemu &lt;<emphasis>qemuarch</emphasis>&gt; &lt;<emphasis>kernel</emphasis>&gt; &lt;<emphasis>image</emphasis>&gt; &lt;<emphasis>fstype</emphasis>&gt;
+
+     Where:
+         &lt;<emphasis>qemuarch</emphasis>&gt; is a string representing the target architecture: qemux86, qemux86-64, 
+                    qemuppc, qemumips, or qemuarm.
+
+         &lt;<emphasis>kernel</emphasis>&gt;    is the architecture-specific kernel.
+
+         &lt;<emphasis>image</emphasis>&gt;     is the .ext3 filesystem image.
+
+         &lt;<emphasis>fstype</emphasis>&gt;    is the filesystem type.
          </literallayout>
+
          <para>
-             For example:
+             Continuing with the example, the following two commands setup the emulation 
+             environment and launch QEMu.  
+             The kernel and filesystem are for a 32-bit target architecture.
          </para>
+
          <literallayout class='monospaced'>
-     $ poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9 \
-     yocto-image-minimal-qemuppc-0.9.rootfs.ext3 ext3
+     $ source /opt/poky/environment-setup-i586-poky-linux 
+     $ poky-qemu qemui586 zImage-2.6.34-qemux86-0.9 yocto-image-sdk-qemux86-0.9.rootfs.ext3 ext3
          </literallayout>
          
     </section>
-- 
1.7.1


