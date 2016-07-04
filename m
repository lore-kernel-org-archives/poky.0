Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F4D7E00D82; Mon,  4 Jul 2016 13:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FF1CE00D6B
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 13:31:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jul 2016 13:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,576,1459839600"; d="scan'208";a="1000866427"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.16.231])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2016 13:31:42 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jul 2016 15:33:32 -0500
Message-Id: <1467664414-8042-2-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
In-Reply-To: <1467664414-8042-1-git-send-email-humberto.ibarra.lopez@intel.com>
References: <1467664414-8042-1-git-send-email-humberto.ibarra.lopez@intel.com>
Subject: [PATCH 1/3] scripts/yocto-bsp: Removing version from yocto-bsp
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
X-List-Received-Date: Mon, 04 Jul 2016 20:31:45 -0000

The version option is not maintained and is useless inside this script.
There is no reason for this script to have an independent version value.

[YOCTO #8321]
---
 scripts/yocto-bsp | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/scripts/yocto-bsp b/scripts/yocto-bsp
index 0d36370..ac6cfa0 100755
--- a/scripts/yocto-bsp
+++ b/scripts/yocto-bsp
@@ -30,8 +30,6 @@
 # Tom Zanussi <tom.zanussi (at] intel.com>
 #
 
-__version__ = "0.1.0"
-
 import os
 import sys
 import optparse
@@ -122,8 +120,7 @@ def start_logging(loglevel):
 
 
 def main():
-    parser = optparse.OptionParser(version = "yocto-bsp version %s" % __version__,
-                                   usage = yocto_bsp_usage)
+    parser = optparse.OptionParser(usage = yocto_bsp_usage)
 
     parser.disable_interspersed_args()
     parser.add_option("-D", "--debug", dest = "debug", action = "store_true",
-- 
2.4.11


