Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 254364C810B7
	for <poky@yoctoproject.org>; Thu,  5 May 2011 00:55:18 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 May 2011 22:55:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,318,1301900400"; d="scan'208";a="742623620"
Received: from unknown (HELO localhost) ([10.255.13.36])
	by orsmga001.jf.intel.com with ESMTP; 04 May 2011 22:55:17 -0700
Message-Id: <cover.1304574705.git.tom.zanussi@intel.com>
Old-Date: Thu, 5 May 2011 00:51:45 -0500
Date: Thu, 05 May 2011  0:55:34 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/2] boot-directdisk fixes for bernard
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
X-List-Received-Date: Thu, 05 May 2011 05:55:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into poky/bernard.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/bug-876-bernard
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/bug-876-bernard

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (2):
  core-image-directdisk: add LIC_FILES_CHECKSUM
  boot-directdisk: fix bzImage source location

 meta/classes/boot-directdisk.bbclass               |    2 +-
 meta/recipes-core/images/poky-image-directdisk.inc |    3 +++
 2 files changed, 4 insertions(+), 1 deletions(-)


