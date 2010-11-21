Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E8F34C80052
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 09:16:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Nov 2010 07:16:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,231,1288594800"; d="scan'208";a="679588959"
Received: from unknown (HELO localhost) ([10.255.13.147])
	by orsmga001.jf.intel.com with ESMTP; 21 Nov 2010 07:16:37 -0800
Message-Id: <cover.1290351524.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Sun, 21 Nov 2010 08:58:44 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/1] emenlow build fix
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
X-List-Received-Date: Sun, 21 Nov 2010 15:16:38 -0000

This patch fixes up a small oversight in the recent renaming that causes
a build failure for emenlow.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/emenlow-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/emenlow-fixes

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  emenlow: fix linux-yocto .bbappend

 .../recipes/linux/linux-yocto_git.bbappend         |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


