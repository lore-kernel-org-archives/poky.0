Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A140E0140A
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 16:18:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Aug 2012 16:18:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,335,1344236400"; d="scan'208";a="193083204"
Received: from unknown (HELO localhost) ([10.255.13.47])
	by orsmga002.jf.intel.com with ESMTP; 29 Aug 2012 16:18:46 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Wed, 29 Aug 2012 18:18:42 -0500
Message-Id: <b5a8505f8b768df981f83dd1ef22e5c61dcd94c7.1346282120.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <f67c891daeccc13c5e97431b8a7f9959b332a562.1346282120.git.tom.zanussi@intel.com>
References: <f67c891daeccc13c5e97431b8a7f9959b332a562.1346282120.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1346282120.git.tom.zanussi@intel.com>
References: <cover.1346282120.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] yocto-bsp: update the help regarding the meta-intel layer
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Aug 2012 23:18:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

With move of ia32-base to oe-core, the only case remaining where
meta-intel needs to be added to bblayers.conf for a new BSP is the
case of an x86 BSP that selects EMGD.

Update the documentation to note that fact.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 2d16d2e..3a1f52c 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -122,9 +122,9 @@ yocto_bsp_create_usage = """
 
  See 'yocto bsp help create' for more detailed instructions.
 
- NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
- presence of the meta-intel layer. Ensure the meta-intel layer is
- present and added to bblayers.conf.
+ NOTE: For x86-based BSPs that select the EMGD xserver, the generated
+ BSP assumes the presence of the meta-intel layer. Ensure the
+ meta-intel layer is present and added to bblayers.conf.
 
  See 'yocto bsp help create' for more detailed instructions.
 """
@@ -183,9 +183,9 @@ DESCRIPTION
       /path/to/poky/meta-mybsp \\
       "
 
-    NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes
-    the presence of the meta-intel layer. Ensure the meta-intel layer
-    is present and added to bblayers.conf.
+    NOTE: For x86-based BSPs that select the EMGD xserver, the
+    generated BSP assumes the presence of the meta-intel layer. Ensure
+    the meta-intel layer is present and added to bblayers.conf.
 
     For example, assuming your poky repo is at /path/to/poky, your new
     BSP layer is at /path/to/poky/meta-mybsp, and your build directory
-- 
1.7.11.4


