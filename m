Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C064E006B4
	for <poky@yoctoproject.org>; Wed,  2 Nov 2011 12:25:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Nov 2011 12:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,445,1315206000"; d="scan'208";a="69846574"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.15.168])
	by azsmga001.ch.intel.com with ESMTP; 02 Nov 2011 12:25:54 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  2 Nov 2011 12:25:51 -0700
Message-Id: <cover.1320261024.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
Subject: [PATCH 0/1] Enable Alsa for atom-pc
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
X-List-Received-Date: Wed, 02 Nov 2011 19:25:57 -0000

Seems like to have not done so must have been an oversight?

Cheers,
Joshua

The following changes since commit 9b76e6a2cfc5a4d779f3b06e3acc5ff7b8275470:

  meta: glib-2.0: don't apply qsort_r test removable patch for native version (2011-11-02 09:08:28 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib josh/work
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/work

Joshua Lock (1):
  machine/atom-pc: enable sound

 meta-yocto/conf/machine/atom-pc.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.7


