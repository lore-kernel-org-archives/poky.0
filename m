Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A49194C811EB
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:06:15 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2011 23:06:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="694789415"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2011 23:06:14 -0800
Message-Id: <7a4915dda95b6ef41798e09d15ce78fa05c767e8.1294469496.git.ke.yu@intel.com>
In-Reply-To: <cover.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 7 Jan 2011 16:30:10 +0800
Date: Sat, 08 Jan 2011 15:15:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 7/7] bbclass: replace the bb.fetch referrence with bb.fetcher instance
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
X-List-Received-Date: Sat, 08 Jan 2011 07:06:15 -0000

bb.fetcher.instance is a wraper for bb.fetch/bb.fetch2, which
allow easy switch between bb.fetch and bb.fetch2. so replace
all the bb.fetch referrence with bb.fetcher.instance

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/base.bbclass          |   20 ++++++++++----------
 meta/classes/distrodata.bbclass    |   18 +++++++++---------
 meta/classes/patch.bbclass         |    4 ++--
 meta/classes/sstate.bbclass        |   10 +++++-----
 meta/classes/utility-tasks.bbclass |   12 ++++++------
 meta/classes/utils.bbclass         |    2 +-
 6 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index f8ce123..eb4bac2 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -126,8 +126,8 @@ python base_do_fetch() {
 		return 1
 
 	try:
-		bb.fetch.init(src_uri.split(),d)
-	except bb.fetch.NoMethodError:
+		bb.fetcher.instance.init(src_uri.split(),d)
+	except bb.fetcher.instance.NoMethodError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("No method: %s" % value)
 	except bb.MalformedUrl:
@@ -135,14 +135,14 @@ python base_do_fetch() {
 		raise bb.build.FuncFailed("Malformed URL: %s" % value)
 
 	try:
-		bb.fetch.go(localdata)
-	except bb.fetch.MissingParameterError:
+		bb.fetcher.instance.go(localdata)
+	except bb.fetcher.instance.MissingParameterError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("Missing parameters: %s" % value)
-	except bb.fetch.FetchError:
+	except bb.fetcher.instance.FetchError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("Fetch failed: %s" % value)
-	except bb.fetch.MD5SumError:
+	except bb.fetcher.instance.MD5SumError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("MD5  failed: %s" % value)
 	except:
@@ -242,14 +242,14 @@ python base_do_unpack() {
 	localdata = bb.data.createCopy(d)
 	bb.data.update_data(localdata)
 
-	urldata = bb.fetch.init([], localdata, True)
+	urldata = bb.fetcher.instance.init([], localdata, True)
 
 	src_uri = bb.data.getVar('SRC_URI', localdata, True)
 	if not src_uri:
 		return
 	for url in src_uri.split():
 		try:
-			local = bb.data.expand(bb.fetch.localpath(url, localdata), localdata)
+			local = bb.data.expand(bb.fetcher.instance.localpath(url, localdata), localdata)
 		except bb.MalformedUrl, e:
 			raise FuncFailed('Unable to generate local path for malformed uri: %s' % e)
 		if local is None:
@@ -536,7 +536,7 @@ python () {
             for s in srcuri.split():
                 if not s.startswith("file://"):
                     continue
-                local = bb.data.expand(bb.fetch.localpath(s, d), d)
+                local = bb.data.expand(bb.fetcher.instance.localpath(s, d), d)
                 for mp in paths:
                     if local.startswith(mp):
                         #bb.note("overriding PACKAGE_ARCH from %s to %s" % (pkg_arch, mach_arch))
@@ -585,7 +585,7 @@ python do_cleanall() {
 		return
 	for url in src_uri.split():
 		try:
-			local = bb.data.expand(bb.fetch.localpath(url, localdata), localdata)
+			local = bb.data.expand(bb.fetcher.instance.localpath(url, localdata), localdata)
 		except bb.MalformedUrl, e:
 			raise FuncFailed('Unable to generate local path for malformed uri: %s' % e)
 		if local is None:
diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 1866f98..8b0bce8 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -308,17 +308,17 @@ python do_checkpkg() {
 			bitbake check url multiple times when looping through a single url
 			"""
 			fn = bb.data.getVar('FILE', d, 1)
-			bb.fetch.urldata_cache[fn] = {}
-			bb.fetch.init([url], d)
-		except bb.fetch.NoMethodError:
+			bb.fetcher.instance.urldata_cache[fn] = {}
+			bb.fetcher.instance.init([url], d)
+		except bb.fetcher.instance.NoMethodError:
 			status = "ErrFetchNoMethod"
 		except:
 			status = "ErrInitUrlUnknown"
 		else:
 			"""
 			To avoid impacting bitbake build engine, this trick is required for reusing bitbake
-			interfaces. bb.fetch.go() is not appliable as it checks downloaded content in ${DL_DIR}
-			while we don't want to pollute that place. So bb.fetch.checkstatus() is borrowed here
+			interfaces. bb.fetcher.instance.go() is not appliable as it checks downloaded content in ${DL_DIR}
+			while we don't want to pollute that place. So bb.fetcher.instance.checkstatus() is borrowed here
 			which is designed for check purpose but we override check command for our own purpose
 			"""
 			ld = bb.data.createCopy(d)
@@ -327,12 +327,12 @@ python do_checkpkg() {
 			bb.data.update_data(ld)
 
 			try:
-				bb.fetch.checkstatus(ld)
-			except bb.fetch.MissingParameterError:
+				bb.fetcher.instance.checkstatus(ld)
+			except bb.fetcher.instance.MissingParameterError:
 				status = "ErrMissParam"
-			except bb.fetch.FetchError:
+			except bb.fetcher.instance.FetchError:
 				status = "ErrFetch"
-			except bb.fetch.MD5SumError:
+			except bb.fetcher.instance.MD5SumError:
 				status = "ErrMD5Sum"
 			except:
 				status = "ErrFetchUnknown"
diff --git a/meta/classes/patch.bbclass b/meta/classes/patch.bbclass
index ee8a202..76a5319 100644
--- a/meta/classes/patch.bbclass
+++ b/meta/classes/patch.bbclass
@@ -58,9 +58,9 @@ python patch_do_patch() {
 			continue
 
 		if not local:
-			bb.fetch.init([url],d)
+			bb.fetcher.instance.init([url],d)
 			url = bb.encodeurl((type, host, path, user, pswd, []))
-			local = os.path.join('/', bb.fetch.localpath(url, d))
+			local = os.path.join('/', bb.fetcher.instance.localpath(url, d))
 		local = bb.data.expand(local, d)
 
 		if "striplevel" in parm:
diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index b6e6c92..ab03a3c 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -318,11 +318,11 @@ def pstaging_fetch(sstatepkg, d):
         # Try a fetch from the sstate mirror, if it fails just return and
         # we will build the package
         try:
-            bb.fetch.init([srcuri], localdata)
-            bb.fetch.go(localdata, [srcuri])
+            bb.fetcher.instance.init([srcuri], localdata)
+            bb.fetcher.instance.go(localdata, [srcuri])
             # Need to optimise this, if using file:// urls, the fetcher just changes the local path
             # For now work around by symlinking
-            localpath = bb.data.expand(bb.fetch.localpath(srcuri, localdata), localdata)
+            localpath = bb.data.expand(bb.fetcher.instance.localpath(srcuri, localdata), localdata)
             if localpath != sstatepkg and os.path.exists(localpath):
                 os.symlink(localpath, sstatepkg)
         except:
@@ -421,8 +421,8 @@ def sstate_checkhashes(sq_fn, sq_task, sq_hash, sq_hashfn, d):
             #bb.note(str(srcuri))
 
             try:
-                bb.fetch.init(srcuri.split(), localdata)
-                bb.fetch.checkstatus(localdata, srcuri.split())
+                bb.fetcher.instance.init(srcuri.split(), localdata)
+                bb.fetcher.instance.checkstatus(localdata, srcuri.split())
                 ret.append(task)
             except:
                 pass     
diff --git a/meta/classes/utility-tasks.bbclass b/meta/classes/utility-tasks.bbclass
index db22973..4295151 100644
--- a/meta/classes/utility-tasks.bbclass
+++ b/meta/classes/utility-tasks.bbclass
@@ -58,20 +58,20 @@ python do_checkuri() {
 	src_uri = bb.data.getVar('SRC_URI', localdata, 1)
 
 	try:
-		bb.fetch.init(src_uri.split(),d)
-	except bb.fetch.NoMethodError:
+		bb.fetcher.instance.init(src_uri.split(),d)
+	except bb.fetcher.instance.NoMethodError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("No method: %s" % value)
 
 	try:
-		bb.fetch.checkstatus(localdata)
-	except bb.fetch.MissingParameterError:
+		bb.fetcher.instance.checkstatus(localdata)
+	except bb.fetcher.instance.MissingParameterError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("Missing parameters: %s" % value)
-	except bb.fetch.FetchError:
+	except bb.fetcher.instance.FetchError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("Fetch failed: %s" % value)
-	except bb.fetch.MD5SumError:
+	except bb.fetcher.instance.MD5SumError:
 		(type, value, traceback) = sys.exc_info()
 		raise bb.build.FuncFailed("MD5  failed: %s" % value)
 	except:
diff --git a/meta/classes/utils.bbclass b/meta/classes/utils.bbclass
index 746f46c..d0e7a44 100644
--- a/meta/classes/utils.bbclass
+++ b/meta/classes/utils.bbclass
@@ -51,7 +51,7 @@ def machine_paths(d):
 def is_machine_specific(d):
     """Determine whether the current recipe is machine specific"""
     machinepaths = set(machine_paths(d))
-    urldatadict = bb.fetch.init(d.getVar("SRC_URI", True).split(), d, True)
+    urldatadict = bb.fetcher.instance.init(d.getVar("SRC_URI", True).split(), d, True)
     for urldata in (urldata for urldata in urldatadict.itervalues()
                     if urldata.type == "file"):
         if any(urldata.localpath.startswith(mp + "/") for mp in machinepaths):
-- 
1.7.0.4


