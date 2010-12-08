Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D2FBD4C811E7
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 19:12:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2010 17:12:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,313,1288594800"; d="scan'208";a="358541648"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2010 17:12:50 -0800
Message-Id: <cover.1291769648.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 8 Dec 2010 08:54:08 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] enable KVM in poky qemu
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
X-List-Received-Date: Wed, 08 Dec 2010 01:12:52 -0000

Saul,
This patch enables KVM in poky qemu. End user need build and install kvm module
for native linux kernel. I'll write a howto in wiki for this.

Thanks,
edwin


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/distro05
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro05

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  qemu: Enable KVM support on x86/x86-64 host

 meta/recipes-devtools/qemu/qemu.inc |    2 +-
 scripts/poky-qemu                   |   12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletions(-)


