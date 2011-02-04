Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C5BEA4C800A8
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:47:48 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p143lmWR024660
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 19:47:48 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:48 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:47 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 21:44:26 -0600
Message-Id: <cover.1296790992.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 04 Feb 2011 03:47:48.0067 (UTC)
	FILETIME=[4A0DC330:01CBC41E]
Subject: [PATCH 0/4] Update recipes-core patches
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
X-List-Received-Date: Fri, 04 Feb 2011 03:47:49 -0000

I'm digging through Fedora, Wind River Linux and other sources looking for
patches that Poky does not have that fix bugs, add necessary enhancements,
or are needed for one reason or another.

This set completes the patches for the recipe-core group.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/wrsync
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/wrsync

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (4):
  busybox: Support DHCP refresh without restarting the interface
  coreutils: Add various bug fixes
  sysfsutils: Merge bug fix
  util-linux: Add mount lock patch

 .../busybox-udhcpc-no_deconfig.patch               |  110 +
 meta/recipes-core/busybox/busybox.inc              |    4 +-
 meta/recipes-core/busybox/busybox_1.17.3.bb        |    4 +-
 meta/recipes-core/busybox/files/busybox-udhcpc     |   25 +
 .../coreutils-6.9/coreutils-6.9-cp-i-u.patch       |  118 +
 .../coreutils-6.9/coreutils-fix-install.patch      |   99 +
 .../coreutils/coreutils-6.9/coreutils-i18n.patch   | 4049 ++++++++++++++++++++
 .../coreutils/coreutils-6.9/coreutils-ls-x.patch   |  115 +
 .../coreutils-6.9/coreutils-overflow.patch         |   17 +
 meta/recipes-core/coreutils/coreutils_6.9.bb       |    5 +
 .../sysfsutils-2.0.0-class-dup.patch               |   21 +
 meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb   |    6 +-
 .../util-linux-ng-2.16-mount_lock_path.patch       |   25 +
 meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    5 +-
 14 files changed, 4597 insertions(+), 6 deletions(-)
 create mode 100644 meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch
 create mode 100755 meta/recipes-core/busybox/files/busybox-udhcpc
 create mode 100644 meta/recipes-core/coreutils/coreutils-6.9/coreutils-6.9-cp-i-u.patch
 create mode 100644 meta/recipes-core/coreutils/coreutils-6.9/coreutils-fix-install.patch
 create mode 100644 meta/recipes-core/coreutils/coreutils-6.9/coreutils-i18n.patch
 create mode 100644 meta/recipes-core/coreutils/coreutils-6.9/coreutils-ls-x.patch
 create mode 100644 meta/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch
 create mode 100644 meta/recipes-core/sysfsutils/sysfsutils-2.1.0/sysfsutils-2.0.0-class-dup.patch
 create mode 100644 meta/recipes-core/util-linux/util-linux-2.17.2/util-linux-ng-2.16-mount_lock_path.patch

-- 
1.7.3.4


