Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3985E0073F
	for <poky@yoctoproject.org>; Fri, 16 Aug 2013 04:22:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Aug 2013 04:19:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,894,1367996400"; d="scan'208";a="363590205"
Received: from timevans-mobl.ger.corp.intel.com (HELO
	helios.ger.corp.intel.com) ([10.252.122.223])
	by orsmga001.jf.intel.com with ESMTP; 16 Aug 2013 04:22:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 16 Aug 2013 12:22:25 +0100
Message-Id: <1376652145-6169-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] poky.conf: update version for 1.4.2 release
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
X-List-Received-Date: Fri, 16 Aug 2013 11:22:31 -0000

Update DISTRO_VERSION to 1.4.2 prior to the release and add this version
to the list of tested distributions. DISTRO_NAME also needed to be
updated to refer to Poky 9.0.2 specifically.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 2d3f9f4..a16522d 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
-DISTRO_NAME = "Poky 9.0 (Yocto Project 1.4 Reference Distro)"
-DISTRO_VERSION = "1.4.1"
+DISTRO_NAME = "Poky 9.0.2 (Yocto Project 1.4 Reference Distro)"
+DISTRO_VERSION = "1.4.2"
 DISTRO_CODENAME = "dylan"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'}"
@@ -76,6 +76,7 @@ SANITY_TESTED_DISTROS ?= " \
             Poky-1.3 \n \
             Poky-1.4 \n \
             Poky-1.4.1 \n \
+            Poky-1.4.2 \n \
             Ubuntu-10.04 \n \
             Ubuntu-11.10 \n \
             Ubuntu-12.04 \n \
-- 
1.8.1.2


