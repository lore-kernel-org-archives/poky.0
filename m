Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 622444C811EC
	for <poky@pokylinux.org>; Tue, 18 Jan 2011 10:22:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 08:22:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="594090917"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 08:22:51 -0800
Message-Id: <cover.1295368476.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:34:36 +0800
Date: Wed, 19 Jan 2011  0:36:29 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/1] qemuimagetest: Use same image during sanity testing
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
X-List-Received-Date: Tue, 18 Jan 2011 16:22:52 -0000

To reduce the time on sanity testing, we remove variable SHARE_IMAGE and use
a new variable TEST_SERIALIZE in local.conf. It is by default set to 1. Poky
will copy and boot the to-be tested image for only once. It will not remove
or kill the image and test cases will be serialized executed against the same
image. If it is set to 0, image is always be copied for each cases, which takes
much time. I had a experiment that latest qemuppc sato only takes 7 minutes to
finish 9 sanity test cases, which takes more than 20 minutes before.

I also removed sanity case "boot" for target sato/sdk/lsb because the other cases for
these targets already cover the check point of "boot".

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  qemuimagetest: Use same image during sanity testing instead of
    copying a new image for each case

 meta/classes/imagetest-qemu.bbclass                |   33 +++++-
 meta/conf/local.conf.sample                        |   10 +-
 scripts/qemuimage-testlib                          |  110 ++++++++++++++------
 scripts/qemuimage-tests/sanity/compiler            |    2 +-
 scripts/qemuimage-tests/sanity/connman             |    2 +-
 scripts/qemuimage-tests/sanity/dmesg               |    2 +-
 scripts/qemuimage-tests/sanity/rpm_query           |    2 +-
 scripts/qemuimage-tests/sanity/scp                 |    2 +-
 scripts/qemuimage-tests/sanity/shutdown            |   11 +-
 scripts/qemuimage-tests/sanity/ssh                 |    2 +-
 scripts/qemuimage-tests/sanity/zypper_help         |    2 +-
 scripts/qemuimage-tests/sanity/zypper_search       |    2 +-
 .../scenario/qemuarm/poky-image-lsb                |    3 +-
 .../scenario/qemuarm/poky-image-sato               |    3 +-
 .../scenario/qemuarm/poky-image-sdk                |    3 +-
 .../scenario/qemumips/poky-image-lsb               |    3 +-
 .../scenario/qemumips/poky-image-sato              |    3 +-
 .../scenario/qemumips/poky-image-sdk               |    3 +-
 .../scenario/qemuppc/poky-image-lsb                |    3 +-
 .../scenario/qemuppc/poky-image-sato               |    3 +-
 .../scenario/qemuppc/poky-image-sdk                |    3 +-
 .../scenario/qemux86-64/poky-image-lsb             |    3 +-
 .../scenario/qemux86-64/poky-image-sato            |    3 +-
 .../scenario/qemux86-64/poky-image-sdk             |    3 +-
 .../scenario/qemux86/poky-image-lsb                |    3 +-
 .../scenario/qemux86/poky-image-sato               |    3 +-
 .../scenario/qemux86/poky-image-sdk                |    3 +-
 27 files changed, 138 insertions(+), 87 deletions(-)


