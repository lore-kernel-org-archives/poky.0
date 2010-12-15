Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0D3D44C811E1
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:23:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536771"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <92976b91d862d9a4bcba363243df60647bdd9f0e.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 09:28:22 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/29] documentation/bsp-guide/bsp.xml: Inserted text before the file structure example
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

Added some text in section 1.1 explaining that the file structure example
is an example and that the file structure of specific BSPs could differ.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   10 ++++------
 1 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 10fff0b..874ef6d 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -41,11 +41,6 @@
             the build system they are using.
         </para>
 
-        <note><para>
-            The file structure shown below is only an example and actual structures for 
-            specific BSPs could differ.
-        </para></note>
-
         <para>
             The BSP specification does not include a build system or other tools -
             it is concerned with the hardware-specific components only. 
@@ -75,7 +70,10 @@
             </para>
 
             <para>
-                The file structure inside the base directory takes on the following form:
+                Below is the common form for the file structure inside a base directory.
+                While you can use this basic form for the standard, realize that the actual structures
+                for specific BSPs could differ. 
+
                 <programlisting>
 meta-&lt;bsp_name&gt;/                                
 meta-&lt;bsp_name&gt;/binary/zImage
-- 
1.7.0.4


