Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 907B74C804BD
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 00:22:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Mar 2011 22:22:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,294,1297065600"; d="scan'208";a="665809832"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by fmsmga002.fm.intel.com with ESMTP; 09 Mar 2011 22:22:57 -0800
Message-Id: <cover.1299737813.git.lianhao.lu@intel.com>
Old-Date: Thu, 10 Mar 2011 14:16:53 +0800
Date: Thu, 10 Mar 2011 14:21:47 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/1] gcc/collect: Fixing Bug#815
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
X-List-Received-Date: Thu, 10 Mar 2011 06:22:58 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Added --sysroot support in the collect2 in gcc by adding --sysroot 
into COLLECT_GCC_OPTIONS. This allow the collect2 to pass --sysroot 
to ld or gcc it invokes.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/gcc_collect
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/gcc_collect

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  gcc/collect2: Added --sysroot support into collect2 in gcc.

 meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
 .../gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch        |   22 ++++++++++++++++++++
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 11 files changed, 32 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch


