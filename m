Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2578E00BD3
	for <poky@yoctoproject.org>; Wed,  2 Apr 2014 06:37:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2014 06:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,780,1389772800"; d="scan'208";a="485711187"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2014 06:36:20 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Wed,  2 Apr 2014 16:39:35 +0300
Message-Id: <38f022e53145f7c8c896cf5f16685e5641699ed3.1396445845.git.cristian.iorga@intel.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <cover.1396445845.git.cristian.iorga@intel.com>
References: <cover.1396445845.git.cristian.iorga@intel.com>
In-Reply-To: <cover.1396445845.git.cristian.iorga@intel.com>
References: <cover.1396445845.git.cristian.iorga@intel.com>
Subject: [PATCH 1/1] poky.conf: added Poky 1.6 as tested distro
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
X-List-Received-Date: Wed, 02 Apr 2014 13:37:58 -0000

Build Appliance will not complain about distro.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c576725..7cf35d0 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -74,6 +74,7 @@ CONNECTIVITY_CHECK_URIS ?= " \
 SANITY_TESTED_DISTROS ?= " \
             Poky-1.4 \n \
             Poky-1.5 \n \
+            Poky-1.6 \n \
             Ubuntu-12.04 \n \
             Ubuntu-12.10 \n \
             Ubuntu-13.04 \n \
-- 
1.8.3.2


