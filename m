Return-Path: <george.l.musat@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2246BE009D9; Mon, 11 May 2015 03:38:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 150C4E009D4
	for <poky@yoctoproject.org>; Mon, 11 May 2015 03:38:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2015 03:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,406,1427785200"; d="scan'208";a="723920818"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2015 03:38:27 -0700
Received: from localhost.localdomain (unknown [10.237.112.174])
	by linux.intel.com (Postfix) with ESMTP id F36ED6A408F;
	Mon, 11 May 2015 03:37:57 -0700 (PDT)
From: Lucian Musat <george.l.musat@intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 May 2015 13:37:22 +0300
Message-Id: <1431340642-1538-1-git-send-email-george.l.musat@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] meta-yocto/distro: Added Ubuntu 15.04 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 11 May 2015 10:38:30 -0000

Signed-off-by: Lucian Musat <george.l.musat@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index aa6f01e..ec76ae1 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -74,6 +74,7 @@ SANITY_TESTED_DISTROS ?= " \
             poky-1.8 \n \
             Ubuntu-14.04 \n \
             Ubuntu-14.10 \n \
+            Ubuntu-15.04 \n \
             Fedora-21 \n \
             CentOS-6.* \n \
             CentOS-7.* \n \
-- 
2.1.4


