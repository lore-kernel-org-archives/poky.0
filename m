Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 607D04C80039
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 12:56:03 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Jan 2011 10:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,318,1291622400"; d="scan'208";a="592704280"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 13 Jan 2011 10:55:53 -0800
Message-Id: <cover.1294944826.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Thu, 13 Jan 2011 10:53:46 -0800
Date: Thu, 13 Jan 2011 10:58:12 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] poky-qemu fixes for Laverne point-release
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
X-List-Received-Date: Thu, 13 Jan 2011 18:56:03 -0000

Hi Josh,

This pull request includes important poky-qemu fixes that I'd like to
see included for our upcoming Laverne point-release.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/laverne-point-release
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/laverne-point-release

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Richard Purdie (1):
  scripts/poky-qemu: Improve tmp layout assumption

Scott Garman (2):
  poky-qemu: Fix issues when running Yocto 0.9 release images
  Make poky-qemu and related scripts work with arbitrary SDK locations

 scripts/poky-find-native-sysroot |    2 +-
 scripts/poky-qemu                |  104 +++++++++++++++++++++----------------
 scripts/poky-qemu-ifdown         |    9 +---
 scripts/poky-qemu-ifup           |    9 +---
 scripts/poky-qemu-internal       |   16 +------
 5 files changed, 63 insertions(+), 77 deletions(-)

-- 
1.7.3.4


