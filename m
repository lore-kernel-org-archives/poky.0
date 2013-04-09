Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BFD6E01473
	for <poky@yoctoproject.org>; Tue,  9 Apr 2013 07:22:05 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2013 07:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,439,1363158000"; d="scan'208";a="225057633"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.195])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Apr 2013 07:22:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  9 Apr 2013 15:21:57 +0100
Message-Id: <cover.1365517250.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 0/3] Minor comment/doc fixes for Poky
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
X-List-Received-Date: Tue, 09 Apr 2013 14:22:05 -0000

No functional changes, just fixes for comments and README.hardware.


The following changes since commit b49ddeb11c0319b7ece278fd7cef6b0223114ca9:

  udev: Move udevd back to /sbin (2013-04-09 13:31:37 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/layer-tweaks
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/layer-tweaks

Paul Eggleton (3):
  yocto-layer / yocto-bsp: tweak layer.conf comment
  meta-yocto*/conf/layer.conf: tweak BBFILES comments
  README.hardware: bring up-to-date

 README.hardware                                    |   51 +++++++++++---------
 meta-yocto-bsp/conf/layer.conf                     |    2 +-
 meta-yocto/conf/layer.conf                         |    2 +-
 .../substrate/target/arch/common/conf/layer.conf   |    2 +-
 .../substrate/target/arch/layer/conf/layer.conf    |    2 +-
 5 files changed, 33 insertions(+), 26 deletions(-)

-- 
1.7.10.4


