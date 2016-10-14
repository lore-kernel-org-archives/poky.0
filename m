Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6AF2E0043B; Fri, 14 Oct 2016 09:53:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 957CAE0034A
	for <poky@yoctoproject.org>; Fri, 14 Oct 2016 09:53:49 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP; 14 Oct 2016 09:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,493,1473145200"; d="scan'208";a="19654353"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by fmsmga005.fm.intel.com with ESMTP; 14 Oct 2016 09:53:48 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 14 Oct 2016 11:57:55 -0500
Message-Id: <cover.1476463434.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 0/1] Support supported distros on selftest
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
X-List-Received-Date: Fri, 14 Oct 2016 16:53:53 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

This series is a continuation of oe-core series:

http://lists.openembedded.org/pipermail/openembedded-core/2016-October/127586.html

The latter defines self.distro at meta/lib/oeqa/selftest/base.py and it is used
at this series, so this series depends on the oe-core one.

[YOCTO #8525]

The following changes since commit 4a7eb4b92f32c17abd1111246b1acb9ad3daa355:

  build-appliance-image: Update to master head revision (2016-10-11 08:51:36 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib lsandov1/oe-selftest-non-poky-distros-poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=lsandov1/oe-selftest-non-poky-distros-poky

Leonardo Sandoval (1):
  selftest: skip tests for poky-tiny distro due to incompatible kernel
    machine

 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py    | 6 +++++-
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 5 +++++
 2 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.1.4


