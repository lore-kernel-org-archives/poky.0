Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9773C4C8115C
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:25:18 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Dec 2010 05:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="365239226"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.108])
	by azsmga001.ch.intel.com with ESMTP; 22 Dec 2010 05:25:07 -0800
Message-Id: <43c3c98537f10bca1e4b610bde6dd9bd6defa484.1293023813.git.lei.mei@intel.com>
In-Reply-To: <cover.1293023813.git.lei.mei@intel.com>
References: <cover.1293023813.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Wed, 22 Dec 2010 20:58:44 +0800
Date: Wed, 22 Dec 2010 21:23:04 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/3] base.bbclass: Add inherit information for checkpkg task
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
X-List-Received-Date: Wed, 22 Dec 2010 13:25:19 -0000

Add inherit distrodata for running checkpkg task

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/base.bbclass |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index c60048b..a8cf4fd 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -2,12 +2,12 @@ BB_DEFAULT_TASK ?= "build"
 
 inherit patch
 inherit staging
-
 inherit mirrors
 inherit utils
 inherit utility-tasks
 inherit metadata_scm
-
+inherit distrodata
+ 
 python sys_path_eh () {
     if isinstance(e, bb.event.ConfigParsed):
         import sys
-- 
1.6.3.3


