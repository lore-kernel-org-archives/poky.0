Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2FB1E00AAA; Thu, 30 Jul 2015 06:59:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C015DE009A7
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 06:59:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2015 06:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,577,1432623600"; d="scan'208";a="758423283"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.143])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2015 06:59:22 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 30 Jul 2015 17:00:15 +0300
Message-Id: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 0/3] Update upstream tracking information
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
X-List-Received-Date: Thu, 30 Jul 2015 13:59:26 -0000

This patchset contains the outcome of the upstream tracking review I did for all
oe-core recipes. It consists of many small fixes squashed together: mostly outdated 
information being removed, or incorrect information being updated, or missing 
information being added.

The following changes since commit d5aebc938a52fee3ca99f2cb0061cbb40cef5200:

  distrodata.bbclass: drop the manual upstream version check logic (2015-07-30 16:27:33 +0300)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib akanavin/recipe-reporting-fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=akanavin/recipe-reporting-fixes

Alexander Kanavin (3):
  distro_alias.inc: drop reference to Google Code
  package_regex.inc: updates to fix upstream version checks for multple
    packages
  upstream_tracking.inc: remove outdated information

 meta-yocto/conf/distro/include/distro_alias.inc    |   1 -
 meta-yocto/conf/distro/include/package_regex.inc   | 145 +++++++++++++++++----
 .../conf/distro/include/upstream_tracking.inc      |  44 +------
 3 files changed, 126 insertions(+), 64 deletions(-)

-- 
2.1.4


