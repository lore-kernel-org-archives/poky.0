Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 727D6E011D1
	for <poky@yoctoproject.org>; Thu, 29 Mar 2012 05:04:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Mar 2012 05:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="135069243"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by fmsmga001.fm.intel.com with ESMTP; 29 Mar 2012 05:04:20 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 29 Mar 2012 20:01:57 +0800
Message-Id: <cover.1333022130.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][PULL] layer.conf: Define DISTRO in layer.conf
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
X-List-Received-Date: Thu, 29 Mar 2012 12:04:25 -0000

Hi Richard,

This pull request is a change for defining DISTRO variable.

Please help to review and pull.

Thanks,
Dongxiao

The following changes since commit 331f7fa3f26322367c6e298efd282267bfdb6501:

  ghostscript: Fix remaining CP_ prallel make races (2012-03-29 09:44:46 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/hob-bugfix-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/hob-bugfix-yocto

Dongxiao Xu (1):
  meta-yocto: Define DISTRO in layer.conf

 meta-yocto/conf/distro/poky.conf  |    1 -
 meta-yocto/conf/layer.conf        |    1 +
 meta-yocto/conf/local.conf.sample |    4 ++--
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
1.7.4.1


