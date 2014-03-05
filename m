Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B01E00A36
	for <poky@yoctoproject.org>; Wed,  5 Mar 2014 01:52:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 01:52:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,591,1389772800"; d="scan'208";a="466946346"
Received: from maurorob-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.80])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 01:52:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  5 Mar 2014 09:52:46 +0000
Message-Id: <1394013166-14301-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [dylan][PATCH] poky.conf: add Poky-1.4.3 to SANITY_TESTED_DISTROS for Build Appliance
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
X-List-Received-Date: Wed, 05 Mar 2014 09:53:00 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index d90ec5b..a4d2e24 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -77,6 +77,7 @@ SANITY_TESTED_DISTROS ?= " \
             Poky-1.4 \n \
             Poky-1.4.1 \n \
             Poky-1.4.2 \n \
+            Poky-1.4.3 \n \
             Ubuntu-10.04 \n \
             Ubuntu-11.10 \n \
             Ubuntu-12.04 \n \
-- 
1.8.5.3


