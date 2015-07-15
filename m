Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08246E0086E; Wed, 15 Jul 2015 12:26:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65764E0086E
	for <poky@yoctoproject.org>; Wed, 15 Jul 2015 12:25:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jul 2015 12:25:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,482,1432623600"; d="scan'208";a="729572395"
Received: from yctb01.ostc.intel.com (HELO yctb01.otcr.intel.com)
	([10.23.219.46])
	by orsmga001.jf.intel.com with ESMTP; 15 Jul 2015 12:25:28 -0700
From: mariano.lopez@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 15 Jul 2015 11:17:48 +0000
Message-Id: <1436959068-45647-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
Subject: [meta-yocto][PATCH] local.conf.sample: Added /tmp to BB_DISKMON_DIRS
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
X-List-Received-Date: Wed, 15 Jul 2015 19:26:01 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

If the there is no space left in /tmp the build
will fail with very exotic errors. This monitor
the space of /tmp.

[YOCTO #8000]

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index a1d99f9..371349d 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -188,13 +188,17 @@ PATCHRESOLVE = "noop"
 # shutdown the build. If there is less that 100MB or 1K inodes, perform a hard abort
 # of the build. The reason for this is that running completely out of space can corrupt
 # files and damages the build in ways which may not be easily recoverable.
+# It's necesary to monitor /tmp, if there is no space left the build will fail
+# with very exotic errors.
 BB_DISKMON_DIRS = "\
     STOPTASKS,${TMPDIR},1G,100K \
     STOPTASKS,${DL_DIR},1G,100K \
     STOPTASKS,${SSTATE_DIR},1G,100K \
+    STOPTASKS,/tmp,100M,100K \
     ABORT,${TMPDIR},100M,1K \
     ABORT,${DL_DIR},100M,1K \
-    ABORT,${SSTATE_DIR},100M,1K" 
+    ABORT,${SSTATE_DIR},100M,1K \
+    ABORT,/tmp,10M,1K"
 
 #
 # Shared-state files from other locations
-- 
1.8.4.5


