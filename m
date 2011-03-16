Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CC384C8009D
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 07:29:28 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 05:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,193,1299484800"; d="scan'208";a="720755430"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2011 05:29:27 -0700
Message-Id: <cover.1300277765.git.edwin.zhai@intel.com>
Old-Date: Wed, 16 Mar 2011 20:16:05 +0800
Date: Wed, 16 Mar 2011 20:32:08 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/2] fix qemu segfault with nVidia proprietary driver
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
X-List-Received-Date: Wed, 16 Mar 2011 12:29:28 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Saul,
When linked with nVidia's libGL, qemu get segfault. Patch 1 give warnings to
end user if nVidia's libGL installed. Patch 2 use original libGL to avoid
segfault.

Scott can comment on patch 2 if something better to do this.

Thanks for Kevin's help.

Best Rgds,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (2):
  qemu: Give warnings when running qemu if nVidia GL library installed
    on host
  qemu: Use mesa's libGL rather than nVidia's to avoid segfault of qemu

 scripts/poky-qemu |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)


