Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBCB44C80BD4
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 14:24:02 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Dec 2010 12:24:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="368203430"
Received: from unknown (HELO localhost) ([10.255.13.209])
	by azsmga001.ch.intel.com with ESMTP; 30 Dec 2010 12:24:01 -0800
Message-Id: <cover.1293740437.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 30 Dec 2010 14:20:37 -0600
Date: Thu, 30 Dec 2010 14:23:54 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/2] distro_tracking_fields updates for blktrace, sysprof
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
X-List-Received-Date: Thu, 30 Dec 2010 20:24:03 -0000

Add new entries for blktrace and sysprof.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/distro-fields-update
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/distro-fields-update

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (2):
  distro_tracking_fields.inc: add fields for blktrace
  distro_tracking_fields.inc: add fields for sysprof

 .../conf/distro/include/distro_tracking_fields.inc |   24 ++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)


