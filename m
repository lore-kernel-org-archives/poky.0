Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61E03E00C80; Thu,  4 Aug 2016 13:20:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E07E00B45
	for <poky@yoctoproject.org>; Thu,  4 Aug 2016 13:20:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 04 Aug 2016 13:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,471,1464678000"; d="scan'208";a="1035275676"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.5.37])
	by fmsmga002.fm.intel.com with ESMTP; 04 Aug 2016 13:19:14 -0700
From: Jose Perez Carranza <jose.perez.carranza@intel.com>
To: poky@yoctoproject.org
Date: Thu,  4 Aug 2016 15:26:32 -0500
Message-Id: <1470342392-20924-1-git-send-email-jose.perez.carranza@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] poky: update supported distros
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
X-List-Received-Date: Thu, 04 Aug 2016 20:20:44 -0000

Update existing supported distros CentOS and OpenSuse to avoid
unsupported distro warning, Add SUSELINUX for leap version.
For Yocto Project releases 1.7 was dropped and 2.1,2.2 added.

[Yocto #10067]

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@intel.com>
---
 meta-poky/conf/distro/poky.conf | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8390ab4..2e18e3d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -70,9 +70,10 @@ https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 CONNECTIVITY_CHECK_URIS ?= "https://www.example.com/"
 
 SANITY_TESTED_DISTROS ?= " \
-            poky-1.7 \n \
             poky-1.8 \n \
             poky-2.0 \n \
+            poky-2.1 \n \
+            poky-2.2 \n \
             Ubuntu-14.04 \n \
             Ubuntu-14.10 \n \
             Ubuntu-15.04 \n \
@@ -80,9 +81,10 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-16.04 \n \
             Fedora-22 \n \
             Fedora-23 \n \
-            CentOS-7.* \n \
+            CentOSLinux-7.* \n \
             Debian-8.* \n \
-            openSUSE-project-13.2 \n \
+            openSUSE-13.2 \n \
+            SUSELINUX-42.1 \n \
             "
 #
 # OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in 
-- 
1.9.1


