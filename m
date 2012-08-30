Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CECAE01439
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 17:15:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Aug 2012 17:15:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,336,1344236400"; d="scan'208";a="186668931"
Received: from unknown (HELO localhost) ([10.255.13.47])
	by azsmga001.ch.intel.com with ESMTP; 29 Aug 2012 17:15:34 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Wed, 29 Aug 2012 19:15:28 -0500
Message-Id: <0a3d9278084a057153154e8ebdabc6f139349b74.1346285456.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <f67c891daeccc13c5e97431b8a7f9959b332a562.1346285456.git.tom.zanussi@intel.com>
References: <f67c891daeccc13c5e97431b8a7f9959b332a562.1346285456.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1346285456.git.tom.zanussi@intel.com>
References: <cover.1346285456.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4] yocto-bsp: add new strip_base() function
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
X-List-Received-Date: Thu, 30 Aug 2012 00:15:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a strip_base() function to remove '/base' from the branch names
presented to the user.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 scripts/lib/bsp/engine.py | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 00ce863..ac5058c 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -449,6 +449,16 @@ def boolean(input_str, name):
         return name
 
 
+def strip_base(input_str):
+    """
+    strip '/base' off the end of input_str, so we can use 'base' in
+    the branch names we present to the user.
+    """
+    if input_str and input_str.endswith("/base"):
+        return input_str[:-len("/base")]
+    return input_str.strip()
+
+
 deferred_choices = {}
 
 def gen_choices_defer(input_line, context, checklist = False):
-- 
1.7.11.4


