Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E9734C80AC9
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:09 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 May 2011 01:42:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; d="scan'208";a="437365897"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 01:42:06 -0700
Message-Id: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:47:52 +0800
Date: Tue, 17 May 2011 16:48:51 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/8][PULL] Upstream Status Update
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
X-List-Received-Date: Tue, 17 May 2011 08:42:10 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Saul,

Here are some upstream status update for poky patches,
please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/upgrade
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/upgrade

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (8):
  gypsy: Add upstream status information for gypsy's patch
  alsa-utils: fix upstream status typo
  pulseaudio: add upstream status for pulseaudio-0.9.15's patches
  hostap: add upstream status for hostap's patch
  glibc: add upstream status for glibc's patch
  glib-2.0: add upstream status for glib-2.0's patch
  mtd-utils: add upstream status for mtd-utils patches
  add upstream status for opkg's patches

 meta/recipes-bsp/hostap/files/COPYING.patch        |    2 ++
 .../fix-unused-but-set-variable-warning.patch      |    2 ++
 meta/recipes-core/glib-2.0/glib-2.0/no-iconv.patch |    2 ++
 .../glibc-2.9-enable-binutils-2.2.patch            |    2 ++
 .../add-exclusion-to-mkfs-jffs2-git-2.patch        |    2 ++
 .../add-exclusion-to-mkfs-jffs2-git.patch          |    2 ++
 .../mtd/mtd-utils/fix-ignoreerrors-git.patch       |    2 ++
 .../mtd/mtd-utils/remove-ubi.patch                 |    2 ++
 .../opkg/opkg-0.1.8/add_vercmp.patch               |    2 ++
 .../opkg/opkg-0.1.8/headerfix.patch                |    2 ++
 .../uclibc-exp10-replacement.patch                 |    2 +-
 .../pulseaudio/pulseaudio-0.9.15/alsaerror.patch   |    2 ++
 .../pulseaudio-0.9.15/autoconf_version.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.15/buildfix.patch    |    2 ++
 .../pulseaudio/pulseaudio-0.9.15/fallback.patch    |    2 ++
 .../pulseaudio-0.9.15/gcc4-compile-fix.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.15/periodfix.patch   |    2 ++
 17 files changed, 33 insertions(+), 1 deletions(-)


