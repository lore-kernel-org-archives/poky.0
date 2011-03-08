Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 582334C80050
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 23:06:22 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Mar 2011 21:06:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,282,1297065600"; d="scan'208";a="664914491"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2011 21:06:06 -0800
Message-Id: <cover.1299560576.git.liping.ke@intel.com>
Old-Date: Tue, 8 Mar 2011 13:02:56 +0800
Date: Tue, 08 Mar 2011 13:04:34 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] adt: removed unused repo source and opkg options
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
X-List-Received-Date: Tue, 08 Mar 2011 05:06:22 -0000

From: Liping Ke <liping.ke@intel.com>

opgk option --force-overwrite is only a workaround for bug #547.
Now this bug is gone, so remove this option.

and also, the first opkg repo source is not useful, remove it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/remove-option
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/remove-option

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  adt: removed unused repo source and opkg options

 .../adt-installer/opkg/conf/opkg-sdk-i686.conf     |    1 -
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    1 -
 .../adt-installer/scripts/adt_installer_internal   |    2 +-
 3 files changed, 1 insertions(+), 3 deletions(-)


