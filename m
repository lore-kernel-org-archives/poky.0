Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E8274C81110
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 03:24:08 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Dec 2010 01:24:07 -0800
Message-Id: <849307$apmeo3@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="362494723"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.126])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 01:24:03 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Wed, 8 Dec 2010 08:38:58 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 1/3] siggen.py: make sure stamp directory existing
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
X-List-Received-Date: Thu, 16 Dec 2010 09:24:08 -0000

or else "bitbake -S" from scratch may report "No such file or directory" error.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/siggen.py |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 391020a..3eecd75 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -137,6 +137,8 @@ class SignatureGeneratorBasic(SignatureGenerator):
         else:
             sigfile = stampbase + "." + task + ".sigbasedata" + "." + self.basehash[k]
 
+        bb.utils.mkdirhier(os.path.dirname(sigfile))
+
         data = {}
         data['basewhitelist'] = self.basewhitelist
         data['taskwhitelist'] = self.taskwhitelist
-- 
1.6.0.4


