Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EDA44C811EA
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034107"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <2b3a3d00e51ce637e932656296f1d14bec2d5985.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 14:13:20 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 15/29] documentation/bsp-guide/bsp.xml: Added a Miscellaneous Recipe Files section
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

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 752cb12..ba03981 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -265,6 +265,24 @@ TARGET_CC_ARCH = "-m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse"
             </para>
         </section>
 
+        <section id='bsp-filelayout-misc-recipes'>
+            <title>Miscellaneous Recipe Files</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/recipes-bsp/*
+            </programlisting>
+
+            <para>
+                This directory contains miscellaneous recipe files for the BSP.
+                Most notably would be the formactor files.
+                For example, in the crownbay BSP there is a <filename>machconfig</filename> file and a
+                <filename>formfactor_0.0.bbappend</filename> file:
+                <programlisting>
+meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
+meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+                </programlisting>
+            </para>
+        </section>
+
         <section id='bsp-filelayout-kernel'>
             <title>Linux Kernel Configuration (meta-&lt;bsp_name&gt;/recipes-kernel/linux/*)</title>
 
-- 
1.7.0.4


