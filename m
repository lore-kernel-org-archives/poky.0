Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 821ABE00BB8
	for <poky@yoctoproject.org>; Wed,  9 Apr 2014 07:54:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Apr 2014 07:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,826,1389772800"; d="scan'208";a="510165914"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 09 Apr 2014 07:52:51 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id 2BB276A4083;
	Wed,  9 Apr 2014 07:52:33 -0700 (PDT)
From: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Apr 2014 17:57:58 +0300
Message-Id: <1397055478-14158-1-git-send-email-alexandrux.palalau@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] poky.conf: Removed Ubuntu 12.10, Ubuntu 13.04 and Fedora 18 from SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 09 Apr 2014 14:54:10 -0000

Signed-off-by: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 7cf35d0..1f8ee12 100644
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
+	    Ubuntu-14.04 \n \
             Fedora-19 \n \
             Fedora-20 \n \
             CentOS-6.4 \n \
-- 
1.8.3.1


