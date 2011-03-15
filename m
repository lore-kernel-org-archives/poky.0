Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65C424C80AAC
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:36 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Mar 2011 16:42:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="403176241"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 16:42:35 -0700
Message-Id: <b587ac75e400061ba681fb4b6fcf743ec37108ce.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Mar 2011 17:47:21 -0600
Date: Tue, 15 Mar 2011 17:43:27 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 08/13] documentation/adt-manual/adt-prepare.xml: Initial draft of preparation chapter
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:36 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This commit is the initial draft of the preparation chapter (chapter 2).

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-prepare.xml |  253 +++++++++++++++++++++++++-----
 1 files changed, 216 insertions(+), 37 deletions(-)

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 928a091..77999b8 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -3,53 +3,232 @@
 
 <chapter id='adt-prepare'>
 
-<title>Yocto Project Kernel Architecture and Use Manual</title>
+<title>Preparing to Use the Application Development Toolkit (ADT)</title>
 
-<section id='prepare'>
-    <title>Introduction</title>
-    <para>
-        The Yocto Project presents the kernel as a fully patched, history-clean git
-        repository. 
-        The git tree represents the selected features, board support,
-        and configurations extensively tested by Yocto Project. 
-        The Yocto Project kernel allows the end user to leverage community
-        best practices to seamlessly manage the development, build and debug cycles.
-    </para>
+<para>
+    In order to use the ADT it must be installed, the environment setup script must be 
+    sourced, and the kernel and filesystem image specific to the target architecture must exist.  
+    This section describes how to install the ADT, set up the environment, and provides 
+    some reference information on kernels and filesystem images.
+</para>
+
+<section id='installing-the-adt'>
+    <title>Installing the ADT</title>
     <para>
-        This manual describes the Yocto Project kernel by providing information
-        on its history, organization, benefits, and use.
-        The manual consists of two sections:
-        <itemizedlist>
-            <listitem><para>Concepts - Describes concepts behind the kernel.
-                You will understand how the kernel is organized and why it is organized in 
-                the way it is.  You will understand the benefits of the kernel's organization 
-                and the mechanisms used to work with the kernel and how to apply it in your 
-                design process.</para></listitem>
-            <listitem><para>Using the Kernel - Describes best practices and "how-to" information
-                that lets you put the kernel to practical use.  Some examples are "How to Build a 
-                Project Specific Tree", "How to Examine Changes in a Branch", and "Saving Kernel
-                Modifications."</para></listitem>
-        </itemizedlist>
+        You can install the ADT three ways.  
+        However, we recommend configuring and running the ADT Installer script.  
+        Running this script automates much of the process for you.  
+        For example, the script allows you to install the QEMU emulator and 
+        user-space NFS, define which root filesystem profiles to download, 
+        and allows you to define the target sysroot location.
     </para>
-    <para>
-        For more information on the kernel, see the following links:
-        <itemizedlist>
-            <listitem><para><ulink url='http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process'></ulink></para></listitem>
-            <listitem><para><ulink url='http://userweb.kernel.org/~akpm/stuff/tpp.txt'></ulink></para></listitem>
-            <listitem><para><ulink url='http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD'></ulink></para></listitem> 
-        </itemizedlist>
-        <para> 
-        You can find more information on Yocto Project by visiting the website at
-        <ulink url='http://www.yoctoproject.org'></ulink>.
+
+    <section id='configuring-and-running-the-adt-installer'>
+        <title>Configuring and Running the ADT Installer</title>
+        <para>
+            The ADT Installer is contained in a tarball that can be built using 
+            <filename>bitbake adt-installer</filename>. 
+            Yocto Project has a pre-built ADT Installer tarball that you can download 
+            from <filename>tmp/deploy/sdk</filename> located in the build directory.
         </para>
-    </para>
-</section>
 
+        <note>
+            You can install and run the ADT Installer tarball in any directory you want.
+        </note>
+
+        <para>
+            Before running the ADT Installer you need to configure it by editing 
+            the <filename>adt-installer.conf</filename> file, which is located in the 
+            directory where the ADT Installer tarball was installed.  
+            Your configurations determine which kernel and filesystem image are downloaded.  
+            The following list describes the variables you can define for the ADT Installer.  
+            For configuration values and restrictions see the comments in  
+            the <filename>adt-installer.conf</filename> file:
 
