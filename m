Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A1624C80050
	for <poky@yoctoproject.org>; Sat,  5 Mar 2011 13:56:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2011 11:56:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,269,1297065600"; d="scan'208";a="894177121"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2011 11:56:16 -0800
Message-Id: <cover.1299354907.git.sgw@linux.intel.com>
Old-Date: Sat, 5 Mar 2011 11:55:07 -0800
Date: Sat, 05 Mar 2011 11:56:16 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/2] 2 Dependency Fixes for RC2
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
X-List-Received-Date: Sat, 05 Mar 2011 19:56:17 -0000

From: Saul Wold <sgw@linux.intel.com>

These to missing Dependencies showed up on a recent
RC2 build

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/oe-core
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (2):
  elfutils: add bzip2 to DEPENDS
  util-macros: add libgpg-error to DEPENDS list

 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    2 +-
 .../xorg-util/util-macros_1.11.0.bb                |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


