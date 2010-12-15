Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F9CE4C811E5
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536774"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <3ff38b2a5c5adfddcc0b37fbb771bfa1f5a91c0b.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 13:11:27 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/29] documentation/bsp-guide/bsp.xml: Added new "License Files" section.
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
index 46746dc..2a96b56 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -118,6 +118,25 @@ meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
 
         </section>
 
+        <section id="bsp-filelayout-license">
+            <title>License Files</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
+            </programlisting>
+
+            <para>
+                These optional files satisfy licensing requirements for the BSP.
+                The type or types of files here can vary depending on the licensing requirements.
+                For example, in the crownbay BSP all licensing requirements are handled with the 
+                <filename>COPYING.MIT</filename> file.  
+            </para>
+
+            <para>
+                Licensing files can be MIT, BSD, GPLv*, and so forth.
+                These files are recommended for the BSP but are optional and totally up to the BSP developer.
+            </para>
+        </section>
+
         <section id="bsp-filelayout-binary">
             <title>Pre-built User Binaries (meta-&lt;bsp_name&gt;/binary/*)</title>
 
-- 
1.7.0.4