+            <itemizedlist>
+                <listitem><para><filename>YOCTOADT_IPKG_REPO</filename> – This area 
+                includes the IPKG-based packages and the root filesystem upon which 
+                the installation is based.  
+                If you want to set up your own IPKG repository pointed to by 
+                <filename>YOCTOADT_IPKG_REPO</filename>, you need to be sure that the 
+                directory structure follows the same layout as the reference directory 
+                set up at <ulink url='http://adtrepo.yoctoproject.org'></ulink>.  
+                Also, your repository needs to be accessible through HTTP.
+                </para></listitem>
+                <listitem><para><filename>YOCTOADT-TARGETS</filename> – The machine 
+                target architectures for which you want to set up cross-development 
+                environments.
+                </para></listitem>
+                <listitem><para><filename>YOCTOADT_QEMU</filename> – Indicates whether 
+                or not to install the emulator QEMU.
+                </para></listitem>
+                <listitem><para><filename>YOCTOADT_NFS_UTIL</filename> – Indicates whether 
+                or not to install user-mode NFS.  
+                If you plan to use the Yocto Eclipse IDE plug-in against QEMU, 
+                you should install NFS.
+                    <note>
+                    To boot QEMU images using our userspace NFS server, you need 
+                    to be running portmap or rpcbind. 
+                    If you are running rpcbind, you will also need to add the -i 
+                    option when rpcbind starts up. 
+                    Please make sure you understand the security implications of doing this. 
+                    Your firewall settings may also have to be modified to allow 
+                    NFS booting to work.
+                    </note>
+                </para></listitem>
+                <listitem><para><filename>YOCTOADT_ROOTFS_&lt;arch&gt;</filename> - The root 
+                filesystem images you want to download.
+                </para></listitem>
+                <listitem><para><filename>YOCTOADT_TARGET_SYSROOT_IMAGE_&lt;arch&gt;</filename> - The 
+                root filesystem used to extract and create the target sysroot.
+                </para></listitem>
+                <listitem><para><filename>YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;</filename> - The 
+                location of the target sysroot that will be set up on the development machine.
+                </para></listitem>
+            </itemizedlist>
+        </para>
+
+        <para>
+            After you have configured the <filename>adt-installer.conf</filename> file, 
+            run the installer using the following command:
+            <literallayout class='monospaced'>
+     $ adt_installer
+            </literallayout>
+        </para>
+
+        <para>
+            Once the installer begins to run you are asked whether you want to run in 
+            interactive or silent mode.  
+            If you want to closely monitor the installation then choose “I” for interactive 
+            mode rather than “S” for silent mode.  
+            Follow the prompts from the script to complete the installation.
+        </para>
 
+        <para>
+            Once the installation completes, the cross-toolchain is installed in 
+            <filename>/opt/poky/$SDKVERSION</filename>.
+        </para>
 
+        <para>
+            Before using the ADT you need to run the environment setup script for 
+            your target architecture also located in <filename>/opt/poky/$SDKVERSION</filename>.
+            See the <xref linkend='setting-up-the-environment'>“Setting Up the Environment”</xref> 
+            section for information.
+        </para>
+    </section>
 
