Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B34FF4C80FAD
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 10:37:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jan 2011 08:37:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,358,1291622400"; d="scan'208";a="649734929"
Received: from unknown (HELO localhost) ([10.255.14.122])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 08:37:26 -0800
Message-Id: <cover.1295627451.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Fri, 21 Jan 2011 08:30:51 -0800
Date: Fri, 21 Jan 2011  8:37:23 -0800
To: poky@yoctoproject.org,bruce.ashfield@windriver.com,tom.zanussi@intel.com
Subject: [PATCH 0/3] linux-2.6-windriver: Beagleboard revision detection and gpio write-protect mapping
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
X-List-Received-Date: Fri, 21 Jan 2011 16:37:27 -0000

The existing board detection doesn't work for all board types. The GPIO pins are
mapped differently, particularly the SD card write-protect lines. These patches
fix a boot hang on the Beagleboard xM due to the xM using a micro SD which
doesn't have WP lines.

The following patches already exist in mainline and apply without modification
to the linux-2.6-windriver git tree.

Please merge dvhart/beagleboard-standard with beagleboard-standard.

Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
  Branch: dvhart/beagleboard-standard
  Browse: http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=dvhart/beagleboard-standard

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Robert Nelson (3):
  omap: Beagle: revision detection
  omap: Beagle: only Cx boards use pin 23 for write protect
  omap: Beagle: no gpio_wp pin connection on xM

 arch/arm/mach-omap2/board-omap3beagle.c |   93 ++++++++++++++++++++++++++++++-
 1 files changed, 92 insertions(+), 1 deletions(-)


