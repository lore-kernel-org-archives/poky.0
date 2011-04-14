Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 458D24C80852
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:15:52 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Apr 2011 17:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="418820945"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by azsmga001.ch.intel.com with ESMTP; 13 Apr 2011 17:15:51 -0700
Message-Id: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Thu, 14 Apr 2011 08:09:48 +0800
Date: Thu, 14 Apr 2011  8:13:18 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/9] [PULL] UX/X apps upgrade, edwin, Apr 13, 2011
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
X-List-Received-Date: Thu, 14 Apr 2011 00:15:53 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Saul,

These are some upgrade for UX/X apps part. Avahi upgrade fix one security issue. Pls. review and pull.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/upgrade04
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade04

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (9):
  libsoup-2.4: Upgrade to 2.32.2 (from 2.32.1)
  tasks: Upgrade to 0.19 (from 0.18)
  avahi: Upgrade to 0.6.30 (from 0.6.28)
  x11perf: Upgrade to 1.5.3 (from 1.5.2)
  libcanberry: Upgrade to 0.28 (from 0.26)
  xz: Upgrade to 5.0.2 (from 5.0.0)
  consolekit: Upgrade to 0.4.4 (from 0.4.3)
  polkit-gnome: Upgrade to 0.101 (from 0.99)
  libgpg-error: Upgrade to 1.10 (from 1.9)

 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb}     |    6 +++---
 ...{polkit-gnome_0.99.bb => polkit-gnome_0.101.bb} |    4 ++--
 .../xz/{xz_5.0.0.bb => xz_5.0.2.bb}                |    4 ++--
 .../{x11perf_1.5.2.bb => x11perf_1.5.3.bb}         |    4 ++--
 .../{libcanberra_0.26.bb => libcanberra_0.28.bb}   |    4 ++--
 .../pimlico/{tasks_0.18.bb => tasks_0.19.bb}       |    4 ++--
 .../{consolekit_0.4.3.bb => consolekit_0.4.4.bb}   |    8 +++++---
 .../pkgconfig.patch                                |    0
 .../{libgpg-error_1.9.bb => libgpg-error_1.10.bb}  |    4 ++--
 ...libsoup-2.4_2.32.1.bb => libsoup-2.4_2.32.2.bb} |    4 ++--
 11 files changed, 23 insertions(+), 21 deletions(-)
 rename meta/recipes-connectivity/avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb} (82%)
 rename meta/recipes-extended/polkit/{polkit-gnome_0.99.bb => polkit-gnome_0.101.bb} (86%)
 rename meta/recipes-extended/xz/{xz_5.0.0.bb => xz_5.0.2.bb} (82%)
 rename meta/recipes-graphics/xorg-app/{x11perf_1.5.2.bb => x11perf_1.5.3.bb} (76%)
 rename meta/recipes-multimedia/pulseaudio/{libcanberra_0.26.bb => libcanberra_0.28.bb} (85%)
 rename meta/recipes-sato/pimlico/{tasks_0.18.bb => tasks_0.19.bb} (78%)
 rename meta/recipes-support/consolekit/{consolekit_0.4.3.bb => consolekit_0.4.4.bb} (79%)
 rename meta/recipes-support/libgpg-error/{libgpg-error-1.9 => libgpg-error-1.10}/pkgconfig.patch (100%)
 rename meta/recipes-support/libgpg-error/{libgpg-error_1.9.bb => libgpg-error_1.10.bb} (86%)
 rename meta/recipes-support/libsoup/{libsoup-2.4_2.32.1.bb => libsoup-2.4_2.32.2.bb} (76%)


