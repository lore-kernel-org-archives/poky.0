Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D3A204C80FA8
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 19:16:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Dec 2010 17:16:28 -0800
Message-Id: <849307$aq389v@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="362914111"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.126])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 17:16:27 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Fri, 17 Dec 2010 08:57:19 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 0/3] sstate vardepexclusive for UIMAGE_BASE_NAME
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
X-List-Received-Date: Fri, 17 Dec 2010 01:16:29 -0000

commit cc8ea76d06eac1adc490022247b11f2c1eb2cae3 removes DATETIME dependency from
KERNEL_IMAGE_BASE_NAME, which however doesn't remove DATETIME dependency from
kernel_do_deploy completely. This resolves the last bit.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (3):
  siggen.py: print taskname when seeing mismatched hash in cache
  kernel.bbclass: introduce UIMAGE_BASE_NAME
  kernel.bbclass: Set vardepsexclusive for UIMAGE_BASE_NAME

 bitbake/lib/bb/siggen.py    |    2 +-
 meta/classes/kernel.bbclass |    8 +++++---
 2 files changed, 6 insertions(+), 4 deletions(-)


