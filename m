Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D13A4C811E9
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="585536776"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <bdd59196d136183f8be0761231f302d7ba9d8bf3.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 14:15:01 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 16/29] documentation/bsp-guide/bsp.xml: Removed the recipes-bsp/formfactor directory from the common structure.
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
 documentation/bsp-guide/bsp.xml |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index ba03981..4a3b441 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -82,7 +82,6 @@ meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
 meta-&lt;bsp_name&gt;/conf/layer.conf 
 meta-&lt;bsp_name&gt;/conf/machine/*.conf
 meta-&lt;bsp_name&gt;/recipes-bsp/*
-meta-&lt;bsp_name&gt;/recipes-bsp/formfactor/formfactor/&lt;bsp_name&gt;/*
 meta-&lt;bsp_name&gt;/recipes-graphics/*            
 meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
                 </programlisting>
-- 
1.7.0.4


