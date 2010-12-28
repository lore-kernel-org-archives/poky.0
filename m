Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A9A84C810B6
	for <poky@pokylinux.org>; Mon, 27 Dec 2010 19:10:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Dec 2010 17:10:39 -0800
Message-Id: <c6d829$pvsona@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,237,1291622400"; d="scan'208";a="872309489"
Received: from unknown (HELO localhost) ([10.239.36.131])
	by fmsmga001.fm.intel.com with ESMTP; 27 Dec 2010 17:10:38 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Tue, 28 Dec 2010 08:51:37 +0800
Date: Tue, 28 Dec 2010  8:53:16 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/1] fix SRC_URI for acl
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
X-List-Received-Date: Tue, 28 Dec 2010 01:10:39 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/distro

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  acl: use correct Savannah download link

 meta/recipes-support/attr/acl.inc       |    2 +-
 meta/recipes-support/attr/acl_2.2.49.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


