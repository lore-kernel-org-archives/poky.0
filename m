Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ACEFE00BEF; Mon,  4 Jan 2016 10:27:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4DFE00908
	for <poky@yoctoproject.org>; Mon,  4 Jan 2016 10:27:43 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jan 2016 10:27:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,521,1444719600"; d="scan'208";a="874414276"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2016 10:27:42 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: openembedded-core@lists.openembedded.org
Date: Mon,  4 Jan 2016 12:29:14 -0600
Message-Id: <1451932157-3190-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, georgex.l.musat@intel.com,
	poky@yoctoproject.org, benjamin.esquivel@intel.com
Subject: [PATCH v3 0/3] ptest-runner 2.0
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
X-List-Received-Date: Mon, 04 Jan 2016 18:27:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The whole set is sent to two ML for reviewing purposes the first two patches are for
oe-core and the last one for poky.

The first two commits (oe-core) adds a new ptest-runner written in python the sh one is conserved
to use in tiny systems.

What's new in ptest runner:

	- Monitor/timeout stdout, stderr of the test suite to avoid block indefinetly.
	- Add option for change ptest root directory.
	- Add option for list available tests.
	- Add option for only run certain tests.

The last commit (meta-yocto) sets ptest-runner to 1.0 in poky-tiny systems due to python dependency.

The changes are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib alimon/ptest-runner
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=alimon/ptest-runner

Aníbal Limón (3):
  ptest-runner: Add version 2.0 re-implementation in python.
  ptest-runner: Add a recipe for install ptest-runner 2.0.
  conf/distro/poky-tiny.conf: Add default install of ptest-runner 1.0

 meta-yocto/conf/distro/poky-tiny.conf              |   4 +
 .../ptest-runner/files/ptest-runner_2.0.py         | 162 +++++++++++++++++++++
 .../ptest-runner/ptest-runner_2.0.bb               |  27 ++++
 3 files changed, 193 insertions(+)
 create mode 100755 meta/recipes-support/ptest-runner/files/ptest-runner_2.0.py
 create mode 100644 meta/recipes-support/ptest-runner/ptest-runner_2.0.bb

-- 
2.1.4


