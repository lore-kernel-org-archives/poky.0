Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C92DE0044E
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 01:40:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Jul 2013 01:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,768,1367996400"; d="scan'208";a="338341258"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.206])
	by azsmga001.ch.intel.com with ESMTP; 29 Jul 2013 01:40:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 09:40:35 +0100
Message-Id: <cover.1375087195.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [dylan][PATCH 0/1] dylan change for meta-yocto-bsp
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 29 Jul 2013 08:40:53 -0000

One change for the dylan branch. This has been acked by Bruce and tested
on the autobuilder.


The following changes since commit 64273e53f2789d2ea8393fc80909ac7086f168a7:

  bitbake: Allow checksums to be used for files retrieved using SFTP (2013-07-09 10:55:16 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/dylan-next-poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/dylan-next-poky

Paul Barker (1):
  linux-yocto: Fix SRCREVs in linux-yocto_3.2

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.1.2


