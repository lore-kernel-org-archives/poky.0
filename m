Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 464534C80FBB
	for <poky@yoctoproject.org>; Tue,  3 May 2011 13:41:50 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 May 2011 22:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,307,1301900400"; d="scan'208";a="917187129"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga001.fm.intel.com with ESMTP; 02 May 2011 22:08:06 -0700
Message-Id: <cover.1304400070.git.jiajun.xu@intel.com>
Old-Date: Tue, 3 May 2011 13:21:10 +0800
Date: Tue, 03 May 2011 13:24:17 +0800
To: poky@yoctoproject.org
CC: 
From: Jiajun Xu <jiajun.xu@intel.com>
Subject: [PATCH 0/1] [Resend] qemuimagetest: Enable toolchain automation tests in qemuimagetest
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
X-List-Received-Date: Tue, 03 May 2011 18:41:50 -0000

From: Jiajun Xu <jiajun.xu@intel.com>

Three C/C++ test projects are added to test toolchain - cvs, iptables and sudoku-savant. 
User needs to set TEST_SCEN to "toolchain" in local.conf to enable tests. Test case will 
check if toolchain tarball exists under "${DEPLOY_DIR}/sdk". And it will extract toolchain 
tarball into /opt. It requires user to chown /opt to non-root user, who will run qemuimagetest.

Update the patch by inherit imagetest-qemu in meta-toolchain instead of populate_sdk.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  qemuimagetest: Enable toolchain automation tests in qemuimagetest

 meta-yocto/conf/local.conf.sample                  |    2 +-
 meta/classes/imagetest-qemu.bbclass                |    9 +-
 meta/recipes-core/meta/meta-toolchain.bb           |    3 +-
 scripts/qemuimage-testlib                          |  232 +++++++++++++++++++-
 .../scenario/qemuarm/meta-toolchain-gmae           |    3 +
 .../scenario/qemumips/meta-toolchain-gmae          |    3 +
 .../scenario/qemuppc/meta-toolchain-gmae           |    3 +
 .../scenario/qemux86-64/meta-toolchain-gmae        |    3 +
 .../scenario/qemux86/meta-toolchain-gmae           |    3 +
 scripts/qemuimage-tests/toolchain/cvs              |   31 +++
 scripts/qemuimage-tests/toolchain/iptables         |   31 +++
 scripts/qemuimage-tests/toolchain/sudoku-savant    |   31 +++
 12 files changed, 349 insertions(+), 5 deletions(-)
 create mode 100644 scripts/qemuimage-tests/scenario/qemuarm/meta-toolchain-gmae
 create mode 100644 scripts/qemuimage-tests/scenario/qemumips/meta-toolchain-gmae
 create mode 100644 scripts/qemuimage-tests/scenario/qemuppc/meta-toolchain-gmae
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/meta-toolchain-gmae
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86/meta-toolchain-gmae
 create mode 100644 scripts/qemuimage-tests/toolchain/cvs
 create mode 100644 scripts/qemuimage-tests/toolchain/iptables
 create mode 100644 scripts/qemuimage-tests/toolchain/sudoku-savant


