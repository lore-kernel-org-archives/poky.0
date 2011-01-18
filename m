Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C5174C81200
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:43:59 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Jan 2011 09:43:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="376274580"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2011 09:43:58 -0800
Message-Id: <c024fc6d73b44dbd01faa07e8915d239cf742a63.1295371995.git.ke.yu@intel.com>
In-Reply-To: <cover.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 23:17:50 +0800
Date: Wed, 19 Jan 2011  1:48:20 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/11] bbclasee: rename "go" with "download"
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
X-List-Received-Date: Tue, 18 Jan 2011 17:43:59 -0000

no functional change

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/base.bbclass   |    5 ++++-
 meta/classes/sstate.bbclass |    5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 23b17f2..d1d60f7 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -135,7 +135,10 @@ python base_do_fetch() {
 		raise bb.build.FuncFailed("Malformed URL: %s" % value)
 
 	try:
-		bb.fetch.go(localdata)
+		if bb.fetch.__version__ == "1":
+			bb.fetch.go(localdata)
+		else:
+			bb.fetch.download(localdata)
 	except bb.fetch.MissingParameterError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("Missing parameters: %s" % value)
diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index b6e6c92..fa184bc 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -319,7 +319,10 @@ def pstaging_fetch(sstatepkg, d):
         # we will build the package
         try:
             bb.fetch.init([srcuri], localdata)
-            bb.fetch.go(localdata, [srcuri])
+            if bb.fetch.__version__ == "1":
+                bb.fetch.go(localdata, [srcuri])
+            else:
+                bb.fetch.download(localdata, [srcuri])
             # Need to optimise this, if using file:// urls, the fetcher just changes the local path
             # For now work around by symlinking
             localpath = bb.data.expand(bb.fetch.localpath(srcuri, localdata), localdata)
-- 
1.7.0.4


