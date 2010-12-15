Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9024A4C811E6
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034104"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <b13bf46159c91504f0622fffed36c6021e77508a.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 13:19:09 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/29] documentation/bsp-guide/bsp.xml: Added the README section.
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
 documentation/bsp-guide/bsp.xml |   19 +++++++++++++++++++
 1 files changed, 19 insertions(+), 0 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 2a96b56..fcf10a6 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -137,6 +137,25 @@ meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
             </para>
         </section>
 
+        <section id="bsp-filelayout-readme">
+            <title>README File</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/README
+            </programlisting>
+
+            <para>
+                This file provides information on how to boot the live images that are optionally 
+                included in the <filename>/binary</filename> directory.
+                The <filename>README</filename> file also provides special information needed for 
+                building the image.
+            </para>
+
+            <para>
+                Technically speaking a <filename>README</filename> is optional but it is highly 
+                recommended that every BSP has one.
+            </para>
+        </section>
+
         <section id="bsp-filelayout-binary">
             <title>Pre-built User Binaries (meta-&lt;bsp_name&gt;/binary/*)</title>
 
-- 
1.7.0.4


