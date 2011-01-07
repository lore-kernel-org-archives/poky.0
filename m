Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 033074C810AF
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 18:32:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2011 16:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,285,1291622400"; d="scan'208";a="590650612"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2011 16:32:32 -0800
Message-Id: <bcb58492430f1497293493207d10cb26c8d0514e.1294359880.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1294359880.git.scott.m.rifenbark@intel.com>
References: <cover.1294359880.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Old-Date: Thu, 6 Jan 2011 12:55:42 -0800
Date: Thu, 06 Jan 2011 16:31:35 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] documentation/yocto-project-qs/yocto-project-qs.xml: Corrections to Using Pre-Built Binaries and QEMU section.
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
X-List-Received-Date: Fri, 07 Jan 2011 00:32:33 -0000

Made several small changes:

 - Added a period to three-bullet list for consistency
 - grammar fix to sentence
 - Added clarification for getting stuff from qemu URL
 - Fixed the forms for the image and the file system image

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   15 +++++++++++----
 1 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 1c45cde..ca2794b 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -302,7 +302,7 @@
          <itemizedlist>
              <listitem>
                  <para>
-                     Install the standalone Yocto toolchain tarball
+                     Install the standalone Yocto toolchain tarball.
                  </para>
              </listitem>
              <listitem>
@@ -319,7 +319,7 @@
          </itemizedlist>
 
          <para>
-             You can download the pre-built toolchain which includes the poky-qemu script and support files from <ulink url='http://yoctoproject.org/downloads/yocto-0.9/toolchain/'></ulink>.  These are available for i586 (32-bit) and x86_64 (64 bit) host machines, targeting each of the 5 supported target architectures. The tarballs are self contained and install into /opt/poky.
+             You can download the pre-built toolchain, which includes the poky-qemu script and support files, from <ulink url='http://yoctoproject.org/downloads/yocto-0.9/toolchain/'></ulink>.  These are available for i586 (32-bit) and x86_64 (64 bit) host machines, targeting each of the five supported target architectures. The tarballs are self contained and install into <filename>/opt/poky</filename>.
              Use these commands to install the toolchain tarball (taking the 64 bit host, 32 bit i586 target as an example):
          </para>
 
@@ -331,13 +331,20 @@
          </para>
 
          <para>
-             You can download the pre-built Linux kernel and the file image system from <ulink url='http://yoctoproject.org/downloads/yocto-0.9/'></ulink>.  
+             You can download the pre-built Linux kernel and the file image system suitable for 
+             running in the emulator QEMU from 
+             <ulink url='http://yoctoproject.org/downloads/yocto-0.9/qemu'></ulink>.
+             Be sure to use the kernel and file image system that matches the architecture you want 
+             to simulate.
+         </para>
+       
+         <para>  
              The kernel and file image system have the following forms, respectively:
          </para>
 
           <literallayout class='monospaced'>
      *zImage*qemu*.bin
-     poky-image-*-qemu*.ext2.bz2
+     yocto-image-*-qemu*.ext3.bz2
           </literallayout>
 
          <para>
-- 
1.7.0.4


