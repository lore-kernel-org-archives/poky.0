Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C40844C8085F
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 12:11:16 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2011 10:11:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,371,1291622400"; d="scan'208";a="595967830"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2011 10:11:15 -0800
Message-Id: <cover.1295892490.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 25 Jan 2011 02:08:10 +0800
Date: Tue, 25 Jan 2011  2:10:38 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] gnome-doc-utils: add gettext into DEPENDS
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
X-List-Received-Date: Mon, 24 Jan 2011 18:11:17 -0000

When I use
BB_NUMBER_THREADS = "16"
PARALLEL_MAKE = "-j 16"
I can see the failure from time to time.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  gnome-doc-utils: add gettext into DEPENDS

 meta/recipes-gnome/gnome/gnome-doc-utils.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.2


