Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E1444C80A1D
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 04:53:08 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Jul 2011 02:53:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,457,1304319600"; d="scan'208";a="21401506"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.36.71])
	by azsmga001.ch.intel.com with ESMTP; 01 Jul 2011 02:53:06 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org
Date: Fri,  1 Jul 2011 17:53:15 +0800
Message-Id: <cover.1309513556.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] poky.conf: add largefile support into DISTRO_FEATURES
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
X-List-Received-Date: Fri, 01 Jul 2011 09:53:09 -0000

Dexuan Cui (1):
  poky.conf: add largefile support into DISTRO_FEATURES

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dcui/mkswap
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/mkswap

 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 meta-yocto/conf/distro/poky.conf     |    2 ++
 2 files changed, 3 insertions(+), 1 deletions(-)

-- 
1.7.6


