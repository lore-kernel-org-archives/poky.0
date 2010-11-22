Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABE454C80FAD
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 07:09:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 05:09:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,236,1288594800"; d="scan'208";a="629117201"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 05:09:48 -0800
Message-Id: <cover.1290431109.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Mon, 22 Nov 2010 21:05:09 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Fix build error from tasks
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
X-List-Received-Date: Mon, 22 Nov 2010 13:09:49 -0000

Saul,
Sorry for break the build in distro/master. This is the fix to remove the redundant patch completely.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro01

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  tasks: remove unused patch completely

 meta/recipes-sato/pimlico/tasks_0.18.bb |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)


