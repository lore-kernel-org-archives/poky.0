Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E15F4C811F0
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:51:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Dec 2010 05:51:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="691068259"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Dec 2010 05:51:38 -0800
Message-Id: <df2a5d3ada569ef586e7e402a6d3217a46b1155a.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 16:20:34 +0800
Date: Mon, 27 Dec 2010 21:58:35 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 8/8] Fetcher: only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"
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
X-List-Received-Date: Mon, 27 Dec 2010 13:51:39 -0000

we should cache SRCREV whenever possible, the only exception is
when SREREV is auto rev. so change the logic to only set __BB_DONT_CACHE
at SRCREV = "${AUTOREV}" case

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/__init__.py |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__init__.py
index c710931..1a08725 100644
--- a/bitbake/lib/bb/fetch/__init__.py
+++ b/bitbake/lib/bb/fetch/__init__.py
@@ -374,6 +374,7 @@ def get_srcrev(d):
 
     scms = []
 
+    autorev = False
     # Only call setup_localpath on URIs which supports_srcrev()
     urldata = init(bb.data.getVar('SRC_URI', d, 1).split(), d, False)
     for u in urldata:
@@ -382,12 +383,14 @@ def get_srcrev(d):
             if not ud.setup:
                 ud.setup_localpath(d)
             scms.append(u)
+            if ud.autorev:
+                autorev = True
 
     if len(scms) == 0:
         bb.msg.error(bb.msg.domain.Fetcher, "SRCREV was used yet no valid SCM was found in SRC_URI")
         raise ParameterError
 
-    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
+    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache" and autorev:
         bb.data.setVar('__BB_DONT_CACHE', '1', d)
 
     if len(scms) == 1:
@@ -524,6 +527,7 @@ class FetchData(object):
         if not self.pswd and "pswd" in self.parm:
             self.pswd = self.parm["pswd"]
         self.setup = False
+        self.autorev = False
 
         if "name" in self.parm:
             self.md5_name = "%s.md5sum" % self.parm["name"]
@@ -688,6 +692,7 @@ class Fetch(object):
             raise InvalidSRCREV("Please set SRCREV to a valid value")
         if rev == "AUTOINC":
             rev = ud.method.latest_revision(ud.url, ud, d)
+            ud.autorev = True
 
         return rev
 
-- 
1.7.0.4


