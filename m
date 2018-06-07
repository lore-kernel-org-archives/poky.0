Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1569BE00B57; Thu,  7 Jun 2018 12:14:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBA71E006B4
	for <poky@yoctoproject.org>; Thu,  7 Jun 2018 12:14:04 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jun 2018 12:14:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,487,1520924400"; d="scan'208";a="230779683"
Received: from lsandov1-clr.zpn.intel.com ([10.219.4.31])
	by orsmga005.jf.intel.com with ESMTP; 07 Jun 2018 12:14:03 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  7 Jun 2018 14:14:00 -0500
Message-Id: <20180607191400.5308-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] site.conf.sample: document oe-git-proxy required tools for HOSTTOOLS
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
X-List-Received-Date: Thu, 07 Jun 2018 19:14:07 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

The script oe-git-proxy uses some tools that may not be included
on HOSTTOOLS, thus add the proper documentation.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-poky/conf/site.conf.sample | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-poky/conf/site.conf.sample b/meta-poky/conf/site.conf.sample
index 6cfefc574a..a4c2f9feed 100644
--- a/meta-poky/conf/site.conf.sample
+++ b/meta-poky/conf/site.conf.sample
@@ -24,7 +24,9 @@ SCONF_VERSION = "1"
 #or
 #ALL_PROXY ?= "https://proxy.example.com:8080"
 # If you wish to use certain hosts without the proxy, specify them in NO_PROXY.
-# See the script for details on syntax.
+# See the script for details on syntax. The script oe-git-proxy uses some tools
+# that may not be included on HOSTTOOLS, thus  add them manually through
+# HOSTTOOLS += "getent seq"
 
 # Uncomment this to use a shared download directory
 #DL_DIR = "/some/shared/download/directory/"
-- 
2.17.1


