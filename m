Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10B7AE0097D; Wed, 13 May 2015 13:11:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEAC3E008DC
	for <poky@yoctoproject.org>; Wed, 13 May 2015 13:10:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 13 May 2015 13:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,422,1427785200"; d="scan'208";a="709788162"
Received: from yctb01.ostc.intel.com (HELO yctb01.otcr.intel.com)
	([10.23.219.46])
	by fmsmga001.fm.intel.com with ESMTP; 13 May 2015 13:10:35 -0700
From: mariano.lopez@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 May 2015 12:05:24 +0000
Message-Id: <1431518724-43430-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
Subject: [PATCH] poky.conf: Fix git URL example
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
X-List-Received-Date: Wed, 13 May 2015 20:11:03 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

The git URL example fails because bitbake fetch checks references (refs/heads, refs/tags).
It is not able to search for HEAD alone.

This search mode was implemented on 2014-01-21

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index aa6f01e..f0ef12f 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -63,7 +63,7 @@ https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 # The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
 # fetch from the network (and warn you if not). To disable the test set
 # the variable to be empty.
-# Git example url: git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD
+# Git example url: git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=master
 
 CONNECTIVITY_CHECK_URIS ?= " \
              https://eula-downloads.yoctoproject.org/index.php \
-- 
1.8.4.5


