Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 085FCE00344
	for <poky@yoctoproject.org>; Mon, 24 Sep 2012 08:21:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Sep 2012 08:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,476,1344236400"; d="scan'208";a="148440116"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.13])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Sep 2012 08:21:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>,
	poky@yoctoproject.org
Date: Mon, 24 Sep 2012 16:21:53 +0100
Message-Id: <cover.1348499999.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [denzil][PATCH 0/2] bitbake force build backports for denzil
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
X-List-Received-Date: Mon, 24 Sep 2012 15:21:59 -0000

The following changes since commit 65ffa7395055f7e012cb973f63f92380828eed0d:

  yocto-bsp: use base branches for qemu 'newbranch' case (2012-08-21 11:35:22 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/denzil-force-bitbake
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/denzil-force-bitbake

Paul Eggleton (2):
  bitbake: bitbake: ensure -f causes dependent tasks to be re-run
  bitbake: lib/bb/siggen.py: log when tainting the signature of a task

 bitbake/lib/bb/build.py    |   18 ++++++++++++++++++
 bitbake/lib/bb/cooker.py   |    6 +++---
 bitbake/lib/bb/runqueue.py |   12 ++++++------
 bitbake/lib/bb/siggen.py   |   35 +++++++++++++++++++++++++++++++++++
 4 files changed, 62 insertions(+), 9 deletions(-)

-- 
1.7.9.5


