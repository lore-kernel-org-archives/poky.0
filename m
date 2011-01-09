Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 50E784C8108C
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:40:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2011 03:40:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="875794259"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jan 2011 03:40:36 -0800
Message-Id: <3953d8218c5ce52e6bfb683ee5cc8cfd0ce0d407.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sat, 8 Jan 2011 18:13:51 +0800
Date: Sun, 09 Jan 2011 19:49:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/8] meta: replace bb.fetch with bb.fetcher.instance
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
X-List-Received-Date: Sun, 09 Jan 2011 11:40:59 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/conf/bitbake.conf |    2 +-
 meta/lib/oe/patch.py   |    6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 30fcc79..794adc4 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -537,7 +537,7 @@ UPDATECOMMAND_svn = "/usr/bin/env svn update ${SVNCOOPTS}"
 SRCDATE = "${DATE}"
 SRCREV = "INVALID"
 AUTOREV = "${SRCPV}"
-SRCPV = "${@bb.fetch.get_srcrev(d)}"
+SRCPV = "${@bb.fetcher.instance.get_srcrev(d)}"
 
 SRC_URI = "file://${FILE}"
 
diff --git a/meta/lib/oe/patch.py b/meta/lib/oe/patch.py
index f203d68..86ae4e2 100644
--- a/meta/lib/oe/patch.py
+++ b/meta/lib/oe/patch.py
@@ -72,14 +72,14 @@ class PatchSet(object):
             if not patch.get("remote"):
                 raise PatchError("Patch file must be specified in patch import.")
             else:
-                patch["file"] = bb.fetch.localpath(patch["remote"], self.d)
+                patch["file"] = bb.fetcher.instance.localpath(patch["remote"], self.d)
 
         for param in PatchSet.defaults:
             if not patch.get(param):
                 patch[param] = PatchSet.defaults[param]
 
         if patch.get("remote"):
-            patch["file"] = bb.data.expand(bb.fetch.localpath(patch["remote"], self.d), self.d)
+            patch["file"] = bb.data.expand(bb.fetcher.instance.localpath(patch["remote"], self.d), self.d)
 
         patch["filemd5"] = bb.utils.md5_file(patch["file"])
 
@@ -293,7 +293,7 @@ class QuiltTree(PatchSet):
             if type == "file":
                 import shutil
                 if not patch.get("file") and patch.get("remote"):
-                    patch["file"] = bb.fetch.localpath(patch["remote"], self.d)
+                    patch["file"] = bb.fetcher.instance.localpath(patch["remote"], self.d)
 
                 shutil.copyfile(patch["quiltfile"], patch["file"])
             else:
-- 
1.7.0.4


