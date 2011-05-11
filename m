Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7ED4F4C800BA
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:13:42 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 02:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,352,1301900400"; d="scan'208";a="641145962"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2011 02:13:41 -0700
Message-Id: <1abd3e83579618798b6e41932170e1b634026650.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 27 Apr 2011 14:53:51 +0800
Date: Wed, 11 May 2011 17:19:57 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 1/8] iputils: update patch Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 09:13:42 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../files/debian/add-icmp-return-codes.diff        |    2 ++
 .../iputils/files/debian/fix-arping-timeouts.diff  |    2 ++
 .../files/debian/fix-dead-host-ping-stats.diff     |    2 ++
 .../iputils/files/debian/targets.diff              |    2 ++
 .../iputils/files/debian/use_gethostbyname2.diff   |    2 ++
 5 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/iputils/files/debian/add-icmp-return-codes.diff b/meta/recipes-extended/iputils/files/debian/add-icmp-return-codes.diff
index 86bbf0d..40070c3 100644
--- a/meta/recipes-extended/iputils/files/debian/add-icmp-return-codes.diff
+++ b/meta/recipes-extended/iputils/files/debian/add-icmp-return-codes.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending [from other distro Debian]
+
 Index: trunk/ping.c
 ===================================================================
 --- trunk.orig/ping.c	2010-05-07 23:13:54.000000000 -0700
diff --git a/meta/recipes-extended/iputils/files/debian/fix-arping-timeouts.diff b/meta/recipes-extended/iputils/files/debian/fix-arping-timeouts.diff
index 9f05769..3e34788 100644
--- a/meta/recipes-extended/iputils/files/debian/fix-arping-timeouts.diff
+++ b/meta/recipes-extended/iputils/files/debian/fix-arping-timeouts.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending [from other distro Debian]
+
 Index: trunk/arping.c
 ===================================================================
 --- trunk.orig/arping.c	2010-05-07 23:13:52.000000000 -0700
diff --git a/meta/recipes-extended/iputils/files/debian/fix-dead-host-ping-stats.diff b/meta/recipes-extended/iputils/files/debian/fix-dead-host-ping-stats.diff
index 2a92425..fda42bf 100644
--- a/meta/recipes-extended/iputils/files/debian/fix-dead-host-ping-stats.diff
+++ b/meta/recipes-extended/iputils/files/debian/fix-dead-host-ping-stats.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending [from other distro Debian]
+
 Index: trunk/ping_common.c
 ===================================================================
 --- trunk.orig/ping_common.c	2010-05-07 23:13:51.000000000 -0700
diff --git a/meta/recipes-extended/iputils/files/debian/targets.diff b/meta/recipes-extended/iputils/files/debian/targets.diff
index b5e907a..6b899cb 100644
--- a/meta/recipes-extended/iputils/files/debian/targets.diff
+++ b/meta/recipes-extended/iputils/files/debian/targets.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [disable feature]
+
 Index: trunk/Makefile
 ===================================================================
 --- trunk.orig/Makefile	2010-05-07 23:43:00.000000000 -0700
diff --git a/meta/recipes-extended/iputils/files/debian/use_gethostbyname2.diff b/meta/recipes-extended/iputils/files/debian/use_gethostbyname2.diff
index 7e6c97c..1d01e15 100644
--- a/meta/recipes-extended/iputils/files/debian/use_gethostbyname2.diff
+++ b/meta/recipes-extended/iputils/files/debian/use_gethostbyname2.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending [from other distro Debian]
+
 Index: trunk/tracepath.c
 ===================================================================
 --- trunk.orig/tracepath.c	2010-05-07 23:13:52.000000000 -0700
-- 
1.7.0.4


