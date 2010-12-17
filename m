Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42E424C810AC
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 23:18:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 21:18:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,359,1288594800"; d="scan'208";a="637351406"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 21:18:27 -0800
Message-Id: <cover.1292563366.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Fri, 17 Dec 2010 13:22:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2] distro tracking field update
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
X-List-Received-Date: Fri, 17 Dec 2010 05:18:58 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/distro-tracking
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/distro-tracking

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (2):
  distro_tracking: Fix name inconsistency
  distro_tracking: change owner of some recipe

 .../conf/distro/include/distro_tracking_fields.inc |   60 ++++++++++----------
 1 files changed, 30 insertions(+), 30 deletions(-)


