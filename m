Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 828A5E01480
	for <poky@yoctoproject.org>; Thu,  9 May 2013 03:38:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 May 2013 03:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="299868564"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.169])
	by azsmga001.ch.intel.com with ESMTP; 09 May 2013 03:38:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  9 May 2013 11:38:43 +0100
Message-Id: <1368095923-15061-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Thu, 09 May 2013 10:38:47 -0000

In line with our policy of supporting the current and previous
releases of host distributions (and additionally the latest LTS release
of Ubuntu):

* Add Ubuntu 13.04 (released on 25th April)
* Remove Fedora 16
* Remove 5.x versions of CentOS
* Remove OpenSUSE 11.4 and 12.1
* Remove pre-1.3 versions of Poky

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 0e143ee..044d051 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -70,26 +70,17 @@ CONNECTIVITY_CHECK_URIS ?= " \
              http://bugzilla.yoctoproject.org/report.cgi"
 
 SANITY_TESTED_DISTROS ?= " \
-            Yocto-1.2 \n \
-            Poky-1.2 \n \
             Poky-1.3 \n \
             Poky-1.4 \n \
-            Ubuntu-10.04 \n \
-            Ubuntu-11.10 \n \
             Ubuntu-12.04 \n \
             Ubuntu-12.10 \n \
-            Fedora-16 \n \
+            Ubuntu-13.04 \n \
             Fedora-17 \n \
             Fedora-18 \n \
-            CentOS-5.6 \n \
-            CentOS-5.7 \n \
-            CentOS-5.8 \n \
             CentOS-6.3 \n \
             CentOS-6.4 \n \
             Debian-6.0 \n \
             Debian-7.0 \n \
-            SUSE-LINUX-11.4 \n \
-            SUSE-LINUX-12.1 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
 	    "
-- 
1.8.1.2


