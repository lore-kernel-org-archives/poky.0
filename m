Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE4A94C811E6
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034105"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <3df823735eabe6732704e6e05bb27c5932b5b11d.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 13:40:41 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 13/29] documenation/bsp-guide/bsp.xml: Updated the Layer Configuration File section.
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
 documentation/bsp-guide/bsp.xml |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 397ef85..e59417d 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -181,12 +181,14 @@ meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
         </section>
 
         <section id='bsp-filelayout-layer'>
-            <title>Layer Configuration (meta-&lt;bsp_name&gt;/conf/layer.conf)</title>
+            <title>Layer Configuration File</title>
+            <programlisting>
+meta-&lt;bsp_name&gt;/conf/layer.conf 
+            </programlisting>
 
             <para>
                 This file identifies the structure as a Poky layer, identifies the  
-                contents of the layer, and contains information about how Poky should use 
-                it. 
+                contents of the layer, and contains information about how Poky should use it. 
                 Generally, a standard boilerplate file such as the following works:
             </para>
 
-- 
1.7.0.4


