Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 853B74C8112F
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 11:01:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Nov 2010 09:01:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,262,1288594800"; d="scan'208";a="861659857"
Received: from unknown (HELO localhost) ([10.255.20.94])
	by fmsmga001.fm.intel.com with ESMTP; 26 Nov 2010 09:01:08 -0800
Message-Id: <b35d224ec6ee86dd9623103d4020c9e7895a6ccb.1290790131.git.josh@linux.intel.com>
In-Reply-To: <cover.1290790131.git.josh@linux.intel.com>
References: <cover.1290790131.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 26 Nov 2010 14:23:16 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] local.conf.sample: Note extra variables required when disabling en_US locale
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
X-List-Received-Date: Fri, 26 Nov 2010 17:01:11 -0000

When changing which locales are generated for libc it may also be neccessary to
change IMAGE_LINGUAS and LIMIT_BUILT_LOCALES

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/conf/local.conf.sample |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index fae949c..4ba250d 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -158,8 +158,13 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 
 # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
 # wish to perform the time-consuming step of generating all LIBC locales.
+# NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
+# appropriate values for IMAGE_LINGUAS and LIMIT_BUILT_LOCALES
 # WARNING: this may break localisation!
-#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8"
+#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8"
+# See message above as to whether setting these is required
+#IMAGE_LINGUAS ?= "en-gb"
+#LIMIT_BUILT_LOCALES ?= "POSIX en_GB"
 
 # Default to not build 32 bit libs on 64 bit systems, comment this
 # out if that is desired
-- 
1.7.3.2


