Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DE05E0094C; Mon, 23 Mar 2015 02:59:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FCC5E00757
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 02:59:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Mar 2015 02:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,451,1422950400"; d="scan'208";a="684160742"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 23 Mar 2015 02:59:00 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.65])
	by linux.intel.com (Postfix) with ESMTP id 411DC6A408D;
	Mon, 23 Mar 2015 02:58:41 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Mar 2015 11:58:49 +0200
Message-Id: <1427104729-13015-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] poky.conf: Fix 'distro is not validated' warning for OpenSUSE
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
X-List-Received-Date: Mon, 23 Mar 2015 09:59:04 -0000

Updated openSUSE distro names used in meta-yocto/conf/distro/poky.conf.

Currently used distro names cause bitbake to issue this warning on
all openSUSE systems:
WARNING: Host distribution "openSUSE-NN.N" has not been validated
with this version of the build system.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 512103c..886b3d8 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -81,8 +81,8 @@ SANITY_TESTED_DISTROS ?= " \
             CentOS-7.* \n \
             Debian-7.* \n \
             Debian-8.* \n \
-            openSUSE-project-12.3 \n \
-            openSUSE-project-13.1 \n \
+            openSUSE-12.3 \n \
+            openSUSE-13.1 \n \
             "
 
 # Default hash policy for distro
-- 
2.1.4


