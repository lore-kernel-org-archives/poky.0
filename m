Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D7904C800BA
	for <poky@yoctoproject.org>; Fri, 17 Jun 2011 22:16:12 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jun 2011 20:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,384,1304319600"; d="scan'208";a="19724106"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.13.73])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2011 20:16:11 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 17 Jun 2011 20:16:04 -0700
Message-Id: <85e22915241def8ef365762345942443c0828025.1308366864.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1308366864.git.josh@linux.intel.com>
References: <cover.1308366864.git.josh@linux.intel.com>
In-Reply-To: <cover.1308366864.git.josh@linux.intel.com>
References: <cover.1308366864.git.josh@linux.intel.com>
Subject: [RFC PATCH 1/1] local.conf.sample: update suggestions for BB_NUMBER_THREADS and PARALLEL_MAKE
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
X-List-Received-Date: Sat, 18 Jun 2011 03:16:12 -0000

It's been suggested that BB_NUMBER_THREADS should be 2 * the number of cores
and PARALLEL_MAKE should be equal to the number of cores available on the
build machine.

Update local.conf.sample to suggest this.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index ea32b81..43d06e6 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -9,7 +9,9 @@ CONF_VERSION = "1"
 #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
 
 # Uncomment and set to allow bitbake to execute multiple tasks at once.
-# For a quadcore, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
+# Recommended values are twice the number of processor cores for
+# BB_NUMBER_THREADS and the number of processor cores for PARALLEL_MAKE
+# For a quadcore, BB_NUMBER_THREADS = "8", PARALLEL_MAKE = "-j 4" would
 # be appropriate.
 # BB_NUMBER_THREADS = "4"
 # Also, make can be passed flags so it run parallel threads e.g.:
-- 
1.7.5.4


