Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4CE1E004E5; Mon,  7 Nov 2016 14:48:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1F0FE00498
	for <poky@yoctoproject.org>; Mon,  7 Nov 2016 14:48:51 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Nov 2016 14:48:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,459,1473145200"; 
   d="scan'208";a="855634"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.14.208])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2016 14:48:49 -0800
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Nov 2016 22:48:46 +0000
Message-Id: <1478558926-17384-1-git-send-email-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] poky: update SANITY_TEST_DISTROS for new format
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
X-List-Received-Date: Mon, 07 Nov 2016 22:48:54 -0000

The distribution identifier determined by oe.lsb.distro_identifier()
is now returned as a lowercase string. Update the values for tested
distros to match.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/distro/poky.conf | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 570dc58..d663671 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -74,18 +74,18 @@ SANITY_TESTED_DISTROS ?= " \
             poky-2.0 \n \
             poky-2.1 \n \
             poky-2.2 \n \
-            Ubuntu-14.04 \n \
-            Ubuntu-14.10 \n \
-            Ubuntu-15.04 \n \
-            Ubuntu-15.10 \n \
-            Ubuntu-16.04 \n \
-            Fedora-22 \n \
-            Fedora-23 \n \
-            Fedora-24 \n \
-            CentOSLinux-7.* \n \
-            Debian-8.* \n \
-            openSUSE-13.2 \n \
-            SUSELINUX-42.1 \n \
+            ubuntu-14.04 \n \
+            ubuntu-14.10 \n \
+            ubuntu-15.04 \n \
+            ubuntu-15.10 \n \
+            ubuntu-16.04 \n \
+            fedora-22 \n \
+            fedora-23 \n \
+            fedora-24 \n \
+            centos-7.* \n \
+            debian-8.* \n \
+            opensuse-13.2 \n \
+            opensuse-42.1 \n \
             "
 #
 # OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in 
-- 
2.7.4


