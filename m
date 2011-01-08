Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2D5864C8108C
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 09:41:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Jan 2011 07:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="694852465"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 08 Jan 2011 07:41:10 -0800
Message-Id: <7798495f49f90ea669f2f396aacf3c5844f0dbed.1294501386.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1294501386.git.dongxiao.xu@intel.com>
References: <cover.1294501386.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Sat, 8 Jan 2011 08:30:51 +0800
Date: Sat, 08 Jan 2011 23:53:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Sat, 08 Jan 2011 15:41:11 -0000

For certain tasks, we need additional information in build stamp file
except the task name and file name. stamp-extra-info is introduced as
an flag adding to the end of stamp file name.

We also implement a blacklist, in which extra stamp information will
not be added.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 bitbake/lib/bb/siggen.py |   14 +++++++++++++-
 1 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 4dc09b3..6c5a227 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -43,7 +43,17 @@ class SignatureGenerator(object):
         return
 
     def stampfile(self, stampbase, file_name, taskname):
-        return "%s.%s" % (stampbase, taskname)
+        stamp_extra_info = (self.data.getVarFlag(taskname, 'stamp-extra-info', True) or self.data.getVar('BB_STAMP_EXTRA', True) or "")
+
+        if self.stampblacklist:
+            self.sbl = re.compile(self.stampblacklist)
+        else:
+            self.sbl = None
+
+        if self.sbl and self.sbl.search(file_name):
+            return "%s.%s" % (stampbase, taskname)
+
+        return ("%s.%s.%s" % (stampbase, taskname, stamp_extra_info)).rstrip('.')
 
 class SignatureGeneratorBasic(SignatureGenerator):
     """
@@ -59,6 +69,8 @@ class SignatureGeneratorBasic(SignatureGenerator):
         self.lookupcache = {}
         self.basewhitelist = (data.getVar("BB_HASHBASE_WHITELIST", True) or "").split()
         self.taskwhitelist = data.getVar("BB_HASHTASK_WHITELIST", True) or None
+        self.stampblacklist = data.getVar("BB_STAMPTASK_BLACKLIST", True) or None
+        self.data = data
 
         if self.taskwhitelist:
             self.twl = re.compile(self.taskwhitelist)
-- 
1.6.3.3


