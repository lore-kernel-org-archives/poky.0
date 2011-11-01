Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60889E0054F
	for <poky@yoctoproject.org>; Mon, 31 Oct 2011 18:57:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Oct 2011 18:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="69595414"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.52])
	by orsmga002.jf.intel.com with ESMTP; 31 Oct 2011 18:57:01 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Nov 2011 10:11:27 +0800
Message-Id: <cover.1320113401.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1][PULL] netbase.bbappend: upgrade to version 4.46
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
X-List-Received-Date: Tue, 01 Nov 2011 01:57:03 -0000

Hi Saul,

This pull request is to upgrade the netbase.bbappend file in meta-yocto, please help to review and pull!

Thanks,
Dongxiao

The following changes since commit fea04bdddc7c794fd0a9cbbfa2b5cc75dd80a9fe:

  distro_tracking: polkit, libsndfile, etc (2011-10-31 23:03:51 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/yocto-upgrade
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/yocto-upgrade

Dongxiao Xu (1):
  netbase.bbappend: Change to version 4.46 due to the upgrade

 .../beagleboard/interfaces                         |    0
 ...netbase_4.45.bbappend => netbase_4.46.bbappend} |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-core/netbase/{netbase-4.45 => netbase-4.46}/beagleboard/interfaces (100%)
 rename meta-yocto/recipes-core/netbase/{netbase_4.45.bbappend => netbase_4.46.bbappend} (100%)


