Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 495584C8120C
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536786"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <5abbaafe9549fb4cb3b24b4298e4760b0ab8e2af.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 17 Dec 2010 16:59:47 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 29/29] documentation/bsp-guide/bsp.xml: Spell checked the file.
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

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index e2c9487..f5fd217 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -260,7 +260,7 @@ TARGET_CC_ARCH = "-m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse"
                 files included with Poky itself.
             </para>
             <para>
-                Both the base package architecuture file and the tune file are optional for a Poky BSP layer.
+                Both the base package architecture file and the tune file are optional for a Poky BSP layer.
             </para>
             </section>
 
@@ -330,7 +330,7 @@ meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto-stable.bbappend
                 directory.
             </para>
             <para>
-                Supppose you use a BSP that uses the <filename>linux-yocto-stable_git.bb</filename> kernel, 
+                Suppose you use a BSP that uses the <filename>linux-yocto-stable_git.bb</filename> kernel, 
                 which is the preferred kernel to use for developing a new BSP using the Yocto Project.
                 In other words, you have selected the kernel in your 
                 <filename>&lt;bsp_name&gt;.conf</filename> file by adding the following statement:
@@ -369,7 +369,7 @@ KMACHINE_crownbay = "crownbay"
             </para>
             <para>
                 For example, suppose you had a set of configuration options in a file called 
-                <filename>defonfig</filename>.  
+                <filename>defconfig</filename>.  
                 If you put that file inside a directory named 
                 <filename class='directory'>/linux-yocto-stable</filename> and then added 
                 a SRC_URI statement such as the following to the append file, those configuration
@@ -381,7 +381,7 @@ SRC_URI += "file://defconfig"
             <para>
                 As mentioned earlier, you can group related configurations into multiple files and 
                 name them all in the SRC_URI statement as well.
-                For example, you could group separate configurations specifically for ethernet and graphics
+                For example, you could group separate configurations specifically for Ethernet and graphics
                 into their own files and add those by using a SRC_URI statement like the 
                 following in your append file:
                 <programlisting>
@@ -409,7 +409,7 @@ SRC_URI += "file://defconfig \
                 In general, however, the Yocto Project maintainers take care of moving the SRC_URI-specified 
                 configuration options to the <filename class='directory'>wrs_meta</filename> branch.
                 Not only is it easier for BSP developers to not have to worry about putting those 
-                configurations in the branch, but having the manintainers do it allows them to apply 
+                configurations in the branch, but having the maintainers do it allows them to apply 
                 'global' knowledge about the kinds of common configuration options multiple BSPs in 
                 the tree are typically using.  
                 This allows for promotion of common configurations into common features.
-- 
1.7.0.4


