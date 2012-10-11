Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 618CCE0145B
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 11:43:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 11:43:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="225719021"
Received: from duke.jf.intel.com (HELO localhost) ([10.7.199.52])
	by orsmga002.jf.intel.com with ESMTP; 11 Oct 2012 11:43:55 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 11:43:49 -0700
Message-Id: <84eec05ee212a437c38a86d00a06fa7df4ebf914.1349980878.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
Subject: [PATCH 1/8] udev: don't mount with -o sync
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
X-List-Received-Date: Thu, 11 Oct 2012 18:43:56 -0000

From: Jesse Zhang <sen.zhang@windriver.com>

mount.sh mounts all partitions with -o sync, which is bad for system
performance.

(From OE-Core rev: d49cf73754150b50a911d326aaa666f5da78855c)

Signed-off-by: Jesse Zhang <sen.zhang@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-core/udev/udev/mount.sh |    2 +-
 meta/recipes-core/udev/udev_164.bb   |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/udev/udev/mount.sh b/meta/recipes-core/udev/udev/mount.sh
index 53fefa3..c13b8bb 100644
--- a/meta/recipes-core/udev/udev/mount.sh
+++ b/meta/recipes-core/udev/udev/mount.sh
@@ -23,7 +23,7 @@ automount() {
 
 	! test -d "/media/$name" && mkdir -p "/media/$name"
 	
-	if ! $MOUNT -t auto -o sync $DEVNAME "/media/$name"
+	if ! $MOUNT -t auto $DEVNAME "/media/$name"
 	then
 		#logger "mount.sh/automount" "$MOUNT -t auto $DEVNAME \"/media/$name\" failed!"
 		rm_dir "/media/$name"
diff --git a/meta/recipes-core/udev/udev_164.bb b/meta/recipes-core/udev/udev_164.bb
index c5813ec..0462ff2 100644
--- a/meta/recipes-core/udev/udev_164.bb
+++ b/meta/recipes-core/udev/udev_164.bb
@@ -1,6 +1,6 @@
 include udev.inc
 
-PR = "r13"
+PR = "r14"
 
 SRC_URI += "file://udev-166-v4l1-1.patch"
 
-- 
1.7.9.5


