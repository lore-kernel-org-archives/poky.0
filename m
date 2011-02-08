Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DA474C8032C
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 19:03:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 17:03:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="705093511"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2011 17:03:00 -0800
Message-Id: <cover.1297126971.git.scott.a.garman@intel.com>
Old-Date: Mon, 7 Feb 2011 17:02:51 -0800
Date: Mon, 07 Feb 2011 17:04:07 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] xserver-kdrive DEPENDS fix, v2
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
X-List-Received-Date: Tue, 08 Feb 2011 01:03:00 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This patch adds a needed dependency (openssl) to the xserver-kdrive recipes.

Respun to include a PR bump.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/kdrive-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/kdrive-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  xserver-kdrive.inc: add openssl to DEPENDS

 .../xorg-xserver/xserver-kdrive.inc                |    2 +-
 .../xorg-xserver/xserver-kdrive_1.7.99.2.bb        |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.4


