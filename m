Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7865C4C80A59
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 17:15:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2011 15:15:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,470,1291622400"; d="scan'208";a="887451027"
Received: from unknown (HELO localhost) ([10.255.15.30])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2011 15:15:44 -0800
Message-Id: <647aaad6fb8b9c22c5287d387cb1fb691a7bd5ee.1297724957.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1297724957.git.scott.m.rifenbark@intel.com>
References: <cover.1297724957.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Feb 2011 17:04:23 -0600
Date: Mon, 14 Feb 2011 17:16:19 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 6/6] documentation/kernel-manual/kernel-how-to.xml: More changes to the creating BSP section.
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
X-List-Received-Date: Mon, 14 Feb 2011 23:15:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These changes implemented Bruce Ashfield's next round of changes to the
section 4.3.3 example.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |   29 ++++++++++++++----------
 1 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 07e4d78..c3c9569 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1088,21 +1088,26 @@ That's it. Configure and build.
                 </para></listitem>
                 
                 <listitem><para>
-                    Point the build at the new kernel git tree.
-                </para>
+                    In a layer, create a <filename>linux-yocto_git.bbappend</filename> 
+                    file with the following:
+                </para>       
                 
                 <para>
-                    You can do this by commenting out the SRC_URI variable in 
-                    <filename>meta/recipes-kernel/linux/linux-yocto_git.bb</filename> and using a SRC_URI 
-                    that points to your new bare git tree.
-                    You should also be able to do this in <filename>linux-yocto_git.bbappend</filename> in the layer:
                     <literallayout class='monospaced'>
-     # To use a staged, on-disk bare clone of a Wind River Kernel, use a variant of the 
-     # below SRC_URI = "git://///path/to/kernel/default_kernel.git;fullclone=1"
-     #
-     SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine
-\
-     git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
+     COMPATIBLE_MACHINE = ${MACHINE}
+
+     # It is often nice to have a local clone of the kernel repository, to
+     # allow patches to be staged, branches created, and so forth.  Modify
+     # KSRC to point to your local clone as appropriate.
+
+     # KSRC ?= /path/to/your/bare/clone/yocto-kernel
+
+     # KMACHINE is the branch to be built, or alternateively 
+     # KBRANCH can be directly set.
+
+     # KBRANCH ?= "${KMACHINE}-${LINUX_KERNEL_TYPE}"
+
+     # SRC_URI = "git://${KSRC};nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
                     </literallayout>
                 </para>
                 
-- 
1.7.1


