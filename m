Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B6F24C811EB
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536778"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <e693e44d95ebfb898e67bf620af734ca1600a859.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 14:31:39 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 19/29] documentation/bsp-guide/bsp.xml: Commented out three sections.
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

There are some sections now that don't correspond one-to-one with the
standard file structure presented in section 1.1.  So I am commenting them
out for now.  Since I am still in the process of iterating on this
manual I don't want to just delete the information.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 25bc2a8..37e7fe8 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -355,7 +355,7 @@ meta-emenlow/recipes-kernel/linux/linux-bsp-2.6.50/defconfig-bsp
             </para>
         </section>
 
-        <section id='bsp-filelayout-packages'>
+<!--        <section id='bsp-filelayout-packages'>
             <title>Other Software (meta-&lt;bsp_name&gt;/recipes-kernel/*)</title>
 
             <para>
@@ -442,7 +442,7 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
                 Assuming a compatible configuration is used, Poky can process and use these optional pre-compiled 
                 representations to provide much faster build times.
             </para>
-        </section>
+        </section> -->
 
         <section id='bsp-click-through-licensing'>
             <title>BSP 'Click-Through' Licensing Procedure</title>
-- 
1.7.0.4


