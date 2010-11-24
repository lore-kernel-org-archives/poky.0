Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F56B4C803A5
	for <poky@pokylinux.org>; Wed, 24 Nov 2010 06:18:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 04:18:33 -0800
Message-Id: <b9dded$h6crpi@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="577138496"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 04:18:33 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Wed, 24 Nov 2010 20:00:31 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/1] [sstate] add FILESEXTRAPATHS to basehash whitelist
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
X-List-Received-Date: Wed, 24 Nov 2010 12:18:34 -0000

This fixes sstate failures on linux-yocto and formfactor, and several others
depending on them like hal/connman

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/sstate
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/sstate

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  poky.conf: add FILESEXTRPATHS to basehash whitelist

 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


