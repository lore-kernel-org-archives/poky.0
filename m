Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE1B34C80132
	for <poky@yoctoproject.org>; Sat, 14 May 2011 22:43:01 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 May 2011 20:43:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; d="scan'208";a="436257120"
Received: from unknown (HELO localhost) ([10.255.12.105])
	by azsmga001.ch.intel.com with ESMTP; 14 May 2011 20:43:01 -0700
Message-Id: <cover.1305430844.git.tom.zanussi@intel.com>
Old-Date: Sat, 14 May 2011 22:40:44 -0500
Date: Sat, 14 May 2011 22:42:21 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] n450 compile fix
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
X-List-Received-Date: Sun, 15 May 2011 03:43:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/n450-lic-compile-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/n450-lic-compile-fix

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  n450: fix n450-audio LIC_FILES_CHKSUM

 meta-n450/recipes-bsp/n450-audio/n450-audio.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


