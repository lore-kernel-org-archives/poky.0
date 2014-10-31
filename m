Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A58C2E007A0; Fri, 31 Oct 2014 14:19:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 834ECE00749
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 14:19:23 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 31 Oct 2014 14:19:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="409364171"
Received: from unknown (HELO swold-linux.amr.corp.intel.com) ([10.255.13.109])
	by FMSMGA003.fm.intel.com with ESMTP; 31 Oct 2014 14:11:08 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 31 Oct 2014 14:19:22 -0700
Message-Id: <1414790362-1837-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] poky.conf: Bump DISTRO_VERISON for 1.6.2
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
X-List-Received-Date: Fri, 31 Oct 2014 21:19:34 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 127742d..b62de4b 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "1.6.1"
+DISTRO_VERSION = "1.6.2"
 DISTRO_CODENAME = "daisy"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'}"
-- 
1.8.3.1


