Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35479E0086E; Fri,  9 Jan 2015 02:29:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B78D2E004D6
	for <poky@yoctoproject.org>; Fri,  9 Jan 2015 02:28:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Jan 2015 02:26:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,729,1413270000"; d="scan'208";a="634813606"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.3.186])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2015 02:28:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  9 Jan 2015 10:28:47 +0000
Message-Id: <1420799327-30178-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH v2] poky.conf: mark all CentOS 6/7 versions as compatible
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
X-List-Received-Date: Fri, 09 Jan 2015 10:29:06 -0000

It's rather unlikely with a distribution such as CentOS that they would
introduce changes that would cause us issues that we would not be
prepared to fix; therefore use a wildcard to suppress the warning (in
any case, CentOS 6.6 is now the current 6.x version.)

Also add CentOS 7 as we are running regular builds on CentOS 7 machines
as part of the autobuilder infrastructure.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 71b3b14..80dc853 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -80,7 +80,8 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-14.04 \n \
             Ubuntu-14.10 \n \
             Fedora-20 \n \
-            CentOS-6.5 \n \
+            CentOS-6.* \n \
+            CentOS-7.* \n \
             Debian-7.* \n \
             Debian-8.* \n \
             openSUSE-project-12.3 \n \
-- 
1.9.3


