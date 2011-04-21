Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24F634C80050
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 10:51:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Apr 2011 08:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="736554970"
Received: from miles.jf.intel.com (HELO localhost) ([10.7.199.50])
	by orsmga001.jf.intel.com with ESMTP; 21 Apr 2011 08:51:30 -0700
Message-Id: <cover.1303400947.git.scott.a.garman@intel.com>
Old-Date: Thu, 21 Apr 2011 08:49:07 -0700
Date: Thu, 21 Apr 2011  8:51:29 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] Fix file permissions in scripts/
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
X-List-Received-Date: Thu, 21 Apr 2011 15:51:42 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Richard,

Apparently the recent rename of some of these scripts caused them
to lose their executable permissions. This fixes it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/fixperms
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/fixperms

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  scripts/: enable executable perms on scripts

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


