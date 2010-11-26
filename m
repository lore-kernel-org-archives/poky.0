Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B15E4C80B6B
	for <poky@pokylinux.org>; Thu, 25 Nov 2010 20:40:10 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 18:40:10 -0800
Message-Id: <b9dded$h6uoij@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,258,1288594800"; d="scan'208";a="577725013"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2010 18:40:09 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Fri, 26 Nov 2010 10:22:53 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/1] fix do_listtasks output
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
X-List-Received-Date: Fri, 26 Nov 2010 02:40:11 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  utility-tasks.bbclass: show do_listtasks's output to console

 meta/classes/utility-tasks.bbclass |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)


