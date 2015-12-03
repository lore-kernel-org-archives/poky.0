Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E21CE00947; Thu,  3 Dec 2015 06:37:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FEDCE00888
	for <poky@yoctoproject.org>; Thu,  3 Dec 2015 06:37:15 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2015 06:37:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,378,1444719600"; d="scan'208";a="699522961"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 03 Dec 2015 06:37:06 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Dec 2015 16:34:27 +0200
Message-Id: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.6.2
Subject: [PATCH 0/3] Remove qt4 references from poky
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
X-List-Received-Date: Thu, 03 Dec 2015 14:37:20 -0000

This patchset complements the qt4 removal patchset that is sent to
oe-core mailing list.

The following changes since commit 613ccfb98734254bd8feeefcc986dfc545d38f85:

  packagegroup-core-lsb: treat qt4 packages same as qt3 packages (2015-12-03 15:57:34 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib akanavin/remove-qt4
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=akanavin/remove-qt4

Alexander Kanavin (3):
  maintainers.inc: drop qt4 references
  poky-tiny.conf: drop qt4 references
  local.conf.sample.extended: drop qt4 references

 meta-yocto/conf/distro/include/maintainers.inc | 15 ---------------
 meta-yocto/conf/distro/poky-tiny.conf          |  1 -
 meta-yocto/conf/local.conf.sample.extended     |  3 +--
 3 files changed, 1 insertion(+), 18 deletions(-)

-- 
2.6.2


