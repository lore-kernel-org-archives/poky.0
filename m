Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 170434C80050
	for <poky@pokylinux.org>; Sat,  2 Apr 2011 03:11:00 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Apr 2011 01:10:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,287,1299484800"; d="scan'208";a="728252129"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2011 01:10:59 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Q5vo6-0003ux-CR; Sat, 02 Apr 2011 16:03:42 +0800
Message-Id: <cover.1301731242.git.qing.he@intel.com>
Old-Date: Sat, 2 Apr 2011 16:00:42 +0800
Date: Sat, 02 Apr 2011 16:03:42 +0800
To: poky@pokylinux.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 0/1] fix the MACHINE_ARCH
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
X-List-Received-Date: Sat, 02 Apr 2011 08:11:00 -0000

From: Qing He <qing.he@intel.com>

This small patch mangles all machine names that contains a '-',
examples are "qemux86-64" and "mpc8135e-rdb".

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (1):
  bitbake.conf: fix MACHINE_ARCH

 meta/conf/bitbake.conf |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)


