Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E0794C8106A
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 08:09:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 06:09:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="683199749"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 06:09:42 -0800
Message-Id: <f0a37db5cf7204bc398302a58453b91afaf1b952.1291291436.git.ke.yu@intel.com>
In-Reply-To: <cover.1291291436.git.ke.yu@intel.com>
References: <cover.1291291436.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Mon, 29 Nov 2010 13:25:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 1/2] [RFC] Add SRC_URI checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 14:09:43 -0000

This patch add the per-recipe SRC_URI checksum. The code
is ported from OE.

- SRC_URI format
The format of SRC_URI checksum follow OE definition:

1. SRC_URI has single src
SRC_URI = "http://some.domain/file.tar.gz"
SRC_URI[md5sum] = "xxxxxxxxxxxxxxx"
SRC_URI[sha256sum] = "xxxxxxxxxxxxxxxxxxxxxx"

2. SRC_URI has multiple src, every src need specify name
SRC_URI = "http://some.domain/file1.tar.gz;name=name1 \
           http://some.domain/file2.tar.gz;name=name2 "
SRC_URI[name1.md5sum] = "xxxxxxxxxxxxxxx"
SRC_URI[name1.sha256sum] = "xxxxxxxxxxxxxxxxxxxxxx"
SRC_URI[name2.md5sum] = "xxxxxxxxxxxxxxx"
SRC_URI[name2.sha256sum] = "xxxxxxxxxxxxxxxxxxxxxx"

- SRC_URI checking invocation:
the checksum checking is invoked in do_fetch phase,
so it can be invoked manually by

# bitbake -f -c fetch <recipe_name>

if recipes has no SRC_URI checksum item, bitbake will show warning:
"
WARNING: Missing SRC_URI checksum for xxxx.tar.gz, recommend to add
SRC_URI[md5sum] = "5c69f16d452b0bb3d44bc3c10556c072"
SRC_URI[sha256sum] = "f4e0ada8d4d516bbb8600a3ee7d9046c9c79e38cd781df9ffc46d8f16acd1768"
"

- Control Varialbe
One variable OE_STRICT_CHECKSUMS is also defined to toggle strict checking. if
OE_STRICT_CHECKSUMS = "1"
then there will be fatal error if SRC_URI is not defined during do_fetch

