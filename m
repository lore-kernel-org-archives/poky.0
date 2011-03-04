Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6391D4C8090F
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 08:00:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Mar 2011 06:00:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,263,1297065600"; d="scan'208";a="397590036"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 04 Mar 2011 05:59:21 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Mar 2011 22:04:45 +0800
Message-Id: <cover.1299247293.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] BUG782 fix: vnc server issue in mips - v2
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
X-List-Received-Date: Fri, 04 Mar 2011 14:00:03 -0000

This the v2 patch for bug 782 according to Khem's suggestion. Thanks Khem.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/bug782-v2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug782-v2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  x11vnc: fix the endian issue in mips for bug 782

 .../recipes-graphics/x11vnc/files/endian-fix.patch |   22 ++++++++++++++++++++
 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb      |    5 +++-
 2 files changed, 26 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/x11vnc/files/endian-fix.patch


