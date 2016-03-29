Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F5F6E008E0; Mon, 28 Mar 2016 09:23:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A30E006AE
	for <poky@yoctoproject.org>; Mon, 28 Mar 2016 09:23:34 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 28 Mar 2016 09:23:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,407,1455004800"; d="scan'208";a="74603261"
Received: from jhibarra-desk.zpn.intel.com ([10.219.16.242])
	by fmsmga004.fm.intel.com with ESMTP; 28 Mar 2016 09:23:33 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Mon, 28 Mar 2016 18:30:44 -0600
Message-Id: <1459211444-2258-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] scripts/lib/bsp/help.py: Typo in help for yocto-bsp create
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
X-List-Received-Date: Mon, 28 Mar 2016 16:23:37 -0000

Fix typo of the word "parameter" in for 'yocto-bsp create'.
Typo appears in both, usage and help.

Also, the word "description" is mispelled.

[Yocto #9282]

Signed-off-by: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
---
 scripts/lib/bsp/help.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 2b4ed06..85a09dd 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -114,7 +114,7 @@ yocto_bsp_create_usage = """
  The value of the 'karch' parameter determines the set of files that
  will be generated for the BSP, along with the specific set of
  'properties' that will be used to fill out the BSP-specific portions
- of the BSP.  The possible values for the 'karch' paramter can be
+ of the BSP.  The possible values for the 'karch' parameter can be
  listed via 'yocto-bsp list karch'.
 
  NOTE: Once created, you should add your new layer to your
@@ -144,7 +144,7 @@ DESCRIPTION
     The value of the 'karch' parameter determines the set of files
     that will be generated for the BSP, along with the specific set of
     'properties' that will be used to fill out the BSP-specific
-    portions of the BSP.  The possible values for the 'karch' paramter
+    portions of the BSP.  The possible values for the 'karch' parameter
     can be listed via 'yocto-bsp list karch'.
 
     The BSP-specific properties that define the values that will be
@@ -758,7 +758,7 @@ DESCRIPTION
     or config items along with patches.  The named feature must end
     with .scc and must not contain a feature directory to contain the
     feature (this will be determined automatically), and a feature
-    decription in double-quotes along with a capabilities string
+    description in double-quotes along with a capabilities string
     (which for the time being can be one of: 'all' or 'board').
 """
 
-- 
2.1.4


