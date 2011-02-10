Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D42C84C80053
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 01:03:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2011 23:03:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="656293577"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2011 23:03:55 -0800
Message-Id: <cover.1297321220.git.dexuan.cui@intel.com>
Old-Date: Thu, 10 Feb 2011 15:00:20 +0800
Date: Thu, 10 Feb 2011 15:03:00 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 0/1] lttng-ust: fix ppc build
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
X-List-Received-Date: Thu, 10 Feb 2011 07:03:57 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Here I introduced a patch from lttng mailing list to fix ppc build:
http://lists.casi.polymtl.ca/pipermail/ltt-dev/2011-February/003903.html

The patch looks good and I think it would be in next release.
At present, let's add it into SRC_URI.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  lttng-ust: fix ppc build by removing ppc specific time reading
    function

 ...remove_ppc_specific_time_reading_function.patch |   85 ++++++++++++++++++++
 meta/recipes-kernel/lttng/lttng-ust_0.11.bb        |    6 +-
 2 files changed, 89 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-kernel/lttng/lttng-ust-0.11/remove_ppc_specific_time_reading_function.patch

-- 
1.7.2


