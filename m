Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E81E4C811EA
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536785"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <7cd6a5973905dcd959821d218f091401d7e66f72.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 17 Dec 2010 16:53:59 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 28/29] documentation/bsp-guide/bsp.xml: Updated Linux Kernel Configuration section.
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:02 -0000

Another round of feedback from Tom Z applied.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   17 +++++++++++------
 1 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 7909bb5..e2c9487 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -315,7 +315,7 @@ meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
             <section id='bsp-filelayout-kernel'>
             <title>Linux Kernel Configuration</title>
             <programlisting>
-meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
+meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto-stable.bbappend
             </programlisting>
 
             <para>
@@ -330,21 +330,26 @@ meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
                 directory.
             </para>
             <para>
-                Consider a BSP that uses the <filename>linux-yocto-stable_git.bb</filename> kernel, 
+                Supppose you use a BSP that uses the <filename>linux-yocto-stable_git.bb</filename> kernel, 
                 which is the preferred kernel to use for developing a new BSP using the Yocto Project.
+                In other words, you have selected the kernel in your 
+                <filename>&lt;bsp_name&gt;.conf</filename> file by adding the following statement:
+                <programlisting>
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
+                </programlisting>
                 You would use the <filename>linux-yocto-stable_git.bbappend</filename> file to append 
                 specific BSP settings to the kernel, thus configuring the kernel for your particular BSP.
             </para>
             <para>
-                Consider an example for the existing "crownbay" BSP.
-                The append file used for the "crownbay" BSP is:
+                Now take a look at the existing "crownbay" BSP.
+                The append file used is:
                 <programlisting>
 meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
                 </programlisting>
                 The file contains the following:
                 <programlisting>
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
-COMPATIBLE_MACHINE_crownbay = "cronwbay"
+COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay = "crownbay"
                 </programlisting>
                 This append file adds "crownbay" as a compatible machine,
@@ -366,7 +371,7 @@ KMACHINE_crownbay = "crownbay"
                 For example, suppose you had a set of configuration options in a file called 
                 <filename>defonfig</filename>.  
                 If you put that file inside a directory named 
-                <filename class='directory'>/linux-yocto-stable_git</filename> and then added 
+                <filename class='directory'>/linux-yocto-stable</filename> and then added 
                 a SRC_URI statement such as the following to the append file, those configuration
                 options will be picked up and applied when the kernel is built.
                 <programlisting>
-- 
1.7.0.4


