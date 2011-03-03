Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5F564C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 15:51:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Mar 2011 13:51:54 -0800
Message-Id: <0d30dc$lammf3@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,260,1297065600"; d="scan'208";a="715872785"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 13:51:48 -0800
Old-Date: Thu, 3 Mar 2011 15:41:58 -0600
Date: Thu, 03 Mar 2011 15:51:42 -0600
To: saul.wold@intel.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] some meta-n450 compile fixes
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
X-List-Received-Date: Thu, 03 Mar 2011 21:51:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please review and pull into meta-intel/master if they match what
you intended...

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/n450-compile-fixes
  Branch: tzanussi/n450-compile-fixes
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/n450-compile-fixes

Tom Zanussi (1):
  meta-n450: compile fixes

 meta-n450/recipes-bsp/audiofix/audiofix.bb |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)


