Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27E374C8110E
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:03:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Dec 2010 00:03:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="588595542"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga002.jf.intel.com with ESMTP; 31 Dec 2010 00:03:34 -0800
Message-Id: <cover.1293783098.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Fri, 31 Dec 2010 16:11:38 +0800
Date: Fri, 31 Dec 2010 16:16:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/4] qemuimagetest: Add several cases for sanity test
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
X-List-Received-Date: Fri, 31 Dec 2010 08:03:35 -0000

There are 5 cases added for sanity test. These cases covers 
basic function check for connman, compiler, zypper and rpm in 
target.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (4):
  qemuimagetest: Add basic function check for zypper command
  qemuimagetest: Add basic function check for rpm command
  qemuimagetest: Add basic function check for gcc/g++/make command in
    target
  qemuimagetest: Add basic function check for connman

 scripts/qemuimage-tests/sanity/compiler            |   52 ++++++++
 scripts/qemuimage-tests/sanity/connman             |   52 ++++++++
 scripts/qemuimage-tests/sanity/rpm_query           |   52 ++++++++
 scripts/qemuimage-tests/sanity/zypper_help         |   52 ++++++++
 scripts/qemuimage-tests/sanity/zypper_search       |   52 ++++++++
 .../scenario/qemuarm/poky-image-lsb                |    4 +
 .../scenario/qemuarm/poky-image-sato               |    4 +
 .../scenario/qemuarm/poky-image-sdk                |    5 +
 .../scenario/qemumips/poky-image-lsb               |    4 +
 .../scenario/qemumips/poky-image-sato              |    4 +
 .../scenario/qemumips/poky-image-sdk               |    5 +
 .../scenario/qemuppc/poky-image-lsb                |    4 +
 .../scenario/qemuppc/poky-image-sato               |    4 +
 .../scenario/qemuppc/poky-image-sdk                |    5 +
 .../scenario/qemux86-64/poky-image-lsb             |    4 +
 .../scenario/qemux86-64/poky-image-sato            |    4 +
 .../scenario/qemux86-64/poky-image-sdk             |    5 +
 .../scenario/qemux86/poky-image-lsb                |    4 +
 .../scenario/qemux86/poky-image-sato               |    4 +
 .../scenario/qemux86/poky-image-sdk                |    5 +
 scripts/qemuimage-tests/tools/compiler_test.sh     |  137 ++++++++++++++++++++
 scripts/qemuimage-tests/tools/connman_test.sh      |   55 ++++++++
 scripts/qemuimage-tests/tools/rpm_test.sh          |   45 +++++++
 scripts/qemuimage-tests/tools/zypper_test.sh       |   45 +++++++
 24 files changed, 607 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/sanity/compiler
 create mode 100755 scripts/qemuimage-tests/sanity/connman
 create mode 100755 scripts/qemuimage-tests/sanity/rpm_query
 create mode 100755 scripts/qemuimage-tests/sanity/zypper_help
 create mode 100755 scripts/qemuimage-tests/sanity/zypper_search
 create mode 100644 scripts/qemuimage-tests/tools/compiler_test.sh
 create mode 100644 scripts/qemuimage-tests/tools/connman_test.sh
 create mode 100644 scripts/qemuimage-tests/tools/rpm_test.sh
 create mode 100644 scripts/qemuimage-tests/tools/zypper_test.sh


