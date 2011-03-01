Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B15BA4C80AAA
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2011 06:07:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="892542938"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2011 06:07:45 -0800
Message-Id: <3d5332852bfd9fda3d3c9e1f0b2e87a3bda7a2d9.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 12:47:12 -0600
Date: Tue, 01 Mar 2011  8:08:37 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 01/12] documentation/poky-ref-manual/ref-images.xml: Update to Images Appendix
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:50 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Added command 'ls meta*/recipes*/images/*.bb' as the command to see the
supported images.  Also added poky-image-lsb as an image and noted
that poky-image-sdk has becom poky-image-sato-dev.

These fixes are in response to alpha testing for release 1.0 Yocto.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-images.xml |   59 +++++++++++++++-----------
 1 files changed, 34 insertions(+), 25 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index b74b523..9477883 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -5,62 +5,71 @@
     <title>Reference: Images</title>
 
     <para>
-        Poky has several standard images covering most people's standard needs. A full 
-        list of image targets can be found by looking in the directories 
-        <filename class="directory">  meta/recipes-core/images/</filename>, 
-        <filename class="directory">  meta/recipes-extended/images/</filename>, 
-        <filename class="directory">  meta/recipes-sato/images/</filename> and 
-        <filename class="directory">  meta/recipes-tbd/meta/</filename>. The standard 
-        images are listed below along with details of what they contain:
+        Poky has several standard images covering most people's standard needs. 
+        Use the following command to list the supported images:
+        <literallayout class='monospaced'>
+     $ ls meta*/recipes*/images/*.bb
+        </literallayout>
+        Images are listed below along with details of what they contain:
     </para>
 
     <itemizedlist>
             <listitem>
                 <para>
-                    <emphasis>poky-image-minimal</emphasis> - A small image, just enough 
-                    to allow a device to boot
+                    <emphasis>poky-image-minimal</emphasis> - A small image just capable 
+                    of allowing a device to boot.
                 </para>
             </listitem>
             <listitem>
                 <para>
-                    <emphasis>poky-image-base</emphasis> - console only image with full
-                    support of target device hardware
+                    <emphasis>poky-image-base</emphasis> - A console-only image that fully 
+                    supports the target device hardware. 
                 </para>
             </listitem>
             <listitem>
                 <para>
-                    <emphasis>poky-image-core</emphasis> - X11 image with simple apps like
-                    terminal, editor and file manager
+                    <emphasis>poky-image-core</emphasis> - An X11 image with simple 
+                    applications such as terminal, editor, and file manager.
                 </para>
             </listitem>
             <listitem>
                 <para>
-                    <emphasis>poky-image-sato</emphasis> - X11 image with Sato theme and
-                    Pimlico applications. Also contains terminal, editor and file manager.
+                    <emphasis>poky-image-sato</emphasis> - An X11 image with Sato theme and
+                    Pimlico applications. 
+                    The image also contains terminal, editor, and file manager.
                 </para>
             </listitem>
             <listitem>
                 <para>
-                    <emphasis>poky-image-sdk</emphasis> - X11 image like poky-image-sato but
-                    also include native toolchain and libraries needed to build applications 
-                    on the device itself. Also includes testing and profiling tools and debug
-                    symbols.
+                    <emphasis>poky-image-sato-dev</emphasis> - An X11 image similar to 
+                    poky-image-sato but
+                    also includes a native toolchain and libraries needed to build applications 
+                    on the device itself. The image also includes testing and profiling tools 
+                    as well as debug symbols.  This image was formerly poky-image-sdk.
                 </para>
             </listitem>
             <listitem>
                 <para>
-                    <emphasis>meta-toolchain</emphasis> - This generates a tarball containing
-                    a standalone toolchain which can be used externally to Poky. It is self
-                    contained and unpacks to the <filename class="directory">/opt/poky</filename>
-                    directory. It also contains a copy of QEMU and the scripts necessary to run 
+                    <emphasis>poky-image-lsb</emphasis> - An image suitable for implementations 
+                    that conform to Linux Standard Base (LSB).
+                </para>
+            </listitem>
+            <listitem>
+                <para>
+                    <emphasis>meta-toolchain</emphasis> - This image generates a tarball 
+                    that contains a stand-alone toolchain that can be used externally to Poky. 
+                    The tarball is self-contained and unpacks to the 
+                    <filename class="directory">/opt/poky</filename> directory. 
+                    The tarball also contains a copy of QEMU and the scripts necessary to run 
                     poky QEMU images.
                 </para>
             </listitem>
             <listitem>
                 <para>
-                    <emphasis>meta-toolchain-sdk</emphasis> - This includes everything in 
+                    <emphasis>meta-toolchain-sdk</emphasis> - This image includes everything in 
                     meta-toolchain but also includes development headers and libraries
-                    forming a complete standalone SDK. See the <link linkend='platdev-appdev-external-sdk'> 
+                    to form a complete standalone SDK. 
+                    See the <link linkend='platdev-appdev-external-sdk'> 
                     External Development Using the Poky SDK</link> section for more information.
                 </para>
             </listitem>
-- 
1.7.1


