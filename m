Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89B5CE008DC; Tue, 27 Jan 2015 05:33:44 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41DDDE008CC
	for <poky@yoctoproject.org>; Tue, 27 Jan 2015 05:33:39 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2015 05:33:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="445827732"
Received: from ssandhu3-mobl1.amr.corp.intel.com (HELO localhost)
	([10.254.48.171])
	by FMSMGA003.fm.intel.com with ESMTP; 27 Jan 2015 05:19:42 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 27 Jan 2015 07:33:17 -0600
Message-Id: <cover.1422365079.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/2] yocto-bsp fixes
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
X-List-Received-Date: Tue, 27 Jan 2015 13:33:44 -0000

This patchset contains a fix for Yocto Bug 6518 (yocto-bsp create
creates faulty SRC_URI), along with a patch to add a missing directory
in the arm template introduced by the recent 'strange character'
patchset.

The following changes since commit 6abcc6118d068266947d6fd5acf78f744ec02cb6:

  bitbake: toaster: project configuration variables page (2015-01-21 14:37:39 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/custom-kbranch-master
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/custom-kbranch-master

Tom Zanussi (2):
  yocto-bsp: Add missing conf dir to arm template
  yocto-bsp: Add branch to SRC_URI for custom kernels

 .../target/arch/arm/conf/machine/machine.conf      | 102 +++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto-custom.bb     |   4 +-
 2 files changed, 104 insertions(+), 2 deletions(-)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf

-- 
1.9.3


