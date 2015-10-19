Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C48DCE00C06; Mon, 19 Oct 2015 06:35:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E80CE00AD5
	for <poky@yoctoproject.org>; Mon, 19 Oct 2015 06:35:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 19 Oct 2015 06:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,702,1437462000"; d="scan'208";a="830324530"
Received: from yctb05.ostc.intel.com (HELO yctb05.otcr.jf.intel.com)
	([10.23.219.54])
	by fmsmga002.fm.intel.com with ESMTP; 19 Oct 2015 06:35:27 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 19 Oct 2015 05:27:15 +0000
Message-Id: <c556c2673465fd5e2314540bc08e6ac2ff36643a.1445231631.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <cover.1445231631.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1445231631.git.leonardo.sandoval.gonzalez@linux.intel.com>
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 2/3] oeqa/selftest/gummiboot: Use write instead of append_config
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
X-List-Received-Date: Mon, 19 Oct 2015 13:35:31 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Instead of appending the configuration, it is safer to create a new
config file, thus avoiding appending to a previous configuration.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
index 00aa36f..70a5584 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
@@ -17,7 +17,7 @@ class Gummiboot(oeSelfTest):
         # Set EFI_PROVIDER = "gummiboot" and MACHINE = "genericx86-64" in conf/local.conf
         features = 'EFI_PROVIDER = "gummiboot"\n'
         features += 'MACHINE = "genericx86-64"'
-        self.append_config(features)
+        self.write_config(features)
 
     def _common_build(self):
         """
-- 
1.8.4.5


