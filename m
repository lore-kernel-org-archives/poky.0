Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD3104C800A7
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 03:00:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Mar 2011 01:00:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,276,1297065600"; d="scan'208";a="664561636"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2011 01:00:07 -0800
Message-Id: <cover.1299488041.git.dexuan.cui@intel.com>
Old-Date: Mon, 7 Mar 2011 16:54:01 +0800
Date: Mon, 07 Mar 2011 16:58:45 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 0/1] util-macros: fix DEPENDS: this breaks nightly
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
X-List-Received-Date: Mon, 07 Mar 2011 09:00:09 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

We need to fix both master and bernard asap since this blocks nightly
building meta-toolchain-gmae.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  util-macros: fix DEPENDS in the case of native/nativesdk

 .../xorg-util/util-macros_1.11.0.bb                |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

-- 
1.7.2


