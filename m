Return-Path: <laurentiu.palcu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F03ADE006AD
	for <poky@yoctoproject.org>; Tue, 19 Mar 2013 09:29:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2013 09:29:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="308920375"
Received: from lpalcu-linux.rb.intel.com (HELO localhost.localdomain)
	([10.237.105.165])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2013 09:29:52 -0700
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 19 Mar 2013 18:29:48 +0200
Message-Id: <1363710591-32021-1-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/3] Rename mesa-dri to mesa
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
X-List-Received-Date: Tue, 19 Mar 2013 16:29:55 -0000

These changes are needed because mesa-dri was replaced with mesa.

Thanks,
Laurentiu

Laurentiu Palcu (3):
  scripts/lib/bsp: replace mesa-dri with mesa in machine.conf files
  atom-pc.conf: replace mesa-dri with mesa
  (distro-alias|maintainers|package-regex).inc: mesa-dri -> mesa

 meta-yocto-bsp/conf/machine/atom-pc.conf           |    2 +-
 meta-yocto/conf/distro/include/distro_alias.inc    |    4 ++--
 meta-yocto/conf/distro/include/maintainers.inc     |    4 ++--
 meta-yocto/conf/distro/include/package_regex.inc   |    8 ++++----
 .../arch/i386/conf/machine/{{=machine}}.conf       |    2 +-
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    8 ++++----
 6 files changed, 14 insertions(+), 14 deletions(-)

-- 
1.7.9.5


