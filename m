Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9FE3E4C80050
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 07:09:09 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 05:09:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="881505371"
Received: from unknown (HELO localhost) ([10.255.16.153])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2011 05:09:08 -0800
Message-Id: <cover.1296133552.git.josh@linux.intel.com>
Old-Date: Thu, 27 Jan 2011 13:05:52 +0000
Date: Thu, 27 Jan 2011 13:09:02 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/1] Make external-python-tarball useful again
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
X-List-Received-Date: Thu, 27 Jan 2011 13:09:10 -0000

From: Joshua Lock <josh@linux.intel.com>

The attached patch adds the multiprocessing module to the external Python
tarball. This is quite useful as we use multiprocessing at recipe parse time
now.

This raises two questions:
1) Should we do some testing around the use of multiprocessing?
2) Who can update a new external-python-tarball to the public download?

Finally, we should probably document the existence of this tarball somewhere
other than this mailing list. Ideas?

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  external-python-tarball: include multiprocessing module

 meta/recipes-core/meta/external-python-tarball.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

-- 
1.7.3.5


