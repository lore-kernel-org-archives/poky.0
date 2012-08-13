Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96EE9E013B2
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:18 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D0AF330444
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:11 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:10 -0700
Message-Id: <f7c20a6bcf109f0fd124cf4003801db153c5d725.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D0AF330444.50BFC
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 44/57] yocto-bsp: add new strip_base() function
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a strip_base() function to remove '/base' from the branch names
presented to the user.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 8e53f00..cda1d14 100644
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
1.7.9.5


