Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E45434C800B6
	for <poky@yoctoproject.org>; Sat, 14 May 2011 22:36:49 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 May 2011 20:36:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; d="scan'208";a="642811728"
Received: from unknown (HELO localhost) ([10.255.12.105])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2011 20:36:49 -0700
Message-Id: <cover.1305415455.git.tom.zanussi@intel.com>
Old-Date: Sat, 14 May 2011 18:24:15 -0500
Date: Sat, 14 May 2011 22:36:08 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/4] crownbay fixes
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
X-List-Received-Date: Sun, 15 May 2011 03:36:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes bug 986 for crownbay, crownbay-noemgd and fishriver - thanks
to Saul Wold for pointing out a fix for it.

It also adds a missing COMPATIBLE_MACHINE entry for crownbay-noemgd.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/bugfix-986
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/bugfix-986

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (4):
  crownbay: remove custom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS
  crownbay-noemgd: remove custom BASE_PACKAGE_ARCH and
    PACKAGE_EXTRA_ARCHS
  fishriver: remove custom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS
  crownbay-noemgd: add crownbay-noemgd as COMPATIBLE_MACHINE to
    linux-yocto bbappend

 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    3 ---
 meta-crownbay/conf/machine/crownbay.conf           |    3 ---
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    4 ++++
 meta-fishriver/conf/machine/fishriver.conf         |    3 ---
 4 files changed, 4 insertions(+), 9 deletions(-)


