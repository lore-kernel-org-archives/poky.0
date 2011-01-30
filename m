Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A8F04C80594
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 21:34:57 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Jan 2011 19:34:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="702035413"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Jan 2011 19:34:56 -0800
Message-Id: <cover.1296359355.git.dongxiao.xu@intel.com>
Old-Date: Sun, 30 Jan 2011 11:49:15 +0800
Date: Sun, 30 Jan 2011 11:51:40 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Add RDEPENDS of hal in xserver-kdrive
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
X-List-Received-Date: Sun, 30 Jan 2011 03:34:57 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Saul,

This pull request adds RDEPENDS of hal in xserver-kdrive, which solves the issue of missing libhal.so.1 when booting X in qemuarm/qemumips target.

Please help to review and pull

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  xserver-kdrive: add missing RDEPENDS of hal

 .../xorg-xserver/xserver-kdrive_1.7.99.2.bb        |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)


