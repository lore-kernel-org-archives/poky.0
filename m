Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAE7B4C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 02:22:14 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 00:22:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="720245414"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.124])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 00:22:13 -0700
Message-Id: <cover.1300173515.git.dongxiao.xu@intel.com>
Old-Date: Tue, 15 Mar 2011 15:18:35 +0800
Date: Tue, 15 Mar 2011 15:21:49 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Fix bug 799
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
X-List-Received-Date: Tue, 15 Mar 2011 07:22:15 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes [YOCTO #799], please help to review and pull.

The patch add rootless X user into group audio to access /dev/snd/* devices.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  xserver-nodm-init: add xuser to group audio

 .../x11-common/xserver-nodm-init.bb                |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)


