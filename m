Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 670E84C800B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 08:41:26 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 06:41:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="898663047"
Received: from unknown (HELO localhost) ([10.255.16.25])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 06:41:25 -0700
Message-Id: <cover.1300455487.git.josh@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 13:38:07 +0000
Date: Fri, 18 Mar 2011 13:41:19 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/1] Sanity check for duplicate PACKAGE_ARCHS
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
X-List-Received-Date: Fri, 18 Mar 2011 13:41:26 -0000

From: Joshua Lock <josh@linux.intel.com>

I have had some pain this morning caused by duplicated entries in my
PACKAGE_ARCHS variable. After Richard helped me debug this he suggest we
add a sanity check for this issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/bernard
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/bernard

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  sanity.bbclass: check for duplicates in PACKAGE_ARCHS

 meta/classes/sanity.bbclass |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

-- 
1.7.4


