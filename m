Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 559D34C800A6
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 20:08:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Feb 2011 18:08:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,204,1297065600"; d="scan'208";a="711518875"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by orsmga001.jf.intel.com with ESMTP; 21 Feb 2011 18:08:05 -0800
Message-Id: <cover.1298340269.git.edwin.zhai@intel.com>
Old-Date: Tue, 22 Feb 2011 10:04:29 +0800
Date: Tue, 22 Feb 2011 10:06:56 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/1] enable qemu audio
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
X-List-Received-Date: Tue, 22 Feb 2011 02:08:06 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

This patch enables qemu audio by exporting emulated sound card to guest and enabling host oss/also driver.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  qemu: enable audio support

 meta/recipes-devtools/qemu/qemu.inc |    2 +-
 scripts/poky-qemu                   |    7 +++++++
 2 files changed, 8 insertions(+), 1 deletions(-)


