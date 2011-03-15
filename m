Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CC114C80A4F
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:41 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Mar 2011 16:42:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; 
	d="scan'208,217";a="897638756"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by fmsmga001.fm.intel.com with ESMTP; 15 Mar 2011 16:42:40 -0700
Message-Id: <711f9e1c1beca14089df3d396c3193ad935444b3.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Mar 2011 17:15:49 -0600
Date: Tue, 15 Mar 2011 17:43:32 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 11/13] documentation/adt-manual/adt-command.xml: Initial draft of command line chapter
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:41 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This is the initial draft of the Using the Command Line chapter.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-command.xml |   91 ++++++++++++++++-------------
 1 files changed, 50 insertions(+), 41 deletions(-)

diff --git a/documentation/adt-manual/adt-command.xml b/documentation/adt-manual/adt-command.xml
index d459d50..e57c15a 100644
--- a/documentation/adt-manual/adt-command.xml
+++ b/documentation/adt-manual/adt-command.xml
@@ -1,55 +1,64 @@
 <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<chapter id='adt-command'>
-
-<title>Yocto Project Kernel Architecture and Use Manual</title>
-
-<section id='command'>
-    <title>Introduction</title>
+<chapter id='using-the-command-line'>
+<title>Using the Command Line</title>
     <para>
-        The Yocto Project presents the kernel as a fully patched, history-clean git
-        repository. 
-        The git tree represents the selected features, board support,
-        and configurations extensively tested by Yocto Project. 
-        The Yocto Project kernel allows the end user to leverage community
-        best practices to seamlessly manage the development, build and debug cycles.
+        Recall that earlier we talked about how to use an existing toolchain 
+        tarball that had been installed into <filename>/opt/poky</filename>, 
+        which is outside of the Poky build environment 
+        (see <xref linkend='using-an-existing-toolchain-tarball'>
+        “Using an Existing Toolchain Tarball”)</xref>.  
+        And, that sourcing your architecture-specific environment setup script 
+        initializes a suitable development environment.  
+        This setup occurs by adding the compiler, QEMU scripts, QEMU binary, 
+        a special version of <filename>pkgconfig</filename> and other useful 
+        utilities to the <filename>PATH</filename> variable.
+        Variables to assist pkgconfig and autotools are also defined so that, 
+        for example, <filename>configure.sh</filename> can find pre-generated 
+        test results for tests that need target hardware on which to run.  
+        These conditions allow you to easily use the toolchain outside of the 
+        Poky build environment on both autotools-based projects and 
+        makefile-based projects.
     </para>
+
+<section id='autotools-based-projects'>
+<title>Autotools-Based Projects</title>
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
+        For an autotools-based project you can use the cross-toolchain by just 
+        passing the appropriate host option to <filename>configure.sh</filename>.
+        The host option you use is derived from the name of the environment setup 
+        script in <filename>/opt/poky</filename> resulting from unpacking the 
+        cross-toolchain tarball.
+        For example, the host option for an ARM-based target that uses the GNU EABI 
+        is <filename>armv5te-poky-linux-gnueabi</filename>.
+        Note that the name of the script is 
+        <filename>environment-setup-armv5te-poky-linux-gnueabi</filename>.
+        Thus, the following command works:
+        <literallayout class='monospaced'>
+     $ configure &dash;&dash;host-armv5te-poky-linux-gnueabi &dash;&dash;with-libtool-sysroot=&lt;sysroot-dir&gt;
+        </literallayout>
     </para>
     <para>
-        For more information on the kernel, see the following links:
-        <itemizedlist>
-            <listitem><para><ulink url='http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process'></ulink></para></listitem>
-            <listitem><para><ulink url='http://userweb.kernel.org/~akpm/stuff/tpp.txt'></ulink></para></listitem>
-            <listitem><para><ulink url='http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD'></ulink></para></listitem> 
-        </itemizedlist>
-        <para> 
-        You can find more information on Yocto Project by visiting the website at
-        <ulink url='http://www.yoctoproject.org'></ulink>.
-        </para>
+        This single command updates your project and rebuilds it using the appropriate 
+        cross-toolchain tools.
     </para>
 </section>
 
-
-
-
-
-
+<section id='makefile-based-projects'>
+<title>Makefile-Based Projects</title>
+    <para>
+        For a makefile-based project you use the cross-toolchain by making sure 
+        the tools are used.  
+        You can do this as follows:
+        <literallayout class='monospaced'>
+     CC=arm-poky-linux-gnueabi-gcc
+     LD=arm-poky-linux-gnueabi-ld
+     CFLAGS=”${CFLAGS} &dash;&dash;sysroot=&lt;sysroot-dir&gt;”
+     CXXFLAGS=”${CXXFLAGS} &dash;&dash;sysroot=&lt;sysroot-dir&gt;”
+        </literallayout>
+    </para>
+</section>
 
 </chapter>
 <!--
-- 
1.7.1


