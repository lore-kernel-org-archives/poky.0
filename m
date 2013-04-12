Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13F2DE014DB
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 13:22:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Apr 2013 13:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,465,1363158000"; d="scan'208";a="226602124"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.168])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Apr 2013 13:22:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 12 Apr 2013 21:22:48 +0100
Message-Id: <cover.1365798009.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 0/1] Fix handling of bblayers.conf updating (poky part)
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
X-List-Received-Date: Fri, 12 Apr 2013 20:22:55 -0000

Fixes endless looping and other bad behaviour in the code that updates
bblayers.conf on startup. This is an important fix for the 1.4 release.

This change depends upon the corresponding OE-Core change which has just
been sent.


The following changes since commit 2ef72c3174c8c111678ac7e3cf3d866eaf2c8d77:

  wayland: add necessary dependencies to fix build error (2013-04-11 16:41:13 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/bblayers-conf-fix-poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/bblayers-conf-fix-poky

Paul Eggleton (1):
  classes/poky-sanity: fix handling of bblayers.conf updating

 meta-yocto/classes/poky-sanity.bbclass |   26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

-- 
1.7.10.4


