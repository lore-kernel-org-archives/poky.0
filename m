Return-Path: <paul.eggleton@linux.intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64205E0027F
	for <poky@yoctoproject.org>; Mon, 20 Aug 2012 09:05:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Aug 2012 09:05:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,797,1336374000"; d="scan'208";a="136278816"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.92])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Aug 2012 09:05:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 20 Aug 2012 17:05:47 +0100
Message-Id: <1345478747-14372-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] poky.conf: restore Ubuntu 12.04 LTS to tested distro list
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Aug 2012 16:05:53 -0000

Apparently some people don't apply the normal updates to their Ubuntu
installations, in which case they will not have the version updated to
12.04.1. Since the distinction between the two is fairly minimal,
restore the old version string in addition to the new one.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 711087b..94dc567 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -69,6 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
             Yocto (Built by Poky 7.0) 1.2 \n \
             Ubuntu 10.04.4 LTS \n \
             Ubuntu 11.10 \n \
+            Ubuntu 12.04 LTS \n \
             Ubuntu 12.04.1 LTS \n \
             Fedora release 15 (Lovelock) \n \
             Fedora release 16 (Verne) \n \
-- 
1.7.9.5


