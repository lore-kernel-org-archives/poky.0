Return-Path: <laurentiu.palcu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2AFE0144D
	for <poky@yoctoproject.org>; Wed, 14 Nov 2012 01:48:45 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Nov 2012 01:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,249,1352102400"; d="scan'208";a="248867176"
Received: from lpalcu-linux (HELO localhost.localdomain) ([10.237.105.42])
	by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2012 01:48:43 -0800
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Nov 2012 11:48:40 +0200
Message-Id: <1352886522-26874-1-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2] config changes due to xorg upgrades
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Nov 2012 09:48:45 -0000

Hi,

With the xserver-xorg upgrade, some of the packages dissapreared as
some extensions were moved to the xserver core, so the config files have to
be changed accordingly.

Thanks,
Laurentiu

Laurentiu Palcu (2):
  yocto-bsp: update configs after xorg upgrade
  yocto-bsp: upgdate configs after xf86-video-omapfb changed name

 meta-yocto-bsp/conf/machine/atom-pc.conf           |    3 ---
 meta-yocto-bsp/conf/machine/beagleboard.conf       |    2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf      |    1 -
 meta-yocto-bsp/conf/machine/routerstationpro.conf  |    1 -
 .../target/arch/arm/conf/machine/{{=machine}}.conf |    2 +-
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |    1 -
 6 files changed, 2 insertions(+), 8 deletions(-)

-- 
1.7.9.5


