Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89499E00947; Thu,  3 Dec 2015 06:37:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32350E008E5
	for <poky@yoctoproject.org>; Thu,  3 Dec 2015 06:37:17 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2015 06:37:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,378,1444719600"; d="scan'208";a="699522973"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 03 Dec 2015 06:37:10 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Dec 2015 16:34:30 +0200
Message-Id: <1c778faec3e6f1864fcf039b4f309b770f57e5f0.1449152326.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
In-Reply-To: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
Subject: [PATCH 3/3] local.conf.sample.extended: drop qt4 references
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
X-List-Received-Date: Thu, 03 Dec 2015 14:37:22 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample.extended | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index bc765a1..925270b 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -191,8 +191,7 @@
 #                           commercial_lame \
 #                           commercial_libmad \
 #                           commercial_libomxil \
-#                           commercial_mpeg2dec \
-#                           commercial_qmmp"
+#                           commercial_mpeg2dec"
 
 
 #
-- 
2.6.2


