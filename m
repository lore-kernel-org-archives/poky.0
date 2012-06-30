Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96FA1E0145B
	for <poky@yoctoproject.org>; Fri, 29 Jun 2012 21:22:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Jun 2012 21:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="162476743"
Received: from unknown (HELO localhost) ([10.255.13.25])
	by azsmga001.ch.intel.com with ESMTP; 29 Jun 2012 21:22:16 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, Saul Wold <sgw@linux.intel.com>,
	openembedded-core@lists.openembedded.org,
	Kishore Bodke <kishore.k.bodke@intel.com>
Date: Fri, 29 Jun 2012 21:20:43 -0700
Message-Id: <8f8ee34bc932394b05669490cedcc8b1d976f7d0.1341000751.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.10.2
In-Reply-To: <a18f7d70be0fd3581d0a696ff9886f5572a37867.1341000751.git.dvhart@linux.intel.com>
References: <a18f7d70be0fd3581d0a696ff9886f5572a37867.1341000751.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1341000751.git.dvhart@linux.intel.com>
References: <cover.1341000751.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] linux-yocto-custom: Remove linux-tools
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
X-List-Received-Date: Sat, 30 Jun 2012 04:22:17 -0000

Remove the linux-tools include as perf is now packaged independently.
Without this, including meta-skeleton in bblayers.conf results in a
build failure as linux-tools.inc cannot be found.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb b/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
index 1438ad8..55f0c38 100644
--- a/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
+++ b/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
@@ -42,5 +42,3 @@ PR = "r0"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 
 COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"
-
-require recipes-kernel/linux/linux-tools.inc
-- 
1.7.10.2


