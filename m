Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82648E0075D
	for <poky@yoctoproject.org>; Tue,  6 Sep 2011 09:39:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Sep 2011 09:39:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="45534816"
Received: from unknown (HELO localhost) ([10.255.14.186])
	by orsmga002.jf.intel.com with ESMTP; 06 Sep 2011 09:39:16 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  6 Sep 2011 09:39:06 -0700
Message-Id: <cover.1315326700.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] meta-yocto: beagleboard: document hard floating point abi
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
X-List-Received-Date: Tue, 06 Sep 2011 16:39:17 -0000

The following changes since commit dbff56238e083d0110eb13c1f5a07716340fdfe4:

  icu-3.6: fix building with big make -j (2011-09-06 16:37:02 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/beagleboard
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagleboard

Darren Hart (1):
  beagleboard: document how to enable the hard floating point abi

 meta-yocto/conf/machine/beagleboard.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

-- 
1.7.6


