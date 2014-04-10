Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CCCAE00BBF
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 01:09:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 10 Apr 2014 01:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,833,1389772800"; d="scan'208";a="510756671"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2014 01:09:01 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id B718D6A4007;
	Thu, 10 Apr 2014 01:08:44 -0700 (PDT)
From: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 10 Apr 2014 11:14:09 +0300
Message-Id: <1397117649-30487-1-git-send-email-alexandrux.palalau@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] poky.conf: Update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Thu, 10 Apr 2014 08:09:03 -0000

Added openSUSE-project-13.1 to SANITY_TESTED_DISTROS

Signed-off-by: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 2eb6045..786a6b0 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -89,6 +89,7 @@ SANITY_TESTED_DISTROS ?= " \
             Debian-7.4 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
+            openSUSE-project-13.1 \n \
             "
 
 # Default hash policy for distro
-- 
1.8.3.1


