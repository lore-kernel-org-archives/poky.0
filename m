Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7F464C81015
	for <poky@yoctoproject.org>; Thu,  5 May 2011 00:55:07 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 May 2011 22:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,318,1301900400"; d="scan'208";a="918251338"
Received: from unknown (HELO localhost) ([10.255.13.36])
	by fmsmga001.fm.intel.com with ESMTP; 04 May 2011 22:55:07 -0700
Message-Id: <cover.1304567396.git.tom.zanussi@intel.com>
Old-Date: Wed, 4 May 2011 22:49:56 -0500
Date: Thu, 05 May 2011  0:55:24 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] boot-directdisk fixes for master
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
X-List-Received-Date: Thu, 05 May 2011 05:55:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into poky/master.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/bug-876-master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/bug-876-master

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  boot-directdisk: fix bzImage source location

 meta/classes/boot-directdisk.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


