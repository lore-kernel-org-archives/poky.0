Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0482D4C8106A
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 18:09:10 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2011 16:09:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,341,1291622400"; d="scan'208";a="594241751"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 16:09:10 -0800
Message-Id: <cover.1295396869.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 18 Jan 2011 16:27:49 -0800
To: poky@yoctoproject.org
Cc: i586-poky-linux-gcc
Subject: [PATCH 0/1] sanity.bbclass: remote SDK_ARCH check
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
X-List-Received-Date: Wed, 19 Jan 2011 00:09:11 -0000

I've tested against a newly built toolchain with host as i686 and target as i586 and used the toolchain cross compile cvs(c) and suduku(c++) applications and ran them on the target without issues.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/bitbake_i686
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/bitbake_i686

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Jessica Zhang (1):
  remove sanity check for SDK_ARCH=i686 due to recent fixes in cross
    toolchain areas, etc. the old issue no longer exists

 meta/classes/sanity.bbclass |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)


