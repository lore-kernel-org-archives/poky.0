Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B7504C800A0
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 03:33:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2011 01:33:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,295,1297065600"; d="scan'208";a="611224231"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2011 01:33:01 -0800
Message-Id: <cover.1299749366.git.liping.ke@intel.com>
Old-Date: Thu, 10 Mar 2011 17:29:26 +0800
Date: Thu, 10 Mar 2011 17:31:08 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] ADT Disable wget server side cache
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
X-List-Received-Date: Thu, 10 Mar 2011 09:33:02 -0000

From: Liping Ke <liping.ke@intel.com>

We found some proxy server has wrong cache for long http file name.
It will cause fetching wrong ipk files from adt repo. To avoid this,
we use wget options --no-cache to disable all server side cache.
It will make the fetch speed slower, yet correct always.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/disable_cache
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/disable_cache

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  Disable wget server side cache

 .../installer/adt-installer_1.0.bb                 |    3 ++-
 .../installer/files/wget_cache.patch               |   10 ++++++++++
 2 files changed, 12 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/installer/files/wget_cache.patch


