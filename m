Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F00E01384
	for <poky@yoctoproject.org>; Tue,  8 Nov 2011 08:14:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Nov 2011 08:14:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,477,1315206000"; d="scan'208";a="87523773"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.12.16])
	by fmsmga002.fm.intel.com with ESMTP; 08 Nov 2011 08:14:43 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Nov 2011 08:14:41 -0800
Message-Id: <cover.1320768816.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
Subject: [PATCH 0/1] Add Clutter bbappend for Clutter 1.8
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
X-List-Received-Date: Tue, 08 Nov 2011 16:14:44 -0000

With a new Clutter in OE-Core we need to add a new bbappend for the required
atom-pc modifications.

The following changes since commit 1ef442561d9784209f56e8c283824c1f2de3e2d1:

  multilib: Drop MULTILIB_IMAGE_INSTALL (2011-11-08 14:32:55 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib josh/work
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/work

Joshua Lock (1):
  clutter-1.8: add bbappend for new clutter-1.8 recipe

 .../recipes-graphics/clutter/clutter-1.8_1.8.0.bb  |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb

-- 
1.7.7


