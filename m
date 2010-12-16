Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E5054C81200
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034110"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <11c3368cb12855153d3ea6775044ee3086997a5e.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Thu, 16 Dec 2010 13:54:15 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 22/29] documentation/bsp-guild/bsp.xml: Updated Miscellaneous Recipe Files section
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

Found a mis-spelling that I corrected.
Also added wording to indicate this directory is optional.
Put in a note telling that defaults are set if a formfactor is
not found.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    9 +++++++--
 1 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 5dd4aa7..2120a1b 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -271,8 +271,8 @@ meta-&lt;bsp_name&gt;/recipes-bsp/*
             </programlisting>
 
             <para>
-                This directory contains miscellaneous recipe files for the BSP.
-                Most notably would be the formactor files.
+                This optional directory contains miscellaneous recipe files for the BSP.
+                Most notably would be the formfactor files.
                 For example, in the crownbay BSP there is a <filename>machconfig</filename> file and a
                 <filename>formfactor_0.0.bbappend</filename> file:
                 <programlisting>
@@ -280,6 +280,11 @@ meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
 meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
                 </programlisting>
             </para>
+
+            <note><para>
+                If a BSP does not have a formfactor entry, defaults are established according to
+                the configuration script.
+            </para></note>
             </section>
 
             <section id='bsp-filelayout-recipes-graphics'>
-- 
1.7.0.4


