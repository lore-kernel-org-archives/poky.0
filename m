Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 137FA4C8118C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 08:14:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 06:14:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="701275904"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 06:14:44 -0800
Message-Id: <cover.1296137142.git.ke.yu@intel.com>
Old-Date: Thu, 27 Jan 2011 22:05:42 +0800
Date: Thu, 27 Jan 2011 22:18:11 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 0/3] git fetcher unpack optimization V2
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
X-List-Received-Date: Thu, 27 Jan 2011 14:14:45 -0000

From: Yu Ke <ke.yu@intel.com>

This is the remaining patches of last fetcher patch pull, including
- optimize git unpack method to use git local clone
- not to create the source tree mirror tar ball

With Richar and Bruce's comment, this patch is revised accordingly,
the major chagnes compared with V1 is:
- use git local clone instead of git repo copy to save disk space

it has been tested with "bitbake poky-image-sato" with empty DL_DIR

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/git-unpack-2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/git-unpack-2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (3):
  bb.fetch2: add git unpack
  kernel-yocto.bbclass: adjust the git dir to fit with git unpack
  git.py: remove the source tree tar ball

 bitbake/lib/bb/fetch2/git.py      |   66 ++++++++++--------------------------
 meta/classes/kernel-yocto.bbclass |    4 +-
 2 files changed, 21 insertions(+), 49 deletions(-)


