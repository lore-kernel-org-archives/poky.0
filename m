Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B14B34C80594
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 01:48:23 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 23:48:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,385,1291622400"; d="scan'208";a="596922853"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 23:48:22 -0800
Message-Id: <cover.1296115229.git.dongxiao.xu@intel.com>
Old-Date: Thu, 27 Jan 2011 16:00:29 +0800
Date: Thu, 27 Jan 2011 16:04:27 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/3][PULL] several machine specific sysroots fixes
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
X-List-Received-Date: Thu, 27 Jan 2011 07:48:24 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Richard,

Here are several fixes for machine specific sysroots, please help to review and pull.

The first patch is to add ${MACHINE} tag on stamps for do_populate_sysroot_setscene and do_package_setscene.
The second patch is to handle the rm_work issues.
The third patch is to remove ${MACHINE} in compile and package functions in perl bb files.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (3):
  bitbake: add ${MACHINE} for do_populate_sysroot_setscene and
    do_package_setscene
  rm_work.bbclass: handle stamp files while doing rm_work
  perl: Remove ${MACHINE} dependency in compile and package.

 meta/classes/cross-canadian.bbclass       |    2 +
 meta/classes/crosssdk.bbclass             |    2 +
 meta/classes/native.bbclass               |    2 +
 meta/classes/nativesdk.bbclass            |    2 +
 meta/classes/package.bbclass              |    1 +
 meta/classes/rm_work.bbclass              |   17 +++++++++++
 meta/classes/staging.bbclass              |    1 +
 meta/recipes-devtools/perl/perl_5.12.2.bb |   42 +++++++++++++----------------
 8 files changed, 46 insertions(+), 23 deletions(-)


