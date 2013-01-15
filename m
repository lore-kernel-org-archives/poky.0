Return-Path: <cristiana.voicu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7349E01454
	for <poky@yoctoproject.org>; Tue, 15 Jan 2013 04:35:19 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Jan 2013 04:34:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,473,1355126400"; d="scan'208";a="247007405"
Received: from cvoicu-vostro-460 (HELO localhost.localdomain)
	([10.237.105.151])
	by orsmga001.jf.intel.com with ESMTP; 15 Jan 2013 04:35:13 -0800
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 15 Jan 2013 14:39:27 +0200
Message-Id: <1358253567-31741-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Added DISTRO var to poky-bleeding conf file
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
X-List-Received-Date: Tue, 15 Jan 2013 12:35:20 -0000

-noticed in Hob that when DISTRO was set to poky-bleeding, it was
not saved; it was overriten by "poky"

[YOCTO #3670]
Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta-yocto/conf/distro/poky-bleeding.conf |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto/conf/distro/poky-bleeding.conf b/meta-yocto/conf/distro/poky-bleeding.conf
index 328acfe..43ada90 100644
--- a/meta-yocto/conf/distro/poky-bleeding.conf
+++ b/meta-yocto/conf/distro/poky-bleeding.conf
@@ -6,3 +6,5 @@ PREFERRED_VERSION_gtk+ ?= "2.13.3"
 
 require conf/distro/include/poky-floating-revisions.inc
 require conf/distro/poky.conf
+
+DISTRO = "poky-bleeding"
-- 
1.7.9.5


