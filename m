Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D071D4C804BD
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 20:05:51 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Jun 2011 18:05:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,397,1304319600"; d="scan'208";a="15886302"
Received: from nbuild2.sc.intel.com ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 20 Jun 2011 18:05:51 -0700
From: nitin.a.kamble@intel.com
To: poky@yoctoproject.org, dvhart@linux.intel.com, bruce.ashfield@windriver.com
Date: Mon, 20 Jun 2011 18:05:48 -0700
Message-Id: <cover.1308618114.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.4.4
Subject: [PATCH 0/1] new kernel feature btrfs
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
X-List-Received-Date: Tue, 21 Jun 2011 01:05:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>


The following changes since commit 8888d948e0ddbc5f37bd3dc23cc1b398ab230e2e:

  meta: add utrace feature for linux-yocto (2011-06-16 15:41:23 -0400)

are available in the git repository at:
  git://git.pokylinux.org/linux-yocto-2.6.37-contrib nitin/btrfs
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/btrfs

Nitin A Kamble (1):
  btrfs.scc,cfg: add a new feature which enables btrfs kernel
    configuration

 meta/cfg/kernel-cache/cfg/btrfs.cfg |    2 ++
 meta/cfg/kernel-cache/cfg/btrfs.scc |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.scc

-- 
1.7.4.4


