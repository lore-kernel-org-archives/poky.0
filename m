Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E99064C80050
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 16:56:36 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Dec 2010 14:56:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="873151409"
Received: from unknown (HELO localhost) ([10.255.13.238])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 14:56:36 -0800
Message-Id: <cover.1293749684.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 30 Dec 2010 14:54:44 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] linux-2.6-windriver: add atom-pc preempt_rt support
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
X-List-Received-Date: Thu, 30 Dec 2010 22:56:37 -0000

In addition to the patch against the wrs_meta branch to follow, this tree
also needs the atom-pc-preempt_rt to be created:

$ git checkout -b atom-pc-preempt_rt common_pc-preempt_rt

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  linux-2.6-windriver: atom-pc-preempt_rt meta-data

 .../bsp/atom-pc/atom-pc-preempt_rt.scc             |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
 create mode 100644 wrs/patches/atom_pc-preempt_rt/series
 create mode 100644 wrs/patches/atom_pc-preempt_rt/status


