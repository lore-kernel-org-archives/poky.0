Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 818144C80B71
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 17:29:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 15:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,213,1288594800"; d="scan'208";a="858737537"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.73])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 15:29:10 -0800
Message-Id: <cover.1290036267.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Wed, 17 Nov 2010 15:24:27 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2] tar: upgrade to version 1.25
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
X-List-Received-Date: Wed, 17 Nov 2010 23:29:10 -0000

Saul,

This pull request includes a trivial upgrade to the tar recipe and
fixes some errors in the openssh distro tracking information.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/tar-upgrade
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/tar-upgrade

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (2):
  tar: upgrade to version 1.25
  distro_tracking_fields.inc: update tar and openssh

 .../conf/distro/include/distro_tracking_fields.inc |   15 ++++++++-------
 meta/recipes-extended/tar/tar_1.23.bb              |    9 ---------
 meta/recipes-extended/tar/tar_1.25.bb              |    9 +++++++++
 3 files changed, 17 insertions(+), 16 deletions(-)
 delete mode 100644 meta/recipes-extended/tar/tar_1.23.bb
 create mode 100644 meta/recipes-extended/tar/tar_1.25.bb

-- 
1.7.3.2


