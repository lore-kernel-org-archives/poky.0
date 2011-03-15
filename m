Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DCB74C8009D
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:34 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Mar 2011 16:42:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="403176237"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 16:42:33 -0700
Message-Id: <5c3d7bcc4c21704253dde533795c75d235dfb438.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Mar 2011 16:28:55 -0600
Date: Tue, 15 Mar 2011 17:43:26 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 07/13] documentation/adt-manual/adt-intro.xml: Initial text
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:35 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This commit is the initial text for the introduction chapter.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-intro.xml |  132 +++++++++++++++++++++++---------
 1 files changed, 96 insertions(+), 36 deletions(-)

diff --git a/documentation/adt-manual/adt-intro.xml b/documentation/adt-manual/adt-intro.xml
index c1e283a..8740e5c 100644
--- a/documentation/adt-manual/adt-intro.xml
+++ b/documentation/adt-manual/adt-intro.xml
@@ -3,53 +3,113 @@
 
 <chapter id='adt-intro'>
 
-<title>Yocto Project Kernel Architecture and Use Manual</title>
+<title>Application Development Toolkit (ADT) User's Guide</title>
+
+<para>
+    Welcome to the Application Development Toolkit User’s Guide.  This manual provides 
+    information that lets you get going with the ADT to develop projects using the Yocto 
+    Project.
+</para>
 
 <section id='book-intro'>
-    <title>Introduction</title>
+    <title>Introducing the Application Development Toolkit (ADT)</title>
     <para>
-        The Yocto Project presents the kernel as a fully patched, history-clean git
-        repository. 
-        The git tree represents the selected features, board support,
-        and configurations extensively tested by Yocto Project. 
-        The Yocto Project kernel allows the end user to leverage community
-        best practices to seamlessly manage the development, build and debug cycles.
+        Fundamentally, the ADT consists of an architecture-specific cross-toolchain and 
+        a matching sysroot that are both built by the Poky build system.  
+        The toolchain and sysroot are based on a metadata configuration and extensions, 
+        which allows you to cross develop for the target on the host machine.
     </para>
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
+        Additionally, to provide an effective development platform, the Yocto Project 
+        makes available and suggests other tools as part of the ADT.  
+        These other tools include the Eclipse IDE Yocto Plug-in, an emulator (QEMU), 
+        and various user-space tools that greatly enhance your development experience.
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
+        The resulting combination of the architecture-specific cross-toolchain and sysroot 
+        along with these additional tools yields a custom-built, cross-development platform 
+        for a user-targeted product.
     </para>
-</section>
-
-
-
+    
+    <section id='the-cross-toolchain'>
+        <title>The Cross-Toolchain</title>
+        <para>
+            The cross-toolchain consists of a cross-compiler, cross-linker, and cross-debugger 
+            that are all generated through a Poky build that is based on your metadata 
+            configuration or extension for your targeted device.  
+            The cross-toolchain works with a matching target sysroot.
+        </para>
+    </section>
 
+    <section id='sysroot'>
+        <title>Sysroot</title>
+        <para>
+            The matching target sysroot contains needed headers and libraries for generating 
+            binaries that run on the target architecture.  
+            The sysroot is based on the target root filesystem image that is built by 
+            Poky and uses the same metadata configuration used to build the cross-toolchain.
+        </para>
+    </section>
 
+    <section id='the-qemu-emulator'>
+        <title>The QEMU Emulator</title>
+        <para>
+            The QEMU emulator allows you to simulate your hardware while running your 
+            application or image.  
+            QEMU is installed several ways:  as part of the Poky tree, ADT installation 
+            through a toolchain tarball, or through the ADT Installer.
+        </para>
+    </section>
 
+    <section id='user-space-tools'>
+        <title>User-Space Tools</title>
+        <para>
+            User-space tools are included as part of the distribution.  
+            You will find these tools helpful during development.  
+            The tools include LatencyTOP, PowerTOP, OProfile, Perf, SystemTap, and Lttng-ust.  
+            These tools are common development tools for the Linux platform.
+        <itemizedlist>
+            <listitem><para><emphasis>LatencyTOP</emphasis> – LatencyTOP focuses on latency 
+                that causes skips in audio,
+                stutters in your desktop experience, or situations that overload your server 
+                even when you have plenty of CPU power left.  
+                You can find out more about LatencyTOP at 
+                <ulink url='http://www.latencytop.org/'></ulink>.
+            </para></listitem>
+            <listitem><para><emphasis>PowerTOP</emphasis> – Helps you determine what   
+                software is using the most power.  
+                You can find out more about PowerTOP at 
+                <ulink url='http://www.linuxpowertop.org/'></ulink>.
+            </para></listitem>
+            <listitem><para><emphasis>OProfile</emphasis> – A system-wide profiler for Linux 
+                systems that is capable 
+                of profiling all running code at low overhead.  
+                You can find out more about OProfile at 
+                <ulink url='http://oprofile.sourceforge.net/about/'></ulink>.
+            </para></listitem>
+            <listitem><para><emphasis>Perf</emphasis> – Performance counters for Linux used 
+                to keep track of certain 
+                types of hardware and software events.  
+                For more information on these types of counters see 
+                <ulink url='https://perf.wiki.kernel.org/index.php'></ulink> and click 
+                on “Perf tools.”
+            </para></listitem>
+            <listitem><para><emphasis>SystemTap</emphasis> – A free software infrastructure 
+                that simplifies 
+                information gathering about a running Linux system.  
+                This information helps you diagnose performance or functional problems.  
+                SystemTap is not available as a user-space tool through the Yocto Eclipse IDE Plug-in.  
+                See <ulink url='http://sourceware.org/systemtap'></ulink> for more information 
+                on SystemTap.
+            </para></listitem>
+            <listitem><para><emphasis>Lttng-ust</emphasis> – A User-space Tracer designed to 
+                provide detailed information on user-space activity.  
+                See <ulink url='http://lttng.org/ust'></ulink> for more information on Lttng-ust.
+            </para></listitem>
+        </itemizedlist>
+        </para>
+    </section>
+</section>
 
 </chapter>
 <!--
-- 
1.7.1


