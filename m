Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 121404C80FA8
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 19:16:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 17:16:33 -0800
Message-Id: <0d30dc$kg4eqd@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="688012109"
Received: from unknown (HELO localhost) ([10.239.36.126])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 17:16:29 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Thu, 16 Dec 2010 17:00:07 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 1/3] siggen.py: print taskname when seeing mismatched hash in cache
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
X-List-Received-Date: Fri, 17 Dec 2010 01:16:34 -0000

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/siggen.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 3eecd75..f7c93ae 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -169,7 +169,7 @@ class SignatureGeneratorBasic(SignatureGenerator):
                 if k not in self.taskhash:
                     continue
                 if dataCache.basetaskhash[k] != self.basehash[k]:
-                    bb.error("Bitbake's cached basehash does not match the one we just generated!")
+                    bb.error("Bitbake's cached basehash does not match the one we just generated (%s)!" % k)
                     bb.error("The mismatched hashes were %s and %s" % (dataCache.basetaskhash[k], self.basehash[k]))
                 self.dump_sigtask(fn, task, dataCache.stamp[fn], True)
 
-- 
1.6.0.4


