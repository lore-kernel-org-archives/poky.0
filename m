Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2EAD04C8059A
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 17:09:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Mar 2011 15:09:44 -0700
Message-Id: <849307$c887ep@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,270,1299484800"; d="scan'208";a="411311580"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by azsmga001.ch.intel.com with ESMTP; 30 Mar 2011 15:09:44 -0700
Old-Date: Wed, 30 Mar 2011 17:04:01 -0500
Date: Wed, 30 Mar 2011 17:09:26 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH][meta-intel] Switch crownbay to 2.6.37
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
X-List-Received-Date: Wed, 30 Mar 2011 22:09:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: tzanussi/crownbay-2.6.37-switchover
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/commit/?h=tzanussi/crownbay-2.6.37-switchover

Tom Zanussi (1):
  meta-crownbay: switch to linux-yocto kernel

 meta-crownbay/conf/machine/crownbay-noemgd.conf |   12 ++++--------
 meta-crownbay/conf/machine/crownbay.conf        |   12 ++++--------
 2 files changed, 8 insertions(+), 16 deletions(-)


