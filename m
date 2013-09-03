Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D83CBE0147D
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 03:10:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Sep 2013 03:10:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,1013,1367996400"; d="scan'208";a="372653562"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.86])
	by orsmga001.jf.intel.com with ESMTP; 03 Sep 2013 03:10:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  3 Sep 2013 11:10:44 +0100
Message-Id: <1378203044-16230-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] poky.conf: add version-going-backwards to ERROR_QA
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Sep 2013 10:10:52 -0000

This restores this check after it was disabled by recent poky rev
560dac6e7db76f533f98eda969f585e4eb416e6e. This check is already in
ERROR_QA in the default value set in OE-Core.

Fixes [YOCTO #5088].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 8ea4e4f..779d5e3 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -107,6 +107,6 @@ ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
             useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
             compile-host-path dep-cmp installed-vs-shipped install-host-path \
             packages-list perm-config perm-line perm-link pkgv-undefined \
-            pn-overrides split-strip var-undefined"
+            pn-overrides split-strip var-undefined version-going-backwards"
 
 include conf/distro/include/seperatebuilddir.inc
-- 
1.8.1.2


