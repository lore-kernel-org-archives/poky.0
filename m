Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5810E4C80ADD
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 14:37:08 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2011 12:37:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="633900107"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.56])
	by orsmga002.jf.intel.com with ESMTP; 25 Apr 2011 12:36:49 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Apr 2011 12:36:50 -0700
Message-Id: <54ab4917ea461978b469f681dd82c59d56383fb6.1303760083.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1303760083.git.dvhart@linux.intel.com>
References: <cover.1303760083.git.dvhart@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>, Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] logging: remove unused BBDEBUG from local.conf.sample
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
X-List-Received-Date: Mon, 25 Apr 2011 19:37:08 -0000

The boolean BBDEBUG described in local.conf.sample is no longer
referenced by any other sources. It also conflicts with the OS
environment variable of the same name which maps to the debug
log level also specified by the -D[D[D]] argument.

Remove the boolean BBDEBUG from local.conf.sample.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>
---
 meta-yocto/conf/local.conf.sample |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index c739127..740f542 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -145,8 +145,6 @@ PACKAGE_DEBUG_SPLIT_STYLE = '.debug'
 # SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
 # LDFLAGS =+ "-pg"
 
-# Uncomment this if you want BitBake to emit debugging output
-# BBDEBUG = "yes"
 # Uncomment this if you want BitBake to emit the log if a build fails.
 BBINCLUDELOGS = "yes"
 
-- 
1.7.1


