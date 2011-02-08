Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87C7D4C80053
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 13:36:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Feb 2011 11:36:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,443,1291622400"; d="scan'208";a="600693866"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2011 11:36:04 -0800
Message-Id: <33b3e596328897dc5808420417f28f1024cca1d2.1297194944.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1297194944.git.jessica.zhang@intel.com>
References: <cover.1297194944.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 8 Feb 2011 11:48:20 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] local.conf: change i586 to i686 for 32bit SDK
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
X-List-Received-Date: Tue, 08 Feb 2011 19:36:05 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 meta/conf/local.conf.sample |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index 9c58e6b..43f6f34 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -136,10 +136,10 @@ BBINCLUDELOGS = "yes"
 ENABLE_BINARY_LOCALE_GENERATION = "1"
 
 # The architecture to build SDK items for, by setting this you can build SDK
-# packages for architectures other than the host i.e. building i586 packages
+# packages for architectures other than the host i.e. building i686 packages
 # on an x86_64 host.
-# Supported values are i586 and x86_64
-#SDKMACHINE ?= "i586"
+# Supported values are i686 and x86_64
+#SDKMACHINE ?= "i686"
 
 # Poky can try and fetch packaged-staging packages from a http, https or ftp
 # mirror. Set this variable to the root of a pstage directory on a server.
-- 
1.7.0.4


