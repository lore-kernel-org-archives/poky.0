Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73D534C80878
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 08:40:04 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Apr 2011 06:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,282,1299484800"; d="scan'208";a="622193698"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga002.jf.intel.com with ESMTP; 01 Apr 2011 06:40:03 -0700
Message-Id: <cover.1301664697.git.josh@linux.intel.com>
Old-Date: Fri, 1 Apr 2011 14:31:37 +0100
Date: Fri, 01 Apr 2011 14:39:57 +0100
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/7] Patch series against Bernard for Fedora 15 users
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
X-List-Received-Date: Fri, 01 Apr 2011 13:40:04 -0000

From: Joshua Lock <josh@linux.intel.com>

I decided to punish myself by testing how well our branch fares on Fedora 15.

I don't think any of these should be too controversial and with the series
applied I am able to build both minimal and sato images on my Fedora 15 box.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/bernard-f15
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/bernard-f15

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (7):
  elfutils: fix builds with gcc 4.6
  python-native: add missing SRC_URI hashes
  libx11: add missing SRC_URI hashes
  xorg-[lib-common|proto-common]: disable use of fop document
    generation
  libx11: disable building of specs
  openjade: fix build with GCC 4.6
  xserver-xf86: explicitly disable fop document generation

 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    4 +
 .../user-declared-default-constructor.patch        |   88 ++++++++++++++++++++
 .../openjade/openjade-native_1.3.2.bb              |    5 +-
 .../recipes-devtools/python/python-native_2.6.6.bb |    3 +
 meta/recipes-graphics/xorg-lib/libx11.inc          |    2 +-
 meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb     |    3 +
 meta/recipes-graphics/xorg-lib/xorg-lib-common.inc |    2 +-
 .../xorg-proto/xorg-proto-common.inc               |    1 +
 .../xorg-xserver/xserver-xf86-common.inc           |    1 +
 9 files changed, 105 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/user-declared-default-constructor.patch

-- 
1.7.4.1


