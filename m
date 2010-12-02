Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 901844C810E6
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 08:09:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 06:09:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="579873541"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 06:09:43 -0800
Message-Id: <59c6ee783433af7b50f512580033ac5573f302ca.1291291436.git.ke.yu@intel.com>
In-Reply-To: <cover.1291291436.git.ke.yu@intel.com>
References: <cover.1291291436.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 2 Dec 2010 16:18:51 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 2/2] [RFC] Automatically patch recipes to add the SRC_URI checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 14:09:44 -0000

Initially, most recpies don't have SRC_URI[] checksum, so we
need one mechanism to add SRC_URI[] checksum for all recpies.

This patch add the mechanism, the usage is:

1. add the following variable to conf/local.conf:
OE_CHECKSUMS_PATCH = "1"

2. # bitbake -f -c fetch <recipe-name>

it will automatically patch the recipe file to append checksum, like
SRC_URI[md5sum] = "6e497f861c77bbba2f7da4e10270995b"
SRC_URI[sha256sum] = "f3f6ce41b8e0f327abd05c95990f113ddafbae131e10f79a99728ed46458494b"

Note: this patch is only for one time usage, so not sure if we need to checked into upstream

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/utils.bbclass |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/meta/classes/utils.bbclass b/meta/classes/utils.bbclass
index 766cfc5..2729fe4 100644
--- a/meta/classes/utils.bbclass
+++ b/meta/classes/utils.bbclass
@@ -146,6 +146,8 @@ def base_chk_src_uri_checksum(localpath, params, data):
         bb.warn("Missing SRC_URI checksum for %s, recommend to add\n" \
                 "SRC_URI[%s] = \"%s\"\nSRC_URI[%s] = \"%s\"" \
 				% (localpath, md5flag, md5data, sha256flag, sha256data))
+        base_patch_src_uri_checksum(expected_md5sum, expected_sha256sum, \
+                md5data, sha256data, md5flag, sha256flag, data)
         return not strict_checking
 
     if (expected_md5sum != md5data or expected_sha256sum != sha256data):
@@ -208,6 +210,27 @@ def base_chk_file(parser, pn, pv, src_uri, localpath, data):
 
     return True
 
+def base_patch_src_uri_checksum(expected_md5sum, expected_sha256sum, md5data, sha256data, md5flag, sha256flag, data):
+    #
+    # Purpose: patch the recpies file to append SRC_URI[] checksum automatically
+    #          this behavor is only enabled when OE_CHECKSUMS_PATCH = "1"
+    #
+    if (bb.data.getVar("OE_CHECKSUMS_PATCH", data, True) != "1"):
+        return
+
+    buf = []
+    if (expected_md5sum == None):
+        buf.append('SRC_URI[%s] = \"%s\"' % (md5flag, md5data))
+    if (expected_sha256sum == None):
+        buf.append('SRC_URI[%s] = \"%s\"' % (sha256flag, sha256data))
+    if ( len(buf) > 0):
+        bbfile = bb.data.getVar("FILE", data, True)
+        bb.note("bbfile=%s" % bbfile)
+        f = open(bbfile, 'a')
+        f.write('\n'.join(buf))
+        f.close()
+        bb.note("Add SRC_URI checksum for %s succeeded" % bbfile)
+
 oe_soinstall() {
 	# Purpose: Install shared library file and
 	#          create the necessary links
-- 
1.7.0.4


