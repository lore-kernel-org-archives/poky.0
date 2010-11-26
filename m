Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C09A04C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 11:00:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 09:00:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,262,1288594800"; d="scan'208";a="681320169"
Received: from unknown (HELO localhost) ([10.255.20.94])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 09:00:57 -0800
Message-Id: <cover.1290790131.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 26 Nov 2010 16:48:51 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2] Two patches to help new users
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
X-List-Received-Date: Fri, 26 Nov 2010 17:01:00 -0000

Here are a couple of patches to help new users out. 

The first documents some extra variables to set in local.conf when changing
GLIBC_GENERATE_LOCALES.

The second helps users ensure they have an appropriate terminal configured for
use in patch failure resolution.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/conf
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/conf

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (2):
  local.conf.sample: Note extra variables required when disabling en_US
    locale
  sanity.bbclass: Warn people when TERMCMD is set to a non-installed
    program

 meta/classes/sanity.bbclass |    6 ++++++
 meta/conf/local.conf.sample |   14 +++++++++++++-
 2 files changed, 19 insertions(+), 1 deletions(-)

-- 
1.7.3.2


