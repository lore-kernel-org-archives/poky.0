Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45DDEE004D2
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 22:48:43 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Mar 2012 22:48:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83775028"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Mar 2012 22:48:41 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Sat, 31 Mar 2012 13:46:16 +0800
Message-Id: <cover.1333172695.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][PULL] baryon: variable fix
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
X-List-Received-Date: Sat, 31 Mar 2012 05:48:43 -0000

Hi Richard,

This pull request is a bugfix for baryon layer, please help to review and pull.

Thanks,
Dongxiao

The following changes since commit d662381a38fa5fd31a87a6c26d2efa5065e76a27:

  webmin: add missing patch header info (2011-11-09 14:09:23 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/baryon
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/baryon

Dongxiao Xu (1):
  baryon: Fix variable naming

 recipes-extended/images/baryon-image.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.4.1


