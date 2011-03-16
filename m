Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AE8F4C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 21:15:55 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Mar 2011 19:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="403231675"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 19:15:49 -0700
Message-Id: <cover.1300241596.git.lianhao.lu@intel.com>
Old-Date: Wed, 16 Mar 2011 10:13:16 +0800
Date: Wed, 16 Mar 2011 10:14:57 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/1] Upgrade oprofileUI
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
X-List-Received-Date: Wed, 16 Mar 2011 02:15:55 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Fixed Bug #880.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/oprofileui_up
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/oprofileui_up

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  oprofileui: upgrade to latest git version.

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-kernel/oprofile/oprofileui_git.bb     |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


