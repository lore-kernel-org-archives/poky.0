Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 858744C80BEF
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 08:56:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 06:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,236,1288594800"; d="scan'208";a="576312040"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 22 Nov 2010 06:56:51 -0800
Message-Id: <cover.1290437405.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 22 Nov 2010 22:50:05 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1]Update libunique libxpm libxprintapputil libxprintutil ttf-bitstream-vera
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
X-List-Received-Date: Mon, 22 Nov 2010 14:56:52 -0000

Add five recipes license checksum informaiton.
    libunique
    libxpm
    libxprintapputil
    libxprintutil
    ttf-bitstream-vera


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/chksum
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  This patch contains five recipes license checksum information

 .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    1 +
 meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb     |    1 +
 .../xorg-lib/libxprintapputil_1.0.1.bb             |    1 +
 .../xorg-lib/libxprintutil_1.0.1.bb                |    1 +
 meta/recipes-tbd/libunique/libunique_1.1.6.bb      |    2 +-
 5 files changed, 5 insertions(+), 1 deletions(-)


