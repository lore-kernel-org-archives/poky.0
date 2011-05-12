Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 023D24C810CC
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:07:07 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 May 2011 15:07:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="435223700"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 15:07:06 -0700
Message-Id: <cover.1305235949.git.tom.zanussi@intel.com>
Old-Date: Thu, 12 May 2011 16:32:29 -0500
Date: Thu, 12 May 2011 17:06:42 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [KERNEL][linux-yocto PATCH 0/1] merge emgd feature branch into crownbay for 2.6.37
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
X-List-Received-Date: Thu, 12 May 2011 22:07:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This merges the yocto/emgd topic branch into the crownbay branch for 2.6.37.

Please pull into linux-yocto.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/emgd-1.6.1-meta-merge-emgd
  Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/emgd-1.6.1-meta-merge-emgd

Tom Zanussi (1):
  bsp/crownbay: merge emgd branch

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)


