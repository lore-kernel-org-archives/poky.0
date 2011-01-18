Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DFF74C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Jan 2011 05:58:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="376147476"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2011 05:58:11 -0800
Message-Id: <c1a9ee8a7ccac3568a310d834a736d823fd62d63.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 12 Jan 2011 13:55:02 +0800
Date: Tue, 18 Jan 2011 21:57:41 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 1/7] sstate.bbclass: allow each step of toolchain bootstrap processes to do populate_sysroot independently
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:12 -0000

I'm adding an indidivual sysroot for each step.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/classes/sstate.bbclass |   24 ------------------------
 1 files changed, 0 insertions(+), 24 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index b6e6c92..8d85f42 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -87,30 +87,6 @@ def sstate_install(ss, d):
     if os.access(manifest, os.R_OK):
         bb.fatal("Package already staged (%s)?!" % manifest)
 
-    def checkmanifest(pn, task):
-        return os.access(bb.data.expand("${SSTATE_MANFILEBASE}%s.%s" % (pn, task), d), os.R_OK)
-
-    skipinst = False
-    pn = d.getVar("PN", True)
-    if pn == "gcc-cross-initial":
-        if checkmanifest("gcc-cross", "populate-sysroot"):
-            skipinst = True
-        if checkmanifest("gcc-cross-intermediate", "populate-sysroot"):
-            skipinst = True
-    elif pn == "gcc-cross-intermediate":
-        if checkmanifest("gcc-cross", "populate-sysroot"):
-            skipinst = True
-    elif pn == "glibc-initial":
-        if checkmanifest("glibc", "populate-sysroot"):
-            skipinst = True
-    elif pn == "eglibc-initial":
-        if checkmanifest("eglibc", "populate-sysroot"):
-            skipinst = True
-
-    if skipinst:
-        bb.note("Not staging %s.%s as sysroot already contains better functionality" % (pn, ss['name']))
-        return
-
     locks = []
     for lock in ss['lockfiles']:
         locks.append(bb.utils.lockfile(lock))
-- 
1.7.2


