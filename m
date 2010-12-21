Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF0F84C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 11:25:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2010 09:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="585876694"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 09:25:42 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PV5sq-0007yd-QP; Wed, 22 Dec 2010 01:20:20 +0800
Message-Id: <ae00c81261b0107a279b37dbc1c43c9b2ac1d77a.1292950145.git.qing.he@intel.com>
In-Reply-To: <cover.1292950144.git.qing.he@intel.com>
References: <cover.1292950144.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 22 Dec 2010 00:24:55 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/4] sstate.bbclass: workaround
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
X-List-Received-Date: Tue, 21 Dec 2010 17:25:44 -0000

Avoid calculating task dependencies in task
This inhibit the generation of .siginfo

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/classes/sstate.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 3696a8c..cc5e672 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -287,7 +287,7 @@ def sstate_package(ss, d):
     bb.data.setVar('SSTATE_PKG', sstatepkg, d)
     bb.build.exec_func('sstate_create_package', d)
     
-    bb.siggen.dump_this_task(sstatepkg + ".siginfo", d)
+    #bb.siggen.dump_this_task(sstatepkg + ".siginfo", d)
 
     return
 
-- 
1.7.0


