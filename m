Return-Path: <jiajun.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74C8D4C80A9C
	for <poky@yoctoproject.org>; Tue,  3 May 2011 20:09:43 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 May 2011 18:09:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,312,1301900400"; d="scan'208";a="429985162"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by azsmga001.ch.intel.com with ESMTP; 03 May 2011 18:09:37 -0700
Message-Id: <0c3716b84df2c6d793ea11a5bf56ec6794ae32bb.1304472076.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1304472076.git.jiajun.xu@intel.com>
References: <cover.1304472076.git.jiajun.xu@intel.com>
Old-Date: Wed, 4 May 2011 09:14:02 +0800
Date: Wed, 04 May 2011  9:25:49 +0800
To: poky@yoctoproject.org
CC: 
From: Jiajun Xu <jiajun.xu@intel.com>
Subject: [PATCH 1/1] qemuimagetest: Add executable permission to test scripts for toolchain
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
X-List-Received-Date: Wed, 04 May 2011 01:09:43 -0000

From: Jiajun Xu <jiajun.xu@intel.com>

The file mode bits of toolchain test scripts is 644, which could not be
executed by user. Fix the issue by adding executable permission(755) to
all test scripts for toolchain test.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 0 files changed, 0 insertions(+), 0 deletions(-)
 mode change 100644 => 100755 scripts/qemuimage-tests/toolchain/cvs
 mode change 100644 => 100755 scripts/qemuimage-tests/toolchain/iptables
 mode change 100644 => 100755 scripts/qemuimage-tests/toolchain/sudoku-savant

diff --git a/scripts/qemuimage-tests/toolchain/cvs b/scripts/qemuimage-tests/toolchain/cvs
old mode 100644
new mode 100755
diff --git a/scripts/qemuimage-tests/toolchain/iptables b/scripts/qemuimage-tests/toolchain/iptables
old mode 100644
new mode 100755
diff --git a/scripts/qemuimage-tests/toolchain/sudoku-savant b/scripts/qemuimage-tests/toolchain/sudoku-savant
old mode 100644
new mode 100755
-- 
1.7.1


