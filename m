Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CE0D4C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 11:01:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jan 2011 08:55:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="376853422"
Received: from unknown (HELO helios) ([10.255.16.92])
	by azsmga001.ch.intel.com with SMTP; 19 Jan 2011 08:55:39 -0800
Received: by helios (sSMTP sendmail emulation); Wed, 19 Jan 2011 16:55:36 +0000
Message-Id: <cover.1295455496.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 16:44:56 +0000
Date: Wed, 19 Jan 2011 16:55:36 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Wed, 19 Jan 2011 17:01:22 -0000

Split libuuid and libblkid from util-linux into separate runtime packages.
Slightly reduces the overall footprint of other packages that depend on these 
libraries.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/util-linux-libsplit
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/util-linux-libsplit

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (3):
  util-linux: split out libuuid and libblkid into separate packages
  gst-plugins-base: add util-linux to DEPENDS
  Bump PR on recipes that depend on util-linux

 .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
 meta/recipes-core/util-linux/util-linux.inc        |    6 ++++--
 meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    2 +-
 .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
 meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb       |    2 +-
 meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    2 +-
 .../gstreamer/gst-plugins-base_0.10.31.bb          |    4 ++--
 7 files changed, 11 insertions(+), 9 deletions(-)


