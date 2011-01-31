Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26B934C8018D
	for <poky@pokylinux.org>; Mon, 31 Jan 2011 00:44:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Jan 2011 22:44:13 -0800
Message-Id: <849307$bc9pl9@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="382002862"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by azsmga001.ch.intel.com with ESMTP; 30 Jan 2011 22:44:12 -0800
Old-Date: Mon, 31 Jan 2011 14:21:43 +0800
Date: Mon, 31 Jan 2011 14:25:32 +0800
To: poky@pokylinux.org
From: Kevin Tian <kevin.tian@intel.com>
Subject: [PATCH 0/1] fix unnecessary do_package rebuilds
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
X-List-Received-Date: Mon, 31 Jan 2011 06:44:14 -0000

From: Kevin Tian <kevin.tian@intel.com>

This patch should fix recent master instability, that unnecessary do_package
rebuilds are observed in incremental build. We tested that with this patch
no undesired rebuild if no any change.

There's one another sstate bug related to PACKAGE_CLASSES, which will be 
discussed in seperate thread.

We're still testing whether this fix makes final do_populate_sdk error
disappearing (or hidden...)

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master1
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master1

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  license.bbclass: don't mark it as 'nostamp'

 meta/classes/license.bbclass |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)


