Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EB4BE0044A
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:32 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id CA69630450
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:24 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:15 -0700
Message-Id: <a9ff20ece8e46e62aafe68eda5717ec5143266ff.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: CA69630450.39334
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 49/57] yocto-bsp: add standard branch mapping
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:32 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a mechanism to distinguish common-pc variants of standard
branches.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |   21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 8b05809..756b882 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1503,3 +1503,24 @@ def yocto_bsp_list(args, scripts_path, properties_file):
             return False
 
     return True
+
+
+def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
+    """
+    Return the linux-yocto bsp branch to use with the specified
+    kbranch.  This handles the -standard variants for 3.0 and 3.2; the
+    other variants don't need mappings.
+    """
+    if need_new_kbranch == "y":
+        kbranch = new_kbranch
+    else:
+        kbranch = existing_kbranch
+
+    if (kbranch.startswith("standard/default/common-pc-64") or
+        kbranch.startswith("yocto/standard/common-pc-64")):
+        return "bsp/common-pc-64/common-pc-64-standard"
+    if (kbranch.startswith("standard/default/common-pc") or
+        kbranch.startswith("yocto/standard/common-pc")):
+        return "bsp/common-pc/common-pc-standard"
+    else:
+        return "ktypes/standard"
-- 
1.7.9.5


