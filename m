Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F40CE00BA4; Wed,  9 Dec 2015 06:43:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50192E0079A;
	Wed,  9 Dec 2015 06:43:06 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 09 Dec 2015 06:43:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,403,1444719600"; d="scan'208";a="837661845"
Received: from mkotarsk-mobl.ger.corp.intel.com (HELO
	fuath.ger.corp.intel.com) ([10.252.29.212])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2015 06:43:04 -0800
From: Beth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org,
	poky@yoctoproject.org
Date: Wed,  9 Dec 2015 14:43:02 +0000
Message-Id: <1449672182-12023-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] poky.conf: Bump for 2.1 development
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
X-List-Received-Date: Wed, 09 Dec 2015 14:43:10 -0000

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 2c99da8..e62ad4d 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "2.0"
-DISTRO_CODENAME = "jethro"
+DISTRO_VERSION = "2.0+snapshot-${DATE}"
+DISTRO_CODENAME = "master"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
 
-- 
1.9.1

-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


