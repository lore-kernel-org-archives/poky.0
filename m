Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C26984C811E5
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536775"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <cb0dc62c4bf92b834828b138457c66aa20f25c8f.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 13:26:13 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/29] documentation/bsp-guide/bsp.xml: Updated the Pre-built User Binaries section.
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:00 -0000

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   14 ++++++++++----
 1 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index fcf10a6..397ef85 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -157,7 +157,10 @@ meta-&lt;bsp_name&gt;/README
         </section>
 
         <section id="bsp-filelayout-binary">
-            <title>Pre-built User Binaries (meta-&lt;bsp_name&gt;/binary/*)</title>
+            <title>Pre-built User Binaries</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
+            </programlisting>
 
             <para>
                 This optional area contains useful pre-built kernels and userspace filesystem 
@@ -165,10 +168,13 @@ meta-&lt;bsp_name&gt;/README
                 This directory contains the Application Development Toolkit (ADT) and minimal
                 live images when the BSP is has been "tar-balled" and placed on the Yocto Project website. 
                 You can use these kernels and images to get a system running and quickly get started 
-                on development tasks. 
+                on development tasks.
+            </para>
+
+            <para> 
                 The exact types of binaries present are highly hardware-dependent.
-                However, a README file should be present that explains how to use the kernels and 
-                images with the target hardware. 
+                However, a README file should be present in the BSP file structure that explains how to use 
+                the kernels and images with the target hardware. 
                 If pre-built binaries are present, source code to meet licensing requirements must also 
                 be provided in some form.
             </para>
-- 
1.7.0.4


