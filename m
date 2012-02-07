Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39A14E01353
	for <poky@yoctoproject.org>; Tue,  7 Feb 2012 14:50:20 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2012 14:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107498274"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.116])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2012 14:50:19 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 Feb 2012 14:50:16 -0800
Message-Id: <cover.1328654906.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH 0/2] Changes to match up with oe-core
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
X-List-Received-Date: Tue, 07 Feb 2012 22:50:20 -0000

Changes to match oe-core task-core-tools and update the
MIRRORS to use the correct URL.

Sau!

The following changes since commit cb89d43473a91ff4cb2447d642fcd9308d7366e3:

  libzypp: add missing runtime dependences on gzip and gnupg (2012-02-03 17:23:34 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/fix
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/fix

Saul Wold (2):
  task-core-tools-profile: change to match oe-core
  poky.conf: Fix the MIRROR URI

 meta-yocto/conf/distro/poky.conf                   |   22 ++++++++++----------
 ...s.bbappend => task-core-tools-profile.bbappend} |    0
 2 files changed, 11 insertions(+), 11 deletions(-)
 rename meta-yocto/recipes-core/tasks/{task-core-tools.bbappend => task-core-tools-profile.bbappend} (100%)

-- 
1.7.6.5


