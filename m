Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC7734C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:09 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 08:08:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630566280"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 08:08:09 -0800
Message-Id: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Sat, 27 Nov 2010 00:08:26 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/11] X apps/UX license checksum, Edwin
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:10 -0000

Saul,
These are commits to add missing license checksum. I don't touch those recipes
that will be upgraded soon. One exception is pointercal, where only one config
file for each arch, so there is no consistent file for license checksum.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/distro02
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro02

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (11):
  gtk-doc: Add license checksum
  gtk-theme-torturer: Add license check sum
  libcanberra: Add license check sum
  libgalago: Add license checksum
  matchbox-wm-2: Add license checksum
  metacity: Add license checksum
  xvinfo: Add license checksum
  libfakekey: Add license checksum
  matchbox-session-sato: Add license checksum
  matchbox-stroke: Add license checksum
  qemu: Add license checksum

 .../recipes-connectivity/galago/libgalago_0.5.2.bb |    5 ++++-
 meta/recipes-devtools/qemu/qemu.inc                |    2 +-
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 +++
 meta/recipes-gnome/gnome/metacity_2.22.0.bb        |    5 ++++-
 meta/recipes-gnome/gtk-doc/gtk-doc.bb              |    2 ++
 .../gtk-theme-torturer/gtk-theme-torturer_git.bb   |    1 +
 meta/recipes-graphics/libfakekey/libfakekey_svn.bb |    1 +
 .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    4 +++-
 meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb     |    1 +
 .../matchbox-sato/matchbox-session-sato_0.1.bb     |    1 +
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
 meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb    |    5 ++++-
 12 files changed, 26 insertions(+), 5 deletions(-)


