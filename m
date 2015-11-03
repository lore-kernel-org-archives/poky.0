Return-Path: <george.l.musat@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C5A1E00B56; Tue,  3 Nov 2015 01:08:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 686B4E00B4A
	for <poky@yoctoproject.org>; Tue,  3 Nov 2015 01:08:34 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 03 Nov 2015 01:08:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,238,1444719600"; d="scan'208";a="841349017"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 03 Nov 2015 01:08:34 -0800
Received: from localhost.localdomain (unknown [10.237.112.174])
	by linux.intel.com (Postfix) with ESMTP id 983EB6A4083;
	Tue,  3 Nov 2015 01:07:30 -0800 (PST)
From: Lucian Musat <george.l.musat@intel.com>
To: poky@yoctoproject.org
Date: Tue,  3 Nov 2015 11:09:51 +0200
Message-Id: <1446541791-4183-1-git-send-email-george.l.musat@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] meta-yocto/distro: Updated SANITY_TESTED_DISTROS.
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
X-List-Received-Date: Tue, 03 Nov 2015 09:08:43 -0000

Added poky 2.0 and Fedora 22.

Signed-off-by: Lucian Musat <george.l.musat@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 4243838..0422f24 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -72,10 +72,12 @@ CONNECTIVITY_CHECK_URIS ?= " \
 SANITY_TESTED_DISTROS ?= " \
             poky-1.7 \n \
             poky-1.8 \n \
+            poky-2.0 \n \
             Ubuntu-14.04 \n \
             Ubuntu-14.10 \n \
             Ubuntu-15.04 \n \
             Fedora-21 \n \
+            Fedora-22 \n \
             CentOS-6.* \n \
             CentOS-7.* \n \
             Debian-7.* \n \
-- 
2.1.4


