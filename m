Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9BFBD4C81238
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 11:12:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 09:11:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="597061020"
Received: from unknown (HELO localhost) ([10.255.16.153])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 09:11:52 -0800
Message-Id: <cover.1296147101.git.josh@linux.intel.com>
Old-Date: Thu, 27 Jan 2011 16:51:41 +0000
Date: Thu, 27 Jan 2011 17:11:47 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/1] Fix nativesdk package splitting
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
X-List-Received-Date: Thu, 27 Jan 2011 17:12:02 -0000

From: Joshua Lock <josh@linux.intel.com>

Without this change the external-python-tarball build fails at rootfs
generation.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  nativesdk: ensure packages can be split

 meta/classes/nativesdk.bbclass |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

-- 
1.7.3.5


