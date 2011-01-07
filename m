Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB1894C810B6
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 00:45:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2011 22:45:46 -0800
Message-Id: <b7da2f$q2nuje@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,288,1291622400"; d="scan'208";a="875297395"
Received: from unknown (HELO localhost) ([10.239.36.19])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2011 22:45:45 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Fri, 7 Jan 2011 14:26:48 +0800
Date: Fri, 07 Jan 2011 14:27:47 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/2] sstate relocation fixes - v2
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
X-List-Received-Date: Fri, 07 Jan 2011 06:45:47 -0000

this is basically an update to v1 about flex-native and bison-native, by
moving the wrapper creation to do_install

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (2):
  flex-native: create a wrapper script for sstate installation
  bison-native: create a wrapper script for sstate installation

 meta/recipes-devtools/bison/bison_2.4.3.bb |    8 +++++++-
 meta/recipes-devtools/flex/flex.inc        |    3 +++
 meta/recipes-devtools/flex/flex_2.5.35.bb  |    2 +-
 3 files changed, 11 insertions(+), 2 deletions(-)


