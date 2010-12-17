Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2A564C811EA
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034112"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:59 -0800
Message-Id: <1c68ec9becd53b0465abe4a841e655615eac6d90.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 17 Dec 2010 08:52:43 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 25/29] documentation/bsp-guide/bsp.xml: Added reference to Kernel documentation.
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:02 -0000

I added a reference to the specific section in the kernel documentation
that describes how to create a BSP Based on an existing similar
BSP.  The tools we have that create the PDF manuals from the DocBook
XML do not support cross-referencing to another PDF manual.  So, I was
left with adding a clunky text-based reference to the section and a link
to the docs page on the web-site.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index cf9c91f..75640cc 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -368,7 +368,9 @@ SRC_URI += "file://defconfig"
             </para>
             <para>
                  You can find more information about creating a BSP that is based on an existing similar
-                 BSP by reading the "Yocto Project Kernel Architecture and Use Manual."
+                 BSP by reading the "Creating a BSP Based on an Existing Similar BSP" section in the 
+                 "<ulink url="http://www.yoctoproject.org/community/documentation">Yocto Project
+                 Kernel Architecture and Use Manual</ulink>".
             </para></note>
             </section>
 
-- 
1.7.0.4


