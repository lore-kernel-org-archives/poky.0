Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B88C74C80B71
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 01:59:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 23:59:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,209,1288594800"; d="scan'208";a="858453434"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost) ([10.239.48.1])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 23:59:31 -0800
Message-Id: <cover.1289980256.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 17 Nov 2010 15:50:56 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1]distro_tracking_fields.inc:remove some invalid information from it
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
X-List-Received-Date: Wed, 17 Nov 2010 07:59:32 -0000

Some packages were removed from the world, but their information also exist in the distro_tracking_fields.inc.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrotracking
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrotracking

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distro_tracking_fields.inc: remove some invalid packages information
    from it

 .../conf/distro/include/distro_tracking_fields.inc |  553 +-------------------
 1 files changed, 1 insertions(+), 552 deletions(-)


