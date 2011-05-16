Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E552F4C80A9F
	for <poky@yoctoproject.org>; Mon, 16 May 2011 16:04:24 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 May 2011 14:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,221,1304319600"; 
   d="scan'208";a="2984023"
Received: from unknown (HELO localhost) ([10.255.12.109])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2011 14:04:23 -0700
Message-Id: <f7cab424d2c8e60bed411f2fbcc816154bc66e5b.1305579527.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305579527.git.tom.zanussi@intel.com>
References: <cover.1305579527.git.tom.zanussi@intel.com>
Old-Date: Mon, 16 May 2011 15:54:21 -0500
Date: Mon, 16 May 2011 16:03:12 -0500
To: scott.m.rifenbark@intel.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] bsp-guide: add short blurb on how to use BSP layers
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
X-List-Received-Date: Mon, 16 May 2011 21:04:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Give users a minimal hint on how to add BSP layers to the build system
and point them to more detailed info on the topic.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/bsp-guide/bsp.xml |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index c659012..8bfa2b3 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -70,6 +70,24 @@
             </para>
 
             <para>
+                The meta-&lt;bsp_name&gt; base directory is actually
+                the root of a 'BSP layer' and is what you add to the
+                BBLAYERS variable in build/conf/bbblayers.conf in
+                order to have the build system 'see' the BSP
+                definition and build an image from it.  For example:
+                <programlisting>
+BBLAYERS = " \
+  /usr/local/src/yocto/meta \
+  /usr/local/src/yocto/meta-yocto \
+  /usr/local/src/yocto/meta-&lt;bsp_name&gt; \
+  "
+                </programlisting>
+		For more detailed information on layers, please see
+		the 'Bitbake Layers' section in the Poky Reference
+		Manual.
+            </para>
+
+            <para>
                 Below is the common form for the file structure inside a base directory.
                 While you can use this basic form for the standard, realize that the actual structures
                 for specific BSPs could differ. 
-- 
1.7.0.4


