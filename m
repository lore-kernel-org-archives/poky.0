Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 209654C80050
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 19:15:29 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Mar 2011 17:15:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,306,1297065600"; d="scan'208";a="612056621"
Received: from unknown (HELO localhost) ([10.255.12.195])
	by orsmga002.jf.intel.com with ESMTP; 11 Mar 2011 17:15:28 -0800
Message-Id: <cover.1299891748.git.sgw@linux.intel.com>
Old-Date: Fri, 11 Mar 2011 17:02:28 -0800
Date: Fri, 11 Mar 2011 17:15:27 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/1] gnu-config make sure we use perl-native
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
X-List-Received-Date: Sat, 12 Mar 2011 01:15:29 -0000

From: Saul Wold <sgw@linux.intel.com>

During a world build I was getting a perl version mismatch between
the perl-native and the host perl. This change ensures that 
perl-native is used always.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgw/gnu-config
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgw/gnu-config

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (1):
  gnu-config: Ensure that we use perl-native to avoid version
    mis-matches

 .../gnu-config/gnu-config_20080123.bb              |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)


