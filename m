Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D333B4C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 15:53:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Feb 2011 13:53:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,242,1297065600"; d="scan'208";a="714320762"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2011 13:53:34 -0800
Message-Id: <cover.1298929971.git.scott.a.garman@intel.com>
Old-Date: Mon, 28 Feb 2011 13:52:51 -0800
Date: Mon, 28 Feb 2011 13:53:50 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] distro tracking updates
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
X-List-Received-Date: Mon, 28 Feb 2011 21:53:35 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This pull request includes the additions of transfig and
linuxdoc-tools to the distro tracking file (which of course
should not imply that the Yocto Project is a Linux distro - it
most certainly is not that).

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/distro-tracking
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/distro-tracking

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  distro_tracking_fields.inc: add transfig and linuxdoc-tools recipes

 .../conf/distro/include/distro_tracking_fields.inc |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)

-- 
1.7.4


