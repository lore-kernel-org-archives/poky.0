Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 158FAE01351
	for <poky@yoctoproject.org>; Wed,  1 Aug 2012 12:02:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Aug 2012 12:02:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="174243221"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 01 Aug 2012 12:02:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Wed,  1 Aug 2012 12:01:13 -0700
Message-Id: <cover.1343847551.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] tiny-init: Setup /dev/ptmx in init
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Aug 2012 19:02:05 -0000

The following changes since commit fd6251ef548da7dbca354754cc0b666b2ccd0c45:

  imagetest-qemu.bbclass: Fix whitespace issues (2012-08-01 09:10:41 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib dvhart/bug2382-ssh-tiny
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=dvhart/bug2382-ssh-tiny

Darren Hart (1):
  tiny-init: Setup /dev/ptmx in init

 meta-yocto/recipes-core/tiny-init/files/init   |    3 +++
 meta-yocto/recipes-core/tiny-init/tiny-init.bb |    2 +-
 2 files changed, 4 insertions(+), 1 deletions(-)

-- 
1.7.5.4


