Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 620D34C811FF
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:43 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV0-00019y-HX
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:35 -0800
Received: by rex (Postfix, from userid 1000)
	id 8AF082AB0A; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <8044fc3347d799960951ea562391de27fa1b1384.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 15:20:33 +0000
To: poky@pokylinux.org
Subject: [PATCH 13/16] native.bbclasS: Add handing to remap RDEPENDS fields and avoid crossed target and native dependency trees
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:43 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/classes/native.bbclass |   14 +++++++++++++-
 1 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 472f0b6..067b1be 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -71,8 +71,10 @@ PKG_CONFIG_PATH .= "${EXTRA_NATIVE_PKGCONFIG_PATH}"
 PKG_CONFIG_SYSROOT_DIR = ""
 
 ORIG_DEPENDS := "${DEPENDS}"
+ORIG_RDEPENDS := "${RDEPENDS}"
 
 DEPENDS_virtclass-native ?= "${ORIG_DEPENDS}"
+RDEPENDS_virtclass-native ?= "${ORIG_RDEPENDS}"
 
 python __anonymous () {
     if "native" in (bb.data.getVar('BBCLASSEXTEND', d, True) or ""):
@@ -84,11 +86,21 @@ python __anonymous () {
             if dep.endswith("-cross"):
                 newdeps.append(dep.replace("-cross", "-native"))
             elif not dep.endswith("-native"):
-     
                 newdeps.append(dep + "-native")
             else:
                 newdeps.append(dep)
         bb.data.setVar("DEPENDS_virtclass-native", " ".join(newdeps), d)
+        rdepends = bb.data.getVar("RDEPENDS_virtclass-native", d, True)
+        rdeps = bb.utils.explode_deps(rdepends)
+        newdeps = []
+        for dep in rdeps:
+            if dep.endswith("-cross"):
+                newdeps.append(dep.replace("-cross", "-native"))
+            elif not dep.endswith("-native"):
+                newdeps.append(dep + "-native")
+            else:
+                newdeps.append(dep)
+        bb.data.setVar("RDEPENDS_virtclass-native", " ".join(newdeps), d)
         provides = bb.data.getVar("PROVIDES", d, True)
         for prov in provides.split():
             if prov.find(pn) != -1:
-- 
1.7.0.4


