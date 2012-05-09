Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C167E0140E
	for <poky@yoctoproject.org>; Wed,  9 May 2012 14:25:03 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 May 2012 14:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="98267234"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.218])
	by AZSMGA002.ch.intel.com with ESMTP; 09 May 2012 14:25:02 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 May 2012 14:25:02 -0700
Message-Id: <1336598702-1202-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] poky.conf: Change WARNS -> ERRORS
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
X-List-Received-Date: Wed, 09 May 2012 21:25:03 -0000

A major effort was completed as part of 1.2 to fix many WARNING
messages, change the level of those fixed areas to ERROR so we
do not backslide on our quality level

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c01e2b8..9c1e4b6 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -90,3 +90,7 @@ BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
 # with general agreement from the core team.
 #
 OELAYOUT_ABI = "8"
+
+WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
+ERROR_QA = "dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
+
-- 
1.7.7.6


