Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5CB2E002AB
	for <poky@yoctoproject.org>; Mon, 11 Feb 2013 22:06:15 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Feb 2013 22:06:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,647,1355126400"; d="scan'208";a="255756749"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.12.192])
	by azsmga001.ch.intel.com with ESMTP; 11 Feb 2013 22:06:15 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Feb 2013 22:06:14 -0800
Message-Id: <1360649174-17031-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.0.2
Subject: [PATCH 0/2] Upstream Cleanup and Sanity tested distros
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
X-List-Received-Date: Tue, 12 Feb 2013 06:06:16 -0000

Richard,

These are good to go, Ema will be providing a patch next
week when she gets back to fix more of these up.

Thanks
	Sau!


Emilia Ciobanu (1):
  Cleanup of upstream_tracking.inc file

Khem Raj (1):
  poky.conf: Add Ubuntu 12.04.2 to sanity tested distros

 .../conf/distro/include/upstream_tracking.inc      | 1357 +-------------------
 meta-yocto/conf/distro/poky.conf                   |    1 +
 2 files changed, 7 insertions(+), 1351 deletions(-)

-- 
1.8.0.2


