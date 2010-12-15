Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D3FE04C811E9
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034106"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <b92a87ebe25524ea52c9c91bae816a85c2dcfd19.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 14:00:11 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/29] documentation/bsp-guide/bsp.xml: Updated the Hardware Configuration Options section
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:01 -0000

I combined the tuning stuff into this section.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   13 ++++++-------
 1 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index e59417d..752cb12 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -213,7 +213,10 @@ BBFILE_PRIORITY_bsp = "5"
         </section>
 
         <section id="bsp-filelayout-machine">
-            <title>Hardware Configuration Options (meta-&lt;bsp_name&gt;/conf/machine/*.conf)</title>
+            <title>Hardware Configuration Options</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/conf/machine/*.conf
+            </programlisting>
 
             <para>
                 The machine files bind together all the information contained elsewhere
@@ -232,16 +235,12 @@ BBFILE_PRIORITY_bsp = "5"
             </para>
 
             <para>
-                At least one machine file is required for a Poky BSP layer.
+                At least one machine file is required for a BSP layer.
                 However, you can supply more than one file.
             </para>
-        </section>
-
-        <section id="bsp-filelayout-tune">
-            <title>Hardware Optimization Options (meta-&lt;bsp_name&gt;/conf/machine/include/tune-*.inc)</title>
 
             <para>
-                These files are shared hardware "tuning" definitions and are commonly used to
+                This directory could also contain shared hardware "tuning" definitions that are commonly used to
                 pass specific optimization flags to the compiler. 
                 An example is <filename>tune-atom.inc</filename>:
             </para>
-- 
1.7.0.4


