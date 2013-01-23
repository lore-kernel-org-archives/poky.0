Return-Path: <radu.moisan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBAF8E014AA
	for <poky@yoctoproject.org>; Wed, 23 Jan 2013 00:11:32 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jan 2013 00:10:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,520,1355126400"; d="scan'208";a="275526204"
Received: from dell-desktop (HELO localhost.localdomain) ([10.237.105.59])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2013 00:11:31 -0800
From: Radu Moisan <radu.moisan@intel.com>
To: poky@yoctoproject.org
Date: Wed, 23 Jan 2013 10:18:17 +0200
Message-Id: <1358929097-3553-1-git-send-email-radu.moisan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] sample.extended: Add DISTRO_FEATURES_INITMAN
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
X-List-Received-Date: Wed, 23 Jan 2013 08:11:32 -0000

Signed-off-by: Radu Moisan <radu.moisan@intel.com>
---
 meta-yocto/conf/local.conf.sample.extended |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index e5dfc89..7368566 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -215,3 +215,7 @@
 # Put the following two lines in the conf file with intact.
 #ARCHIVER_CLASS = "${@'archive-${ARCHIVER_MODE}-source' if ARCHIVER_MODE != 'none' else ''}"
 #INHERIT += "${ARCHIVER_CLASS}"
+#
+# set init manager: sysvinit or systemd
+# sysvinit is the default choice
+#DISTRO_FEATURES_INITMAN ?= "sysvinit"
-- 
1.7.9.5


