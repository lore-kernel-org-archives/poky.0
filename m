Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F23AE00348
	for <poky@yoctoproject.org>; Thu, 27 Sep 2012 15:13:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Sep 2012 15:13:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="227468767"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by fmsmga001.fm.intel.com with ESMTP; 27 Sep 2012 15:12:44 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Thu, 27 Sep 2012 17:12:39 -0500
Message-Id: <cover.1348777841.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/2] yocto-bsp: update a couple ppc/mips config settings
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Sep 2012 22:13:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes YOCTO #3178 [building a power pc image with a
layer created using yocto-bsp fails due to cfg/vfat not available] and
a similar problem with the dmaengine feature.

Build-tested both 3.2 and 3.4 kernels using yocto-bsp-generated
powerpc BSPs.

The following changes since commit f40bfd2e5f91a3c699833f19cec435a9b897f4b5:

  bitbake: hob/builder: When you stop a build, Hob should tell you stopping is happening (2012-09-27 16:45:28 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-ppc-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/yocto-bsp-ppc-fix

Tom Zanussi (2):
  yocto-bsp: make vfat feature inclusion conditional on kernel version
  yocto-bsp: fix dmaengine feature inclusion

 .../target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc    | 4 +++-
 .../target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc | 6 +++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

-- 
1.7.11.4


