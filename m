Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61175E0070B
	for <poky@yoctoproject.org>; Fri, 29 Jun 2012 12:56:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Jun 2012 12:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="164823686"
Received: from unknown (HELO localhost) ([10.255.13.25])
	by orsmga002.jf.intel.com with ESMTP; 29 Jun 2012 12:56:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Kishore Bodke <kishore.k.bodke@intel.com>
Date: Fri, 29 Jun 2012 12:54:35 -0700
Message-Id: <d697333d49c6b34a127b728e60708e6c34435070.1340998763.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.10.2
In-Reply-To: <4263ffefaa6f3b0069bc41c0f7578d36717edcfc.1340998763.git.dvhart@linux.intel.com>
References: <4263ffefaa6f3b0069bc41c0f7578d36717edcfc.1340998763.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1340998763.git.dvhart@linux.intel.com>
References: <cover.1340998763.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 5/5] linux-yocto-custom: Remove linux-tools
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
X-List-Received-Date: Fri, 29 Jun 2012 19:56:11 -0000

Remove the linux-tools include as perf is now packaged independently.
Without this, including meta-skeleton in bblayers.conf results in a
build failure as linux-tools.inc cannot be found.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
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


