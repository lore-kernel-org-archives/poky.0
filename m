Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 249FB4C81174
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:43:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 09:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="648294443"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 09:43:48 -0800
Message-Id: <e586d72a4c7ac2f71fabdc3412da0caae6216ca5.1295371995.git.ke.yu@intel.com>
In-Reply-To: <cover.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 23:37:26 +0800
Date: Wed, 19 Jan 2011  1:48:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/11] bitbake/fetch2/git: Add backwards compatibility code for branch name handling
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
X-List-Received-Date: Tue, 18 Jan 2011 17:43:51 -0000

this patch has been applied for bitbake/fetch/git, so also apply it for bitbake/fetch/git

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/git.py |   82 ++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 80 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index c621457..e85f1da 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -22,6 +22,7 @@ BitBake 'Fetch' git implementation
 
 import os
 import bb
+import bb.persist_data
 from   bb    import data
 from   bb.fetch2 import Fetch
 from   bb.fetch2 import runfetchcmd
@@ -116,6 +117,7 @@ class Git(Fetch):
 
         repofile = os.path.join(data.getVar("DL_DIR", d, 1), ud.mirrortarball)
 
+
         coname = '%s' % (ud.tag)
         codir = os.path.join(ud.clonedir, coname)
 
@@ -205,11 +207,19 @@ class Git(Fetch):
         output = runfetchcmd("%s log --pretty=oneline -n 1 %s -- 2> /dev/null | wc -l" % (basecmd, tag), d, quiet=True)
         return output.split()[0] != "0"
 
-    def _revision_key(self, url, ud, d):
+    def _revision_key(self, url, ud, d, branch=False):
         """
         Return a unique key for the url
         """
-        return "git:" + ud.host + ud.path.replace('/', '.') + ud.branch
+        key = 'git:' + ud.host + ud.path.replace('/', '.')
+        if branch:
+            return key + ud.branch
+        else:
+            return key
+
+    def generate_revision_key(self, url, ud, d, branch=False):
+        key = self._revision_key(url, ud, d, branch)
+        return "%s-%s" % (key, bb.data.getVar("PN", d, True) or "")
 
     def _latest_revision(self, url, ud, d):
         """
@@ -227,6 +237,74 @@ class Git(Fetch):
             raise bb.fetch2.FetchError("Fetch command %s gave empty output\n" % (cmd))
         return output.split()[0]
 
+    def latest_revision(self, url, ud, d):
+        """
+        Look in the cache for the latest revision, if not present ask the SCM.
+        """
+        persisted = bb.persist_data.persist(d)
+        revs = persisted['BB_URI_HEADREVS']
+
+        key = self.generate_revision_key(url, ud, d, branch=True)
+        rev = revs[key]
+        if rev is None:
+            # Compatibility with old key format, no branch included
+            oldkey = self.generate_revision_key(url, ud, d, branch=False)
+            rev = revs[oldkey]
+            if rev is not None:
+                del revs[oldkey]
+            else:
+                rev = self._latest_revision(url, ud, d)
+            revs[key] = rev
+
+        return str(rev)
+
+    def sortable_revision(self, url, ud, d):
+        """
+
+        """
+        pd = bb.persist_data.persist(d)
+        localcounts = pd['BB_URI_LOCALCOUNT']
+        key = self.generate_revision_key(url, ud, d, branch=True)
+        oldkey = self.generate_revision_key(url, ud, d, branch=False)
+
+        latest_rev = self._build_revision(url, ud, d)
+        last_rev = localcounts[key + '_rev']
+        if last_rev is None:
+            last_rev = localcounts[oldkey + '_rev']
+            if last_rev is not None:
+                del localcounts[oldkey + '_rev']
+                localcounts[key + '_rev'] = last_rev
+
+        uselocalcount = bb.data.getVar("BB_LOCALCOUNT_OVERRIDE", d, True) or False
+        count = None
+        if uselocalcount:
+            count = Fetch.localcount_internal_helper(ud, d)
+        if count is None:
+            count = localcounts[key + '_count']
+        if count is None:
+            count = localcounts[oldkey + '_count']
+            if count is not None:
+                del localcounts[oldkey + '_count']
+                localcounts[key + '_count'] = count
+
+        if last_rev == latest_rev:
+            return str(count + "+" + latest_rev)
+
+        buildindex_provided = hasattr(self, "_sortable_buildindex")
+        if buildindex_provided:
+            count = self._sortable_buildindex(url, ud, d, latest_rev)
+        if count is None:
+            count = "0"
+        elif uselocalcount or buildindex_provided:
+            count = str(count)
+        else:
+            count = str(int(count) + 1)
+
+        localcounts[key + '_rev'] = latest_rev
+        localcounts[key + '_count'] = count
+
+        return str(count + "+" + latest_rev)
+
     def _build_revision(self, url, ud, d):
         return ud.tag
 
-- 
1.7.0.4


