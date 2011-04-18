Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A55294C8026D
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 08:13:04 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2011 06:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,232,1301900400"; d="scan'208";a="630483955"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2011 06:13:03 -0700
Message-Id: <cover.1303131764.git.edwin.zhai@intel.com>
Old-Date: Mon, 18 Apr 2011 21:02:44 +0800
Date: Mon, 18 Apr 2011 21:10:02 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/5] [PULL] X apps/UX upgrade, edwin, Apr18, 2011
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
X-List-Received-Date: Mon, 18 Apr 2011 13:13:05 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

This is modified version of last upgrade by adding "Upstream-Status" and other minor format change.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/upgrade04
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade04

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (5):
  tasks: Upgrade to 0.19 (from 0.18)
  avahi: Upgrade to 0.6.30 (from 0.6.28)
  consolekit: Upgrade to 0.4.4 (from 0.4.3)
  libgpg-error: Upgrade to 1.10 (from 1.9)
  jpeg: Upgrade to 8c (from 8b)

 meta/recipes-connectivity/avahi/avahi.inc          |    2 +-
 .../avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb}     |    6 +++---
 .../avahi/files/initscript.patch                   |    2 ++
 .../{jpeg-8b => jpeg-8c}/debian-libjpeg7_7-1.diff  |    4 ++++
 meta/recipes-core/jpeg/{jpeg_8b.bb => jpeg_8c.bb}  |    8 ++++----
 .../pimlico/{tasks_0.18.bb => tasks_0.19.bb}       |    4 ++--
 .../{consolekit_0.4.3.bb => consolekit_0.4.4.bb}   |   10 ++++++----
 .../consolekit/files/nopolkit.patch                |    2 ++
 .../pkgconfig.patch                                |    2 ++
 .../{libgpg-error_1.9.bb => libgpg-error_1.10.bb}  |    6 +++---
 10 files changed, 29 insertions(+), 17 deletions(-)
 rename meta/recipes-connectivity/avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb} (82%)
 rename meta/recipes-core/jpeg/{jpeg-8b => jpeg-8c}/debian-libjpeg7_7-1.diff (98%)
 rename meta/recipes-core/jpeg/{jpeg_8b.bb => jpeg_8c.bb} (82%)
 rename meta/recipes-sato/pimlico/{tasks_0.18.bb => tasks_0.19.bb} (78%)
 rename meta/recipes-support/consolekit/{consolekit_0.4.3.bb => consolekit_0.4.4.bb} (75%)
 rename meta/recipes-support/libgpg-error/{libgpg-error-1.9 => libgpg-error-1.10}/pkgconfig.patch (98%)
 rename meta/recipes-support/libgpg-error/{libgpg-error_1.9.bb => libgpg-error_1.10.bb} (82%)


