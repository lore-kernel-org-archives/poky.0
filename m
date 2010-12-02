Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70A334C803A5
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 18:41:34 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2010 16:41:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; d="scan'208";a="632213699"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2010 16:41:33 -0800
Message-Id: <cover.1291251005.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 2 Dec 2010 08:50:05 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1][PULL][RFC] package.bbclass: Use hard link for packages split instead of copy
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
X-List-Received-Date: Thu, 02 Dec 2010 00:41:34 -0000

When doing package split, we use hard link instead of copy, which can
save about 10% disk space when building poky-image-minimal.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/perf
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/perf

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  package.bbclass: Use hard link for package split instead of copy

 meta/classes/package.bbclass |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


