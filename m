Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 86B7F4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:38:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Feb 2011 19:38:16 -0800
Message-Id: <849307$be7ei2@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,424,1291622400"; d="scan'208";a="384023115"
Received: from unknown (HELO localhost) ([10.255.14.151])
	by azsmga001.ch.intel.com with ESMTP; 03 Feb 2011 19:38:15 -0800
Old-Date: Thu, 3 Feb 2011 20:52:10 -0600
Date: Thu, 03 Feb 2011 21:38:12 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/2] meta-sugarbay updates
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
X-List-Received-Date: Fri, 04 Feb 2011 03:38:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Just a couple kernel bookkeeping commits...

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/sugarbay-updates
  Branch: tzanussi/sugarbay-updates
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/sugarbay-updates

Tom Zanussi (2):
  sugarbay: update kernel SRCREVs
  meta-sugarbay: switch from standard to standard/common-pc-64

 meta-sugarbay/conf/machine/sugarbay.conf           |    4 ++--
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)


