Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C9514C80052
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 10:46:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2010 08:46:21 -0800
Message-Id: <c6d829$pn5r0b@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,284,1288594800"; d="scan'208";a="863169551"
Received: from unknown (HELO localhost) ([10.255.13.244])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2010 08:46:21 -0800
From: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 1 Dec 2010 08:38:04 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@windriver.com
Subject: [PATCH 0/3] Initial Linaro layer
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
X-List-Received-Date: Wed, 01 Dec 2010 16:46:21 -0000

This patch series implements an initial Linaro layer. It builds the stable
Linaro Linux kernel tree with the stable Linaro gcc tree. A basic
beagleboard-linaro machine is defined using a defconfig from an earlier kernel
for OMAP3.

These patches successfully build poky-image-minimal but have not yet been tested
on real hardware.

Pull URL: git://git.pokylinux.org/meta-linaro.git
  Branch: master
  Browse: http://git.pokylinux.org/cgit.cgi/meta-linaro/log/?h=master

Thanks,
    Darren Hart <dvhart@linux.intel.com>

Darren Hart (1):
  Initial meta-linaro skeleton

Nitin A Kamble (2):
  gcc_4.5.1.linaro: implement new gcc recipe from linaro code
  beagleboard-linaro machine: use linaro gcc for this machine