+    <section id='using-an-existing-toolchain-tarball'>
+        <title>Using an Existing Toolchain Tarball</title>
+        <para>
+            If you don’t want to use the ADT Installer you can install the toolchain 
+            and the sysroot by hand.  
+            Follow these steps:
+            <orderedlist>
+                <listitem><para>Locate and download the architecture-specific toolchain 
+                tarball from <ulink url='http://autobuilder.yoctoproject.org/downloads/yocto-0.9'></ulink>.
+                Look in the ‘toolchain’ folder and then open up the folder that matches your 
+                host development system (i.e. 'i586' for 32-bit machines or 'x86_64' 
+                for 64-bit machines).  
+                Then, select the toolchain tarball whose name includes the appropriate 
+                target architecture.
+                <note>
+                    If you need to build the toolchain tarball use the 
+                    <filename>bitbake meta-toolchain</filename> command after you have 
+                    sourced the poky-build-init script.  
+                    The tarball will be located in the build directory at 
+                    <filename>tmp/deploy/sdk</filename> after the build.
+                </note>
+                </para></listitem>
+                <listitem><para>Make sure you are in the root directory and then expand 
+                the tarball.  
+                The tarball expands into the <filename>/opt/poky/$SDKVERSION</filename> directory.
+                </para></listitem>
+                <listitem><para>Set up the environment by sourcing the environment set up 
+                script.  
+                See the <xref linkend='setting-up-the-environment'>“Setting Up the Environment”</xref>
+                for information.
+                </para></listitem>
+            </orderedlist>
+        </para>
+    </section>
 
+    <section id='using-the-toolchain-from-within-the-build-tree'>
+        <title>Using the Toolchain from Within the Build Tree</title>
+        <para>
+            A final way of accessing the toolchain is from the build tree.  
+            The build tree can be set up to contain the architecture-specific cross toolchain.  
+            To populate the build tree with the toolchain you need to run the following command:
+            <literallayout class='monospaced'>  
+     $ bitbake meta-ide-support
+            </literallayout>
+        </para>
+ 
+        <para>
+            Before running the command you need to be sure that the 
+            <filename>conf/local.conf</filename> file in the build directory has 
+            the desired architecture specified for the <filename>MACHINE</filename> 
+            variable.
+            See the <filename>local.conf</filename> file for a list of values you 
+            can supply for this variable.  
+            You can populate the build tree with the cross-toolchains for more 
+            than a single architecture.  
+            You just need to edit the <filename>local.conf</filename> file and re-run 
+            the BitBake command.
+        </para>
+
+        <para>
+            Once the build tree has the toolchain you need to source the environment 
+            setup script so that you can run the cross-tools without having to locate them.  
+            See the <xref linkend='setting-up-the-environment'>“Setting Up the Environment”</xref>
+            for information.
+        </para>
+    </section>
+</section>
+
+<section id='setting-up-the-environment'>
+    <title>Setting Up the Environment</title>
+    <para>
+        Before you can use the cross-toolchain you need to set up the environment by 
+        sourcing the environment setup script.  
+        If you used adt_installer or used an existing ADT tarball to install the ADT,
+        then you can find this script in the <filename>/opt/poky/$SDKVERSION</filename>
+        directory.  
+        If you are using the ADT from a Poky build tree, then look in the build 
+        directory in <filename>tmp</filename> for the setup script.
+    </para>
+
+    <para> 
+        Be sure to run the environment setup script that matches the architecture for 
+        which you are developing.  
+        Environment setup scripts begin with the string “environment-setup” and include as 
+        part of their name the architecture.  
+        For example, the environment setup script for a 64-bit IA-based architecture would 
+        be the following: 
+        <literallayout class='monospaced'>
+     /opt/poky/environment-setup-x86_64-poky-linux
+        </literallayout>
+    </para>
+</section>
+
+<section id='kernels-and-filesystem-images'>
+    <title>Kernels and Filesystem Images</title>
+    <para>
+        You will need to have a kernel and filesystem image to boot using your 
+        hardware or the QEMU emulator.  
+        That means you either have to build them or know where to get them.  
+        You can find lots of details on how to get or build images and kernels for your 
+        architecture in the "Yocto Project Quick Start" found at 
+        <ulink url='http://www.yoctoproject.org/docs/yocto-quick-start/yocto-project-qs.html'></ulink>.
+        <note> 
+            Yocto Project provides basic kernels and filesystem images for several 
+            architectures (x86, x86-64, mips, powerpc, and arm) that can be used 
+            unaltered in the QEMU emulator.  
+            These kernels and filesystem images reside in the Yocto Project release 
+            area - <ulink url='http://autobuilder.yoctoproject.org/downloads/yocto-0.9/'></ulink>
+            and are ideal for experimentation within Yocto Project.
+        </note>
+    </para>
+</section>
 
 </chapter>
 <!--
-- 
1.7.1


