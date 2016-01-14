Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61D8CE007EA; Thu, 14 Jan 2016 14:25:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14B8EE00444
	for <poky@yoctoproject.org>; Thu, 14 Jan 2016 14:25:23 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jan 2016 14:25:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,296,1449561600"; d="scan'208";a="881619226"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2016 14:25:22 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Jan 2016 16:27:01 -0600
Message-Id: <cover.1452808370.git.anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, openembedded-core@lists.openembedded.org,
	georgex.l.musat@intel.com, tudor.florea@enea.com,
	benjamin.esquivel@intel.com
Subject: [PATCH 0/3] ptest-runner2 C implementation
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
X-List-Received-Date: Thu, 14 Jan 2016 22:25:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This is the changes that adds new ptest-runner2 C implementation a detail
description exists in the recipe adding.

You can review the ptest-runner2 code on [1], i wrote unit tests for all
the code using check framework also i used mtrace for found possible memory leaks.

Finally i tested the new runner on qemux86, qemuarm, qemumips, qemuppc using
core-image-minimal and qemux86/poky-tiny/core-image-minimal.

[YOCTO #8021]

[1] https://github.com/alimon/ptest-runner2

The following changes since commit 92cc02fe517bad0af4e493fda3331738cbcc9a26:

  linux-yocto: Update Genericx86* BSPs to 4.1.15 (2016-01-14 15:18:46 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib alimon/ptest-runner2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=alimon/ptest-runner2

Aníbal Limón (3):
  ptest-runner2: Add new ptest-runner2 recipe.
  ptests: Update references to new ptest-runner2.
  Update dev-manual to point to the new ptest-runner2.

 .../dev-manual/dev-manual-common-tasks.xml         |  4 ++--
 meta/classes/ptest.bbclass                         |  2 +-
 meta/lib/oeqa/runtime/_ptest.py                    |  4 ++--
 .../ptest-runner2/ptest-runner2_0.1.bb             | 24 ++++++++++++++++++++++
 4 files changed, 29 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-support/ptest-runner2/ptest-runner2_0.1.bb

-- 
2.1.4


