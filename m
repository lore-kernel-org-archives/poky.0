Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C0D0E00992; Mon,  1 Jun 2015 09:01:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D70BCE00945
	for <poky@yoctoproject.org>; Mon,  1 Jun 2015 09:01:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 01 Jun 2015 09:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,533,1427785200"; d="scan'208";a="718756715"
Received: from fuath.isw.intel.com ([10.237.224.85])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2015 09:01:02 -0700
From: Beth Flanagan <elizabeth.flanagan@intel.com>
To: poky@yoctoproject.org
Date: Mon,  1 Jun 2015 17:01:00 +0100
Message-Id: <1433174460-7940-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] poky.conf: DISTRO_VERSION bump
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
X-List-Received-Date: Mon, 01 Jun 2015 16:01:10 -0000

We missed the DISTRO_VERSION bump for the 1.6.3 release. I've opened
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7836 to
ensure that this doesn't happen again.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index b62de4b..9c10031 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "1.6.2"
+DISTRO_VERSION = "1.6.3"
 DISTRO_CODENAME = "daisy"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'}"
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


