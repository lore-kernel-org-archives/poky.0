Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3AD74C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 11:09:17 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Dec 2010 09:09:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,214,1291622400"; d="scan'208";a="689822486"
Received: from unknown (HELO localhost) ([10.255.16.69])
	by orsmga001.jf.intel.com with ESMTP; 22 Dec 2010 09:09:16 -0800
Message-Id: <cover.1293037679.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 17:07:59 +0000
Date: Wed, 22 Dec 2010 17:08:50 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Fix depexp UI
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
X-List-Received-Date: Wed, 22 Dec 2010 17:09:17 -0000

I'd introduced a silly bug into depexp, this changeset fixes it...

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  bitbake/depexp: fix early exit

 bitbake/lib/bb/ui/depexp.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.3.3


