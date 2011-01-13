Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC6C14C80BCF
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 19:36:36 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Jan 2011 17:36:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,315,1291622400"; d="scan'208";a="592418067"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga002.jf.intel.com with ESMTP; 12 Jan 2011 17:36:36 -0800
Message-Id: <cover.1294883271.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Thu, 13 Jan 2011 09:47:51 +0800
Date: Thu, 13 Jan 2011  9:50:06 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] qemuimagetest: Use the same image in sanity testing to fix the timeout issue on autobuilder
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
X-List-Received-Date: Thu, 13 Jan 2011 01:36:37 -0000

Fixes [BUGID #595]

Because of the QEMU booting slowness issue(see bug #646 and #618), autobuilder
is suffering a timeout issue when running sanity test. We introduce variable
SHARE_IMAGE here to fix the issue. It is by default set to 1. Poky will copy
latest built-out image and keep using it in sanity testing. If it is set to 0,
latest built-out image will be copied and tested for each case, which will take
much time.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  qemuimagetest: Use the same image in sanity testing to fix the
    timeout issue on autobuilder

 meta/classes/imagetest-qemu.bbclass                |   22 +++++++++++++++++--
 meta/conf/local.conf.sample                        |    8 +++++++
 scripts/qemuimage-testlib                          |    7 ++++++
 scripts/qemuimage-tests/sanity/compiler            |    2 +-
 scripts/qemuimage-tests/sanity/connman             |    2 +-
 scripts/qemuimage-tests/sanity/dmesg               |    2 +-
 scripts/qemuimage-tests/sanity/rpm_query           |    2 +-
 scripts/qemuimage-tests/sanity/scp                 |    2 +-
 scripts/qemuimage-tests/sanity/shutdown            |    7 +++++-
 scripts/qemuimage-tests/sanity/ssh                 |    2 +-
 scripts/qemuimage-tests/sanity/zypper_help         |    2 +-
 scripts/qemuimage-tests/sanity/zypper_search       |    2 +-
 .../scenario/qemuarm/poky-image-lsb                |    2 +-
 .../scenario/qemuarm/poky-image-sato               |    2 +-
 .../scenario/qemuarm/poky-image-sdk                |    2 +-
 .../scenario/qemumips/poky-image-lsb               |    2 +-
 .../scenario/qemumips/poky-image-sato              |    2 +-
 .../scenario/qemumips/poky-image-sdk               |    2 +-
 .../scenario/qemuppc/poky-image-lsb                |    2 +-
 .../scenario/qemuppc/poky-image-sato               |    2 +-
 .../scenario/qemuppc/poky-image-sdk                |    2 +-
 .../scenario/qemux86-64/poky-image-lsb             |    2 +-
 .../scenario/qemux86-64/poky-image-sato            |    2 +-
 .../scenario/qemux86-64/poky-image-sdk             |    2 +-
 .../scenario/qemux86/poky-image-lsb                |    2 +-
 .../scenario/qemux86/poky-image-sato               |    2 +-
 .../scenario/qemux86/poky-image-sdk                |    2 +-
 27 files changed, 63 insertions(+), 27 deletions(-)


