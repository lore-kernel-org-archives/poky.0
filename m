Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 854A14C80FA7
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 10:17:08 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Nov 2010 08:17:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,223,1288594800"; d="scan'208";a="859432089"
Received: from unknown (HELO localhost) ([10.255.16.123])
	by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2010 08:17:00 -0800
Message-Id: <cover.1290179273.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 19 Nov 2010 15:07:53 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Enable parallel installations of SDK's from different Poky versions
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
X-List-Received-Date: Fri, 19 Nov 2010 16:17:08 -0000

Simple patch to enable multiple SDK installations under the /opt/poky namespace separated into folders matching the version of the corresponding Poky distro release.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/sdk
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/sdk

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  poky.conf: move the SDK install into version directories

 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.3.2


