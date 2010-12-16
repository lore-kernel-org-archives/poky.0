Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D7594C811E6
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536781"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <2c9b63decb379f39ca83c7f222cc857a8b218f9e.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Thu, 16 Dec 2010 13:39:14 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 21/29] documentation/bsp-guide/bsp.xml: Updated Layer Configuration File Section
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

Added wording to be sure user knows to replace "bsp" and "_bsp" in the
boilerplate template example with the actual BSP name (i.e. <bsp_name>).

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 8518bf0..5dd4aa7 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -186,7 +186,9 @@ meta-&lt;bsp_name&gt;/conf/layer.conf
             <para>
                 This file identifies the structure as a Poky layer, identifies the  
                 contents of the layer, and contains information about how Poky should use it. 
-                Generally, a standard boilerplate file such as the following works:
+                Generally, a standard boilerplate file such as the following works.
+                In the following example you would replace "bsp" and "_bsp" with the actual name
+                of the BSP (i.e. &lt;bsp_name&gt; from the example template).
             </para>
 
             <para>
-- 
1.7.0.4


