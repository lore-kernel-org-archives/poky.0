Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB1F24C800B0
	for <poky@yoctoproject.org>; Mon,  2 May 2011 15:32:37 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 May 2011 13:32:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,304,1301900400"; d="scan'208";a="917073220"
Received: from unknown (HELO localhost) ([10.255.13.75])
	by fmsmga001.fm.intel.com with ESMTP; 02 May 2011 13:32:34 -0700
Message-Id: <cover.1304367134.git.tom.zanussi@intel.com>
Old-Date: Mon, 2 May 2011 15:12:14 -0500
Date: Mon, 02 May 2011 15:32:25 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] meta-intel: use default rootfs size
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
X-List-Received-Date: Mon, 02 May 2011 20:32:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Pull URL: git://git.yoctoproject.org/meta-intel.git
  Branch: tzanussi/rootfs-size-changes
  Browse: http://git.yoctoproject.org/cgit.cgi/meta-intel/log/?h=tzanussi/rootfs-size-changes

Tom Zanussi (1):
  meta-intel: use default rootfs size for BSPS

 meta-crownbay/conf/machine/crownbay-noemgd.conf  |    2 --
 meta-crownbay/conf/machine/crownbay.conf         |    2 --
 meta-emenlow/conf/machine/emenlow.conf           |    2 --
 meta-fishriver/conf/machine/fishriver.conf       |    2 --
 meta-jasperforest/conf/machine/jasperforest.conf |    2 --
 meta-sugarbay/conf/machine/sugarbay.conf         |    2 --
 6 files changed, 0 insertions(+), 12 deletions(-)


