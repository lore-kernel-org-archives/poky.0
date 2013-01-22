Return-Path: <radu.moisan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43773E0147E
	for <poky@yoctoproject.org>; Tue, 22 Jan 2013 07:23:05 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jan 2013 07:23:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,515,1355126400"; d="scan'208";a="280582805"
Received: from dell-desktop (HELO localhost.localdomain) ([10.237.105.59])
	by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2013 07:23:03 -0800
From: Radu Moisan <radu.moisan@intel.com>
To: poky@yoctoproject.org
Date: Tue, 22 Jan 2013 17:29:49 +0200
Message-Id: <1358868589-2359-1-git-send-email-radu.moisan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] local.conf.sample: Add DISTRO_FEATURES_INITMAN
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
X-List-Received-Date: Tue, 22 Jan 2013 15:23:05 -0000

Default option is sysvinit

Signed-off-by: Radu Moisan <radu.moisan@intel.com>
---
 meta-yocto/conf/local.conf.sample |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 200b4af..273e0eb 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -243,3 +243,6 @@ BB_DISKMON_DIRS = "\
 # track the version of this file when it was generated. This can safely be ignored if
 # this doesn't mean anything to you.
 CONF_VERSION = "1"
+
+# set default init manager: sysvinit or systemd
+DISTRO_FEATURES_INITMAN ?= "sysvinit"
-- 
1.7.9.5


