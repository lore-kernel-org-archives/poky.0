Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 478A6E013FB
	for <poky@yoctoproject.org>; Mon, 16 Apr 2012 00:55:12 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 Apr 2012 00:55:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="89461304"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Apr 2012 00:55:10 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Mon, 16 Apr 2012 15:52:15 +0800
Message-Id: <cover.1334562500.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][PULL] meta-yocto: Move OELAYOUT_ABI definition to poky.conf
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
X-List-Received-Date: Mon, 16 Apr 2012 07:55:12 -0000

Hi Richard,

This pull request contains a commit that moves the OELAYOUT_ABI definition from abi_version.conf
to poky.conf, which could fix [YOCTO #2303].

This pull request does depend on another pull request (bitbake.conf: Include abi_version.conf in earlier stage) that I sent in oe-core mailing list.

Please help to review and pull.

Thanks,
Dongxiao

The following changes since commit 2ddf7d3e8326e8cb07101ddb2d6e5dc6866371e2:

  gcc-configure-common.inc: Stop gcc looking at build system paths (2012-04-15 18:09:57 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/hob-bugfix-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/hob-bugfix-yocto

Dongxiao Xu (1):
  meta-yocto: Move OELAYOUT_ABI definition to poky.conf

 meta-yocto/conf/abi_version.conf |    7 -------
 meta-yocto/conf/distro/poky.conf |    7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 meta-yocto/conf/abi_version.conf

-- 
1.7.4.1


