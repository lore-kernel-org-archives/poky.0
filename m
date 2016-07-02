Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AACE9E00AD8; Sat,  2 Jul 2016 11:16:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FDC1E009CE
	for <poky@yoctoproject.org>; Sat,  2 Jul 2016 11:16:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 02 Jul 2016 11:16:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,564,1459839600"; d="scan'208";a="999440853"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.16.87])
	by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2016 11:16:07 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Sat,  2 Jul 2016 13:17:56 -0500
Message-Id: <1467483476-3977-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
Subject: [PATCH] scripts/lib/bsp/help.py: Fixed pager for yocto-bsp help
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
X-List-Received-Date: Sat, 02 Jul 2016 18:16:11 -0000

Python3 requires strings to be encoded as bytes before sending them through a subprocess pipe. The help.py file is not considering this and fails when issuing paged help commands. This patch adds this encoding to solve the problem.

[YOCTO #9868]
---
 scripts/lib/bsp/help.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 85a09dd..311c5e4 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -42,7 +42,7 @@ def display_help(subcommand, subcommands):
 
     help = subcommands.get(subcommand, subcommand_error)[2]
     pager = subprocess.Popen('less', stdin=subprocess.PIPE)
-    pager.communicate(help)
+    pager.communicate(bytes(help, 'UTF-8'))
 
     return True
 
-- 
2.4.11


