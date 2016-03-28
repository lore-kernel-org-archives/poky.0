Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D4BE00C72; Mon, 28 Mar 2016 11:08:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B44DE00863
	for <poky@yoctoproject.org>; Mon, 28 Mar 2016 11:07:59 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 28 Mar 2016 11:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,407,1455004800"; d="scan'208";a="773270548"
Received: from spareek-mobl6.amr.corp.intel.com (HELO swold-mobl.jf.intel.com)
	([10.254.108.99])
	by orsmga003.jf.intel.com with ESMTP; 28 Mar 2016 11:07:59 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 28 Mar 2016 11:07:57 -0700
Message-Id: <1459188477-13472-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.5.0
Subject: [PATCH] genericx86-64: add uxa to PACKAGECONFIG
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
X-List-Received-Date: Mon, 28 Mar 2016 18:08:07 -0000

This adds the uxa to PACKAGECONFIG to enable the UXA AccelMethod
in the xf86-video-intel X11 graphics driver.  This address bad
graphics output with older NUC5i5 devices with Intel Graphics HD6000

[YOCTO #8312]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index f76e35a..7d98450 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -6,3 +6,5 @@
 DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
+
+PACKAGECONFIG_append_pn-xf86-video-intel = " uxa"
-- 
2.5.0


