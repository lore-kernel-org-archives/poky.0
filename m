Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 003E34C80FA4
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:35 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2010 06:17:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="861347304"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 06:17:35 -0800
Message-Id: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 20:56:25 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/8] add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:36 -0000

add license checksum for:
- fotowall
- iputils
- libdrm
- qemugl
- xf86-video-vesa
- xf86-input-synaptics
- xf86-video-intel
- xf86-video-omapfb

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/license
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/license

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (8):
  fotowall: add license checksum
  iputils: add license checksum
  libdrm: add license checksum
  qemugl: add license checksum
  xf86-video-vesa: add license checksum
  xf86-input-synaptics: add license checksum
  xf86-video-intel: add license checksum
  xf86-video-omapfb: add license checksum

 meta/recipes-extended/iputils/iputils_s20100418.bb |    5 +++++
 meta/recipes-graphics/drm/libdrm_2.4.22.bb         |    2 ++
 meta/recipes-graphics/mesa/qemugl_git.bb           |    4 +++-
 .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |    2 ++
 .../xorg-driver/xf86-video-intel_2.13.0.bb         |    2 ++
 .../xorg-driver/xf86-video-omapfb_git.bb           |    2 ++
 .../xorg-driver/xf86-video-vesa_2.3.0.bb           |    2 ++
 meta/recipes-qt/qt-apps/fotowall_0.9.bb            |    2 ++
 8 files changed, 20 insertions(+), 1 deletions(-)


