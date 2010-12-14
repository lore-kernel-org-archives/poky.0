Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5E054C80BCF
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 16:13:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2010 14:13:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,344,1288594800"; d="scan'208";a="687147880"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.169])
	by orsmga001.jf.intel.com with ESMTP; 14 Dec 2010 14:13:56 -0800
Message-Id: <cover.1292365375.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 14 Dec 2010 14:22:55 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Introduce SDK_VERSION in poky.conf, fix for [BUGID# 586]
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
X-List-Received-Date: Tue, 14 Dec 2010 22:13:57 -0000

Introduce SDK_VERSION in poky.conf which derives from DISTRO_VERSION, fixes for [BUGID# 586]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/sdkversion
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/sdkversion

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Jessica Zhang (1):
  Introduce SDK_VERSION which is based on DISTRO_VERSION for fixing bug
    586

 meta/conf/distro/poky.conf |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)


