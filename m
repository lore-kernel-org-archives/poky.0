Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28DE5E0140C
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:28 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 0BA542FE88
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:21 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:40:53 -0700
Message-Id: <2a0016010e4ad955f66823ed9ad8c7cf534020ec.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 0BA542FE88.2309E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 03/31] yocto-bsp: clarify help with reference to meta-intel
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The current yocto-bsp help assumes knowledge that the meta-intel layer
needs to be cloned before it's put into the BBLAYERS.  Avoid the
guesswork and state the details explicitly in the help.

Also, the shorter 'usage' string doesn't mention it at all; it would
help to at minimum mention it and refer the user to the detailed help.

Fixes [YOCTO #2330].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/lib/bsp/help.py |   48 +++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 44 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index f78b09b..2d16d2e 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -115,6 +115,18 @@ yocto_bsp_create_usage = """
  'properties' that will be used to fill out the BSP-specific portions
  of the BSP.  The possible values for the 'karch' paramter can be
  listed via 'yocto-bsp list karch'.
+
+ NOTE: Once created, you should add your new layer to your
+ bblayers.conf file in order for it to be subsequently seen and
+ modified by the yocto-kernel tool.
+
+ See 'yocto bsp help create' for more detailed instructions.
+
+ NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
+ presence of the meta-intel layer. Ensure the meta-intel layer is
+ present and added to bblayers.conf.
+
+ See 'yocto bsp help create' for more detailed instructions.
 """
 
 yocto_bsp_create_help = """
@@ -156,12 +168,40 @@ DESCRIPTION
     current directory, and is useful for debugging.
 
     NOTE: Once created, you should add your new layer to your
-    bblayers.conf file in order for it to be subsquently seen and
+    bblayers.conf file in order for it to be subsequently seen and
     modified by the yocto-kernel tool.
 
-    NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
-    presence of the of the meta-intel layer, so you should also have a
-    meta-intel layer present and added to your bblayers.conf as well.
+    For example, assuming your poky repo is at /path/to/poky, your new
+    BSP layer is at /path/to/poky/meta-mybsp, and your build directory
+    is /path/to/build:
+
+    $ gedit /path/to/build/conf/bblayers.conf
+
+    BBLAYERS ?= " \\
+      /path/to/poky/meta \\
+      /path/to/poky/meta-yocto \\
+      /path/to/poky/meta-mybsp \\
+      "
+
+    NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes
+    the presence of the meta-intel layer. Ensure the meta-intel layer
+    is present and added to bblayers.conf.
+
+    For example, assuming your poky repo is at /path/to/poky, your new
+    BSP layer is at /path/to/poky/meta-mybsp, and your build directory
+    is /path/to/build:
+
+    $ cd /path/to/poky
+    $ git clone git://git.yoctoproject.org/meta-intel.git
+
+    $ gedit /path/to/build/conf/bblayers.conf
+
+    BBLAYERS ?= " \\
+      /path/to/poky/meta \\
+      /path/to/poky/meta-yocto \\
+      /path/to/poky/meta-intel \\
+      /path/to/poky/meta-mybsp \\
+      "
 """
 
 yocto_bsp_list_usage = """
-- 
1.7.9.5


