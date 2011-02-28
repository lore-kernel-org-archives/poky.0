Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C33F4C80510
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 08:38:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Feb 2011 06:38:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,239,1297065600"; d="scan'208";a="395066320"
Received: from unknown (HELO helios) ([10.255.16.249])
	by azsmga001.ch.intel.com with SMTP; 28 Feb 2011 06:38:00 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 28 Feb 2011 14:38:00 +0000
Message-Id: <fe64080108a5c3d4ed1362b98df23343a65ecdab.1298903625.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1298903625.git.paul.eggleton@linux.intel.com>
References: <cover.1298903625.git.paul.eggleton@linux.intel.com>
Old-Date: Mon, 28 Feb 2011 13:16:41 +0000
Date: Mon, 28 Feb 2011 14:38:00 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/3] sstate.bbclass: avoid deleting unrelated stamp files
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
X-List-Received-Date: Mon, 28 Feb 2011 14:38:03 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Avoid deleting stamp files whose names contain the current task's name as a
substring. This will be especially important for example if do_package_write
is ever made an sstate task (as it would previously have deleted the stamps
here for do_package_write_ipk etc.)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/sstate.bbclass |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 6f836a6..722e3c4 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -241,7 +241,9 @@ def sstate_clean(ss, d):
     for lock in locks:
         bb.utils.unlockfile(lock)
 
-    oe.path.remove(d.getVar("STAMP", True) + ".do_" + ss['task'] + "*")
+    stfile = d.getVar("STAMP", True) + ".do_" + ss['task']
+    oe.path.remove(stfile)
+    oe.path.remove(stfile + ".*")
 
 CLEANFUNCS += "sstate_cleanall"
 
-- 
1.7.1


