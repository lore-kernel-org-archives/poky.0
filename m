Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B61E00596
	for <poky@yoctoproject.org>; Thu,  3 May 2012 09:40:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2012 09:40:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136652313"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.59])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2012 09:40:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 May 2012 17:40:51 +0100
Message-Id: <a7c99bc7eba237cf9337f7a914ac05ea46b844df.1336063152.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1336063152.git.paul.eggleton@linux.intel.com>
References: <cover.1336063152.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1336063152.git.paul.eggleton@linux.intel.com>
References: <cover.1336063152.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] poky.conf: use correct version string for Ubuntu 12.04
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
X-List-Received-Date: Thu, 03 May 2012 16:40:59 -0000

Since it is an LTS release, the final version string was not
"Ubuntu 12.04" but "Ubuntu 12.04 LTS", so use this when doing the tested
host distribution check.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 32804ce..c01e2b8 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
             Yocto (Built by Poky 7.0) 1.2 \n \
             Ubuntu 10.04.4 LTS \n \
             Ubuntu 11.10 \n \
-            Ubuntu 12.04 \n \
+            Ubuntu 12.04 LTS \n \
             Fedora release 15 (Lovelock) \n \
             Fedora release 16 (Verne) \n \
             Fedora release 17 (Beefy Miracle) \n \
-- 
1.7.5.4


