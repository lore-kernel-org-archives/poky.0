Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76AA7E0027E
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 11:43:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 11:43:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="204473764"
Received: from duke.jf.intel.com (HELO localhost) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 11 Oct 2012 11:43:55 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 11:43:50 -0700
Message-Id: <638aedeaf9679f47e4b91b93f43556fb4bc27fd9.1349980878.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
Subject: [PATCH 2/8] classes/cml1: ensure -c menuconfig forces a rebuild next time
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
X-List-Received-Date: Thu, 11 Oct 2012 18:43:56 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Ensure the following results in the kernel being rebuilt, repackaged and
re-deployed in the final step:

bitbake virtual/kernel
bitbake -c menuconfig virtual/kernel
[ make changes to the kernel configuration and save ]
bitbake virtual/kernel

If there are no changes to the configuration saved, the rebuild will not
be triggered.

Note that this relies on a function recently added to BitBake and
requires full hashing (i.e. BB_SIGNATURE_HANDLER must be set to a
signature handler that inherits from BasicHash) - if this is not the
case or the function is not available in the version of BitBake being
used this change will do nothing.

Fixes [YOCTO #2256].

(From OE-Core rev: 9bf6b60e1599cf5dd87089d42584583cdfd6807a)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/cml1.bbclass |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/meta/classes/cml1.bbclass b/meta/classes/cml1.bbclass
index d429188..678d23c 100644
--- a/meta/classes/cml1.bbclass
+++ b/meta/classes/cml1.bbclass
@@ -10,7 +10,23 @@ addtask configure after do_unpack do_patch before do_compile
 inherit terminal
 
 python do_menuconfig() {
+        try:
+            mtime = os.path.getmtime(".config")
+        except OSError:
+            mtime = 0
+
         oe_terminal("make menuconfig", '${PN} Configuration', d)
+
+        # FIXME this check can be removed when the minimum bitbake version has been bumped
+        if hasattr(bb.build, 'write_taint'):
+            try:
+                newmtime = os.path.getmtime(".config")
+            except OSError:
+                newmtime = 0
+
+            if newmtime > mtime:
+                bb.note("Configuration changed, recompile will be forced")
+                bb.build.write_taint('do_compile', d)
 }
 do_menuconfig[nostamp] = "1"
 addtask menuconfig after do_configure
-- 
1.7.9.5


