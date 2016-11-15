Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 568D6E00563; Tue, 15 Nov 2016 13:14:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64423E004E5
	for <poky@yoctoproject.org>; Tue, 15 Nov 2016 13:14:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 15 Nov 2016 13:14:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,496,1473145200"; d="scan'208";a="1059885155"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.38])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2016 13:14:47 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue, 15 Nov 2016 15:19:50 -0600
Message-Id: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 0/3] bb-perf: scripting to plot buildstats data
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
X-List-Received-Date: Tue, 15 Nov 2016 21:14:52 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

buildstats data has been mostly unexplored mainly due to the lack of tools
to digest this data. The script buildstats.sh has been re-designed to
be much more flexible and the new script buildstats-plot.sh uses the latter
to produce data to be consumed by gnuplot. The tools used are datamash and
gnuplot, so these must be present before running them.

Some plots created by buildstats-plot.sh can be found at [1]

[1] https://wiki.yoctoproject.org/wiki/MortyBuildstats


The following changes since commit dc8508f609974cc99606b9042bfa7f870ce80228:

  build-applance-image: Fix to use the release branch for morty (2016-10-26 11:11:10 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib lsandov1/buildstats-plot
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=lsandov1/buildstats-plot

Leonardo Sandoval (3):
  buildstats: Place 'Elapsed Time' stat into a single line
  scripts: Specify the stats to take into account
  bb-perf: plot histograms base on buildstats data

 meta/classes/buildstats.bbclass            |   4 +-
 scripts/contrib/bb-perf/buildstats-plot.sh | 157 +++++++++++++++++++++++++++++
 scripts/contrib/bb-perf/buildstats.sh      |  99 ++++++++++++++----
 3 files changed, 241 insertions(+), 19 deletions(-)
 create mode 100755 scripts/contrib/bb-perf/buildstats-plot.sh

-- 
2.1.4


