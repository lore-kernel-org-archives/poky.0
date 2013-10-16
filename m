Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68B9BE016A0
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 09:33:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Oct 2013 09:33:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,508,1378882800"; d="scan'208";a="417825990"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.253])
	by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2013 09:33:06 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 16 Oct 2013 09:33:04 -0700
Message-Id: <cover.1381941120.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH 0/2] Poky Distro specific Updates
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
X-List-Received-Date: Wed, 16 Oct 2013 16:33:07 -0000

Richard,

A package_regex tweak and some better comments for the security flags


Sau!


The following changes since commit 529bf977e956175bd8405ebffc88194192e44740:

  update-rcd.bbclass: fix host/target test (2013-10-16 14:51:07 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgw/stage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage

Saul Wold (2):
  local.conf.sample.extended: Add some additional comments for security
    flags
  package-regex: Tweak python-docutils so it works correctly

 meta-yocto/conf/distro/include/package_regex.inc | 2 +-
 meta-yocto/conf/local.conf.sample.extended       | 9 ++++++++-
 2 files changed, 9 insertions(+), 2 deletions(-)

-- 
1.8.3.1


