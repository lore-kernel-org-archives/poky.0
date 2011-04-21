Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E23B4C80A7B
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 10:51:56 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Apr 2011 08:51:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="632113100"
Received: from miles.jf.intel.com (HELO localhost) ([10.7.199.50])
	by orsmga002.jf.intel.com with ESMTP; 21 Apr 2011 08:51:31 -0700
Message-Id: <3c379dec5df326ec47d6a00e077e77a80151c0a6.1303400947.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1303400947.git.scott.a.garman@intel.com>
References: <cover.1303400947.git.scott.a.garman@intel.com>
Old-Date: Thu, 21 Apr 2011 08:47:26 -0700
Date: Thu, 21 Apr 2011  8:51:29 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/1] scripts/: enable executable perms on scripts
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
X-List-Received-Date: Thu, 21 Apr 2011 15:51:57 -0000

From: Scott Garman <scott.a.garman@intel.com>

The recent rename apparently caused these scripts to lose their
executable permissions.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 0 files changed, 0 insertions(+), 0 deletions(-)
 mode change 100644 => 100755 scripts/oe-find-native-sysroot
 mode change 100644 => 100755 scripts/oe-git-proxy-command
 mode change 100644 => 100755 scripts/oe-setup-builddir
 mode change 100644 => 100755 scripts/oe-setup-rpmrepo
 mode change 100644 => 100755 scripts/oe-trim-schemas
 mode change 100644 => 100755 scripts/qemuimage-testlib
 mode change 100644 => 100755 scripts/runqemu-addptable2image
 mode change 100644 => 100755 scripts/runqemu-export-rootfs
 mode change 100644 => 100755 scripts/runqemu-extract-sdk
 mode change 100644 => 100755 scripts/runqemu-gen-tapdevs

diff --git a/scripts/oe-find-native-sysroot b/scripts/oe-find-native-sysroot
old mode 100644
new mode 100755
diff --git a/scripts/oe-git-proxy-command b/scripts/oe-git-proxy-command
old mode 100644
new mode 100755
diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
old mode 100644
new mode 100755
diff --git a/scripts/oe-setup-rpmrepo b/scripts/oe-setup-rpmrepo
old mode 100644
new mode 100755
diff --git a/scripts/oe-trim-schemas b/scripts/oe-trim-schemas
old mode 100644
new mode 100755
diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
old mode 100644
new mode 100755
diff --git a/scripts/runqemu-addptable2image b/scripts/runqemu-addptable2image
old mode 100644
new mode 100755
diff --git a/scripts/runqemu-export-rootfs b/scripts/runqemu-export-rootfs
old mode 100644
new mode 100755
diff --git a/scripts/runqemu-extract-sdk b/scripts/runqemu-extract-sdk
old mode 100644
new mode 100755
diff --git a/scripts/runqemu-gen-tapdevs b/scripts/runqemu-gen-tapdevs
old mode 100644
new mode 100755
-- 
1.7.1


