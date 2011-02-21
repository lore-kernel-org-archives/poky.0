Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DEDE4C8086E
	for <poky@yoctoproject.org>; Sun, 20 Feb 2011 23:51:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Feb 2011 21:51:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,198,1297065600"; d="scan'208";a="391649584"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 20 Feb 2011 21:51:19 -0800
Message-Id: <cover.1298324963.git.liping.ke@intel.com>
Old-Date: Tue, 22 Feb 2011 05:49:23 +0800
Date: Tue, 22 Feb 2011  5:54:37 +0800
To: poky@yoctoproject.org
From: Liping Ke <liping.ke@intel.com>
Cc: Liping Ke <liping.ke@intel.coom>
Subject: [PATCH 0/1] ADT: Fix script check_result error
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
X-List-Received-Date: Mon, 21 Feb 2011 05:51:21 -0000

From: Liping Ke <liping.ke@intel.com>

When meeting errors, the return number can't be directly compared with
"-1". The correct way is to compare it with 0. If the result is a non-zero
number, we meet error. This patch is for fixing [BUGID #742]


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/adt-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/adt-fix

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  ADT: Fix check_result script cond comparison bug

 .../installer/adt-installer/scripts/util           |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)


