Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B8C44C8121D
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 06:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="650513993"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2011 06:29:03 -0800
Message-Id: <7cad5385f1a711e50cbd023be8892da6d358be97.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 23:17:50 +0800
Date: Mon, 24 Jan 2011 22:32:50 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 07/21] bbclasee: rename "go" with "download"
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:21 -0000

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


