Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D91A64C80AAF
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:44 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 16:42:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="720559722"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 16:42:37 -0700
Message-Id: <f4fe81e17bb90481b73939c63872e17d1cb594af.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Mar 2011 08:08:29 -0600
Date: Tue, 15 Mar 2011 17:43:29 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 09/13] documentation/adt-manual/adt-package.xml: Initial file
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This file is the initial XML file for the chapter on optionally
customizing the development packages installation.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-package.xml |  105 ++++++++++++++++++-----------
 1 files changed, 65 insertions(+), 40 deletions(-)

diff --git a/documentation/adt-manual/adt-package.xml b/documentation/adt-manual/adt-package.xml
index 6139442..fc2a1a0 100644
--- a/documentation/adt-manual/adt-package.xml
+++ b/documentation/adt-manual/adt-package.xml
@@ -2,55 +2,80 @@
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
 <chapter id='adt-package'>
+<title>Optionally Customizing the Development Packages Installation</title>
+    <para>
+        Because the Yocto Project is suited for embedded Linux development it is 
+        likely that you will need to customize your development packages installation.  
+        For example, if you are developing a minimal image then you might not need 
+        certain packages (e.g. graphics support packages).  
+        Thus, you would like to be able to remove those packages from your sysroot.
+    </para>
 
-<title>Yocto Project Kernel Architecture and Use Manual</title>
+<section id='package-management-systems'>
+    <title>Package Management Systems</title>
+    <para>
+        The Yocto Project supports the generation of root filesystem files using 
+        three different Package Management Systems (PMS):
+    <itemizedlist>
+        <listitem><para><emphasis>OPKG</emphasis> – A less well known PMS whose use 
+            originated in the OpenEmbedded and OpenWrt embedded Linux projects.  
+            This PMS works with files packaged in an <filename>.ipk</filename> format.
+            See <ulink url='http://en.wikipedia.org/wiki/Opkg'></ulink> for more 
+            information about OPKG.</para></listitem>
+        <listitem><para><emphasis>RPM</emphasis> – A more widely known PMS intended for GNU/Linux 
+            distributions.  
+            This PMS works with files packaged in an <filename>.rms</filename> format.
+            The Yocto Project currently installs through this PMS by default.  
+            See <ulink url='http://en.wikipedia.org/wiki/RPM_Package_Manager'></ulink>
+            for more information about RPM.</para></listitem>
+        <listitem><para><emphasis>Debian</emphasis> – The PMS for Debian-based systems 
+            is built on many PMS tools.  
+            The lower-level PMS tool dpkg forms the base of the Debian PMS.  
+            For information on dpkg see 
+            <ulink url='http://en.wikipedia.org/wiki/Dpkg'></ulink>.</para></listitem>
+    </itemizedlist>
+    </para>
+</section>
 
-<section id='package'>
-    <title>Introduction</title>
+<section id='configuring-the-pms'>
+    <title>Configuring the PMS</title>
+    <para>
+        Whichever PMS you are using you need to be sure that the 
+        <filename>PACKAGE_CLASSES</filename> variable in the <filename>conf/local.conf</filename>
+        file is set to reflect that system.  
+        The first value you choose for the variable specifies the package file format for the root
+        filesystem.
+        Additional values specify additional formats for convenience or testing.  
+        See the configuration file for details.
+    </para>
     <para>
-        The Yocto Project presents the kernel as a fully patched, history-clean git
-        repository. 
-        The git tree represents the selected features, board support,
-        and configurations extensively tested by Yocto Project. 
-        The Yocto Project kernel allows the end user to leverage community
-        best practices to seamlessly manage the development, build and debug cycles.
+        As an example, consider a scenario where you are using OPKG and you want to add 
+        the libglade package to sysroot.
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
+        First, you should generate the ipk file for the libglade package and add it 
+        into a working opkg repository.  
+        Use these commands:
+        <literallayout class='monospaced'>
+     $ bitbake libglade
+     $ bitbake package-index
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
+        Next, source the environment setup script.  
+        Follow that by setting up the installation destination to point to your 
+        sysroot as <filename>&lt;sysroot dir&gt;</filename>.  
+        Finally, have an opkg configuration file <filename>&lt;conf file&gt;</filename>
+        that corresponds to the opkg repository you have just created. 
+        The following command forms should now work:
+        <literallayout class='monospaced'>
+     $ opkg-cl –f &lt;conf file&gt; -o &lt;sysroot dir&gt; update
+     $ opkg-cl –f &lt;conf file&gt;> -o &lt;sysroot dir&gt; --force-overwrite install libglade
+     $ opkg-cl –f &lt;conf file&gt; -o &lt;sysroot dir&gt; --force-overwrite install libglade-dbg
+     $ opkg-cl –f &lt;conf file&gt; -o &lt;sysroot dir&gt; --force-overwrite install libglade-dev
+        </literallayout>
     </para>
 </section>
-
-
-
-
-
-
-
 </chapter>
 <!--
 vim: expandtab tw=80 ts=4
-- 
1.7.1


