Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F40D4C80BD4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 16:59:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 14:59:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,207,1288594800"; d="scan'208";a="858323768"
Received: from unknown (HELO localhost) ([10.7.199.163])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 14:59:48 -0800
Message-Id: <cover.1289947396.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 16 Nov 2010 14:43:16 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] busybox: Fix another make 3.82 issue
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
X-List-Received-Date: Tue, 16 Nov 2010 22:59:48 -0000

This fixes two "mixed implicit and normal rules" Makefile errors during
do_configure, seen on Fedora 14 build hosts.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/busybox-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/busybox-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  busybox: Fix another make 3.82 issue

 .../busybox/busybox-1.16.2/make-382-fix2.patch     |   24 ++++++++++++++++++++
 meta/recipes-core/busybox/busybox_1.16.2.bb        |    1 +
 2 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/busybox/busybox-1.16.2/make-382-fix2.patch

-- 
1.7.3.2


