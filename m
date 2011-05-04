Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB5144C80A73
	for <poky@yoctoproject.org>; Tue,  3 May 2011 20:09:41 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 May 2011 18:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,312,1301900400"; d="scan'208";a="917613726"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga001.fm.intel.com with ESMTP; 03 May 2011 18:09:36 -0700
Message-Id: <cover.1304472076.git.jiajun.xu@intel.com>
Old-Date: Wed, 4 May 2011 09:21:16 +0800
Date: Wed, 04 May 2011  9:25:48 +0800
To: poky@yoctoproject.org
CC: 
From: Jiajun Xu <jiajun.xu@intel.com>
Subject: [PATCH 0/1] qemuimagetest: Add executable permission to toolchain test scripts
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
X-List-Received-Date: Wed, 04 May 2011 01:09:42 -0000

From: Jiajun Xu <jiajun.xu@intel.com>

The file mode bits of toolchain test scripts is 644, which could not be
executed by user. Fix the issue by adding executable permission(755) to
all test scripts for toolchain test.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  qemuimagetest: Add executable permission to test scripts for
    toolchain

 0 files changed, 0 insertions(+), 0 deletions(-)
 mode change 100644 => 100755 scripts/qemuimage-tests/toolchain/cvs
 mode change 100644 => 100755 scripts/qemuimage-tests/toolchain/iptables
 mode change 100644 => 100755 scripts/qemuimage-tests/toolchain/sudoku-savant


