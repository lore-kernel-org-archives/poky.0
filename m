Return-Path: <george.l.musat@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BC47E0094C; Mon, 23 Mar 2015 03:36:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 034F3E00757
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 03:36:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 23 Mar 2015 03:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,451,1422950400"; d="scan'208";a="696274856"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 23 Mar 2015 03:36:53 -0700
Received: from localhost.localdomain (unknown [10.237.112.174])
	by linux.intel.com (Postfix) with ESMTP id 608AB6A408D;
	Mon, 23 Mar 2015 03:36:33 -0700 (PDT)
From: Lucian Musat <george.l.musat@intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Mar 2015 12:35:12 +0200
Message-Id: <1427106912-9724-1-git-send-email-george.l.musat@intel.com>
X-Mailer: git-send-email 2.0.1
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
X-List-Received-Date: Mon, 23 Mar 2015 10:36:59 -0000

Added OpenSUSE-13.2, Fedora 21. Removed poky 1.6 and Ubuntu 12.04.

Signed-off-by: Lucian Musat <george.l.musat@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 512103c..66c7b4c 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -71,18 +71,15 @@ CONNECTIVITY_CHECK_URIS ?= " \
              http://bugzilla.yoctoproject.org/report.cgi"
 
 SANITY_TESTED_DISTROS ?= " \
-            poky-1.6 \n \
             poky-1.7 \n \
-            Ubuntu-12.04 \n \
             Ubuntu-14.04 \n \
             Ubuntu-14.10 \n \
-            Fedora-20 \n \
+            Fedora-21 \n \
             CentOS-6.* \n \
             CentOS-7.* \n \
             Debian-7.* \n \
             Debian-8.* \n \
-            openSUSE-project-12.3 \n \
-            openSUSE-project-13.1 \n \
+            openSUSE-13.2 \n \
             "
 
 # Default hash policy for distro
-- 
2.0.1


