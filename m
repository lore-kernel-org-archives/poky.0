Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 705004C81069
	for <poky@pokylinux.org>; Mon, 27 Dec 2010 19:07:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Dec 2010 17:07:35 -0800
Message-Id: <0d30dc$kj5oeh@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,237,1291622400"; d="scan'208";a="691200468"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by orsmga001.jf.intel.com with ESMTP; 27 Dec 2010 17:07:34 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Tue, 28 Dec 2010 08:49:33 +0800
Date: Tue, 28 Dec 2010  8:50:51 +0800
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
X-List-Received-Date: Tue, 28 Dec 2010 01:07:35 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/laverne
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/laverne

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  acl: use correct Savannah download link

 meta/recipes-support/attr/acl.inc       |    2 +-
 meta/recipes-support/attr/acl_2.2.49.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


