Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97CA94C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:32:08 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2010 05:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="586225139"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2010 05:32:07 -0800
Message-Id: <cover.1293024880.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 22 Dec 2010 21:34:40 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] X apps: some bug fix, Dec12, 2010
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
X-List-Received-Date: Wed, 22 Dec 2010 13:32:08 -0000

Saul/RP,
These are fixes for bug 509&599. Pls. have a look then pull.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/distro06
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro06

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (3):
  matchbox-keyboard: Make as singleton
  matchbox-stroke: Make as singleton
  qemu: Add some checks before enabling KVM

 .../matchbox-keyboard/files/single-instance.patch  |   22 +++++++++++++++++
 .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    1 +
 .../matchbox-stroke/files/single-instance.patch    |   19 +++++++++++++++
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
 scripts/poky-qemu                                  |   25 +++++++++++++++++--
 5 files changed, 65 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-keyboard/files/single-instance.patch
 create mode 100644 meta/recipes-sato/matchbox-stroke/files/single-instance.patch


