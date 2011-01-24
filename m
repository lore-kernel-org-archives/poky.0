Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B07E4C81224
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:22 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 06:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="650514025"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2011 06:29:11 -0800
Message-Id: <2755fa004244eece9d0ef3e9767ca1b18c9ee4e1.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 14:58:26 +0800
Date: Mon, 24 Jan 2011 22:32:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 12/21] bb.fetch2: add "BB_NO_NETWORK" option
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:22 -0000

Sometime user want a purely local fetching, i.e. using local mirror without
any remote netowrk access. BB_NO_NETWORK option is introduced for this purpose

check_network_access() is the guard for BB_NO_NETWOKR option. it should be
put in any place that fetcher use network access

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 466b62e..ad94231 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -474,6 +474,16 @@ def runfetchcmd(cmd, d, quiet = False):
 
     return output
 
+def check_network_access(d, info = ""):
+    """
+    log remote network access, and error if BB_NO_NETWORK is set
+    """
+    if bb.data.getVar("BB_NO_NETWORK", d, True) == "1":
+        bb.error("BB_NO_NETWORK is set, but fetcher access netowrk with [%s] " % info)
+        raise FetchError("BB_NO_NETWORK violation")
+    else:
+        bb.note("Fetcher access netowrk with [%s]" % info)
+
 def try_mirrors(d, uri, mirrors, check = False, force = False):
     """
     Try to use a mirrored version of the sources.
-- 
1.7.0.4


