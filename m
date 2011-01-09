Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 266254C811EE
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:41:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2011 03:41:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="644945490"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2011 03:41:04 -0800
Message-Id: <acd6872ab6c1784437d07f6e89058a2464f6affc.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 10:48:34 +0800
Date: Sun, 09 Jan 2011 19:50:15 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/8] bb.fetch2.bzr: add bzr urldata_init
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
X-List-Received-Date: Sun, 09 Jan 2011 11:41:05 -0000

move the bzr specific urldata init from localpath to urldata_init
so that it can be called early

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/bzr.py |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/bzr.py b/bitbake/lib/bb/fetch2/bzr.py
index 3d23b4d..1368f17 100644
--- a/bitbake/lib/bb/fetch2/bzr.py
+++ b/bitbake/lib/bb/fetch2/bzr.py
@@ -34,12 +34,15 @@ class Bzr(Fetch):
     def supports(self, url, ud, d):
         return ud.type in ['bzr']
 
-    def localpath (self, url, ud, d):
-
+    def urldata_init(self, ud, d):
+        """
+        init bzr specific variable within url data
+        """
         # Create paths to bzr checkouts
         relpath = self._strip_leading_slashes(ud.path)
         ud.pkgdir = os.path.join(data.expand('${BZRDIR}', d), ud.host, relpath)
 
+    def localpath (self, url, ud, d):
         revision = Fetch.srcrev_internal_helper(ud, d)
         if revision is True:
             ud.revision = self.latest_revision(url, ud, d)
-- 
1.7.0.4


