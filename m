Return-Path: <george.l.musat@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6B93E00BE1; Tue,  3 Nov 2015 01:11:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5C76E00BA1
	for <poky@yoctoproject.org>; Tue,  3 Nov 2015 01:11:47 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 03 Nov 2015 01:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,238,1444719600"; d="scan'208";a="593068576"
Received: from linux.intel.com ([10.23.219.25])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Nov 2015 01:11:45 -0800
Received: from localhost.localdomain (unknown [10.237.112.174])
	by linux.intel.com (Postfix) with ESMTP id BD0A36A4083;
	Tue,  3 Nov 2015 01:10:38 -0800 (PST)
From: Lucian Musat <george.l.musat@intel.com>
To: poky@yoctoproject.org
Date: Tue,  3 Nov 2015 11:12:59 +0200
Message-Id: <1446541979-4321-2-git-send-email-george.l.musat@intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446541979-4321-1-git-send-email-george.l.musat@intel.com>
References: <1446541979-4321-1-git-send-email-george.l.musat@intel.com>
Subject: [PATCH 2/2] meta-yocto/distro: Updated SANITY_TESTED_DISTROS.
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
X-List-Received-Date: Tue, 03 Nov 2015 09:11:54 -0000

Added Ubuntu 15.10.

Signed-off-by: Lucian Musat <george.l.musat@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index bea9a3a..0dc698b 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -76,6 +76,7 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-14.04 \n \
             Ubuntu-14.10 \n \
             Ubuntu-15.04 \n \
+            Ubuntu-15.10 \n \
             Fedora-21 \n \
             Fedora-22 \n \
             Fedora-23 \n \
-- 
2.1.4


