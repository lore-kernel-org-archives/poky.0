Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EF9EE00B6F; Tue, 25 Jul 2017 15:42:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CCC0E00B43
	for <poky@yoctoproject.org>; Tue, 25 Jul 2017 15:41:59 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jul 2017 15:41:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,412,1496127600"; d="scan'208";a="997151103"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga003.jf.intel.com with ESMTP; 25 Jul 2017 15:41:59 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue, 25 Jul 2017 15:41:55 -0700
Message-Id: <20170725224155.7297-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
Subject: [PATCH] bsp/help: include a warning showing deprecation of create-layer plugin
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
X-List-Received-Date: Tue, 25 Jul 2017 22:42:00 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

This plugin will be removed starting 2.5 development in favour
of using 'bitbake-layers create-layer' script/plugin, offering a single
script to manage layers.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 scripts/lib/bsp/help.py | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 4f0d7721fe..85d446b860 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -818,6 +818,10 @@ yocto_layer_help_usage = """
 
 yocto_layer_create_usage = """
 
+ WARNING: this plugin will be removed starting 2.5 development in favour
+ of using 'bitbake-layers create-layer' script/plugin, offering a single
+ script to manage layers.
+
  Create a new generic Yocto layer
 
  usage: yocto-layer create <layer-name> [layer_priority]
@@ -845,6 +849,10 @@ yocto_layer_create_usage = """
 
 yocto_layer_create_help = """
 
+WARNING: this plugin will be removed starting 2.5 development in favour
+of using 'bitbake-layers create-layer' script/plugin, offering a single
+script to manage layers.
+
 NAME
     yocto-layer create - Create a new generic Yocto layer
 
-- 
2.12.3


