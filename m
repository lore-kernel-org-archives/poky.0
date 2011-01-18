Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 788F94C8106A
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 09:51:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 07:51:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="878509395"
Received: from unknown (HELO helios) ([10.255.16.95])
	by fmsmga001.fm.intel.com with SMTP; 18 Jan 2011 07:51:31 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 18 Jan 2011 15:51:32 +0000
Message-Id: <108ce1dec4e2584ddf87cd3d6cd1dedf39de2a8d.1295365703.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Tue, 18 Jan 2011 15:31:17 +0000
Date: Tue, 18 Jan 2011 15:51:32 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH] base.bbclass: fix parse error on recipes with '++' in their name
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
X-List-Received-Date: Tue, 18 Jan 2011 15:51:33 -0000

Fixes "multiple repeat" or "nothing to repeat" errors when parsing recipes
with '++' in the file name.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/base.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index f1ffb45..583f9b7 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -422,7 +422,8 @@ python () {
 
     commercial_license = bb.data.getVar('COMMERCIAL_LICENSE', d, 1)
     import re
-    if commercial_license and re.search(pn, commercial_license):
+    pnr = pn.replace('+', "\+")
+    if commercial_license and re.search(pnr, commercial_license):
         bb.debug(1, "Skipping %s because it's commercially licensed" % pn)
         raise bb.parse.SkipPackage("because it requires commercial license to ship product")
 
-- 
1.7.3.1


