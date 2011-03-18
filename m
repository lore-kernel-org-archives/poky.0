Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3B8D4C80AC0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:06 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Mar 2011 09:59:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="404782287"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by azsmga001.ch.intel.com with ESMTP; 18 Mar 2011 09:59:06 -0700
Message-Id: <68b252956724a1a882317057daa9587809f1dceb.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Mar 2011 07:14:34 -0600
Date: Fri, 18 Mar 2011 10:59:59 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 14/15] documentation/poky-ref-manual/extendpoky.xml: Formfactor path corrected
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:07 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I changed the path 'meta/packages/formfactor/files/config'
to 'meta/recipes-bsp/formfactor/files/config' per Joshua Lock's
instruction for correctness.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/extendpoky.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index 8e41031..5bf22e5 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -508,7 +508,7 @@ COMPATIBLE_MACHINE = '(qemux86|qemumips)'
                 where <filename>MACHINENAME</filename> is the name for which this information
                 applies. 
                 For information about the settings available and the defaults, see 
-                <filename>meta/packages/formfactor/files/config</filename>. 
+                <filename>meta/recipes-bsp/formfactor/files/config</filename>. 
                 Following is an example for qemuarm:
             </para>
             <programlisting>
-- 
1.7.1


