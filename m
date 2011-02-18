Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA2BA4C800A8
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 12:21:37 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2011 10:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="709633882"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 18 Feb 2011 10:21:35 -0800
Message-Id: <cover.1298053136.git.nitin.a.kamble@intel.com>
Old-Date: Fri, 18 Feb 2011 10:18:56 -0800
Date: Fri, 18 Feb 2011 10:21:33 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] avoid absolute pathnames for general utils in libtool scripts
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
X-List-Received-Date: Fri, 18 Feb 2011 18:21:38 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>


The builthost specific absolute pathnames were not working on other hosts
with the nativesdk libtool package. This commit fixes that.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  libtool: avoid absolute pathnames of general utils

 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    2 +-
 .../recipes-devtools/libtool/libtool-native_2.4.bb |    2 +-
 .../libtool/libtool-nativesdk_2.4.bb               |    2 +-
 meta/recipes-devtools/libtool/libtool.inc          |    3 +-
 .../avoid_absolute_paths_for_general_utils.patch   |   37 ++++++++++++++++++++
 meta/recipes-devtools/libtool/libtool_2.4.bb       |    2 +-
 6 files changed, 43 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch

-- 
1.7.3.4


