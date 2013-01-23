Return-Path: <constantinx.musca@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3838E0034C
	for <poky@yoctoproject.org>; Wed, 23 Jan 2013 06:54:07 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Jan 2013 06:54:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,523,1355126400"; d="scan'208";a="247483496"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by azsmga001.ch.intel.com with ESMTP; 23 Jan 2013 06:54:05 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Wed, 23 Jan 2013 16:54:56 +0200
Message-Id: <1358952896-14702-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH 3/3] prs: change PRSERV_HOST format
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
X-List-Received-Date: Wed, 23 Jan 2013 14:54:07 -0000

- the new PRSERV_HOST format is 'host:port'
- PRSERV_PORT has been removed

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/local.conf.sample.extended | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index e5dfc89..747636c 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -116,11 +116,10 @@
 
 # The network based PR service host and port
 # Uncomment the following lines to enable PRservice.
-# Set PRSERV_HOST to 'localhost' and PRSERV_PORT to '0' to automatically
+# Set PRSERV_HOST to 'localhost:0' to automatically
 # start local PRService.
 # Set to other values to use remote PRService.
-#PRSERV_HOST = "localhost"
-#PRSERV_PORT = "0"
+#PRSERV_HOST = "localhost:0"
 
 # Additional image generation features
 #
-- 
1.7.11.7


