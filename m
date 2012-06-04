Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2435E0143F
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 14:00:30 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 9565830466
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 17:00:23 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jun 2012 14:00:19 -0700
Message-Id: <878ad8b73634c7c7330fbb7e2780f9b8a539681b.1338843506.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 9565830466.4FBFD
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/7] yocto-kernel: use BUILDDIR to find bblayers.conf
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
X-List-Received-Date: Mon, 04 Jun 2012 21:00:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The current code assumes that builddir == srcdir/build, which it
obviously isn't sometimes.  Use BUILDDIR to get the actual builddir
being used.

Fixes [YOCTO #2219].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/lib/bsp/kernel.py |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 360851b..8b3aa72 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -37,7 +37,12 @@ def find_bblayers(scripts_path):
     """
     Find and return a sanitized list of the layers found in BBLAYERS.
     """
-    bblayers_conf = os.path.join(scripts_path, "../build/conf/bblayers.conf")
+    try:
+        builddir = os.environ["BUILDDIR"]
+    except KeyError:
+        print "BUILDDIR not found, exiting. (Did you forget to source oe-init-build-env?)"
+        sys.exit(1)
+    bblayers_conf = os.path.join(builddir, "conf/bblayers.conf")
 
     layers = []
 
-- 
1.7.9.5