Singed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/base.bbclass  |    4 ++-
 meta/classes/utils.bbclass |   78 +++++++++++++++++++++++++++++++++++++-------
 2 files changed, 69 insertions(+), 13 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 384e723..f9955bc 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -181,10 +181,12 @@ python base_do_fetch() {
 	# Check each URI
 	for url in src_uri.split():
 		localpath = bb.data.expand(bb.fetch.localpath(url, localdata), localdata)
-		(type,host,path,_,_,_) = bb.decodeurl(url)
+		(type,host,path,_,_,params) = bb.decodeurl(url)
 		uri = "%s://%s%s" % (type,host,path)
 		try:
 			if type == "http" or type == "https" or type == "ftp" or type == "ftps":
+				if not base_chk_src_uri_checksum(localpath, params, d):
+					bb.fatal("%s-%s: %s cannot check archive integrity" % (pn,pv,uri))
 				if not base_chk_file(parser, pn, pv,uri, localpath, d):
 					bb.note("%s-%s: %s has no entry in conf/checksums.ini, not checking URI" % (pn,pv,uri))
 		except Exception:
diff --git a/meta/classes/utils.bbclass b/meta/classes/utils.bbclass
index 02e803a..766cfc5 100644
--- a/meta/classes/utils.bbclass
+++ b/meta/classes/utils.bbclass
@@ -92,7 +92,72 @@ def base_chk_load_parser(config_paths):
 
     return parser
 
+def base_sha256_helper(localpath, data):
+    shadata = bb.utils.sha256_file(localpath)
+
+    # sha256_file() can return None if we are running on Python 2.4 (hashlib is
+    # 2.5 onwards, sha in 2.4 is 160-bit only), so check for this and call the
+    # standalone shasum binary if required.
+    if shadata is None:
+        try:
+            shapipe = os.popen('PATH=%s oe_sha256sum %s' % (bb.data.getVar('PATH', data, True), localpath))
+            shadata = (shapipe.readline().split() or [ "" ])[0]
+            shapipe.close()
+        except OSError:
+            raise Exception("Executing shasum failed, please build shasum-native")
+    return shadata
+
+def base_get_hash_flags(params):
+    try:
+        name = params["name"]
+    except KeyError:
+        name = ""
+    if name:
+        md5flag = "%s.md5sum" % name
+        sha256flag = "%s.sha256sum" % name
+    else:
+        md5flag = "md5sum"
+        sha256flag = "sha256sum"
+
+    return (md5flag, sha256flag)
+
+def base_chk_src_uri_checksum(localpath, params, data):
+
+    strict_checking = True
+    if bb.data.getVar("OE_STRICT_CHECKSUMS", data, True) != "1":
+        strict_checking = False
+
+    # Get expected md5sum and sha256sum from SRC_URI[]
+    (md5flag, sha256flag) = base_get_hash_flags(params)
+    expected_md5sum = bb.data.getVarFlag("SRC_URI", md5flag, data)
+    expected_sha256sum = bb.data.getVarFlag("SRC_URI", sha256flag, data)
+
+    # Calculate file md5sum and sha256sum
+    if not os.path.exists(localpath):
+        localpath = base_path_out(localpath, data)
+        bb.note("The localpath does not exist '%s'" % localpath)
+        raise Exception("The path does not exist '%s'" % localpath)
+    md5data = bb.utils.md5_file(localpath)
+    sha256data = base_sha256_helper(localpath, data)
+
+    # Check if checksum match
+    if (expected_md5sum == None or expected_sha256sum == None):
+        # fail for strict, continue for disabled strict checksums
+        bb.warn("Missing SRC_URI checksum for %s, recommend to add\n" \
+                "SRC_URI[%s] = \"%s\"\nSRC_URI[%s] = \"%s\"" \
+				% (localpath, md5flag, md5data, sha256flag, sha256data))
+        return not strict_checking
+
+    if (expected_md5sum != md5data or expected_sha256sum != sha256data):
+        bb.warn("The checksums for '%s' did not match." % localpath)
+        bb.warn("Expected MD5: '%s' and Got: '%s'" % (expected_md5sum, md5data))
+        bb.warn("Expected SHA256: '%s' and Got: '%s'" % (expected_sha256sum, sha256data))
+        return False
+
+    return True
+
 def base_chk_file(parser, pn, pv, src_uri, localpath, data):
+
     no_checksum = False
     # Try PN-PV-SRC_URI first and then try PN-SRC_URI
     # we rely on the get method to create errors
@@ -118,19 +183,8 @@ def base_chk_file(parser, pn, pv, src_uri, localpath, data):
 
     # Calculate the MD5 and 256-bit SHA checksums
     md5data = bb.utils.md5_file(localpath)
-    shadata = bb.utils.sha256_file(localpath)
+    shadata = base_sha256_helper(localpath, data)
 
-    # sha256_file() can return None if we are running on Python 2.4 (hashlib is
-    # 2.5 onwards, sha in 2.4 is 160-bit only), so check for this and call the
-    # standalone shasum binary if required.
-    if shadata is None:
-        try:
-            shapipe = os.popen('PATH=%s oe_sha256sum %s' % (bb.data.getVar('PATH', data, True), localpath))
-            shadata = (shapipe.readline().split() or [ "" ])[0]
-            shapipe.close()
-        except OSError:
-            raise Exception("Executing shasum failed, please build shasum-native")
-    
     if no_checksum == True:	# we do not have conf/checksums.ini entry
         try:
             file = open("%s/checksums.ini" % bb.data.getVar("TMPDIR", data, 1), "a")
-- 
1.7.0.4


