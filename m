Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D635BE00BBA
	for <poky@yoctoproject.org>; Wed,  9 Apr 2014 08:08:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Apr 2014 08:08:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,826,1389772800"; d="scan'208";a="517564007"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2014 08:06:47 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id D9C3E6A4083;
	Wed,  9 Apr 2014 08:06:29 -0700 (PDT)
From: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Apr 2014 18:11:53 +0300
Message-Id: <1397056313-15121-1-git-send-email-alexandrux.palalau@linux.intel.com>
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
X-List-Received-Date: Wed, 09 Apr 2014 15:08:43 -0000

Removed Ubuntu 12.10, Ubuntu 13.04 and Fedora 18 from SANITY_TESTED_DISTROS
Added Ubuntu 14.04. Tests were done for Ubuntu 14.04 beta.

Signed-off-by: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 7cf35d0..2eb6045 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -76,10 +76,8 @@ SANITY_TESTED_DISTROS ?= " \
             Poky-1.5 \n \
             Poky-1.6 \n \
             Ubuntu-12.04 \n \
-            Ubuntu-12.10 \n \
-            Ubuntu-13.04 \n \
             Ubuntu-13.10 \n \
-            Fedora-18 \n \
+            Ubuntu-14.04 \n \
             Fedora-19 \n \
             Fedora-20 \n \
             CentOS-6.4 \n \
-- 
1.8.3.1


