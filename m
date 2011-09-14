Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C9C8E0075C
	for <poky@yoctoproject.org>; Wed, 14 Sep 2011 13:46:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Sep 2011 13:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48488652"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.252])
	by orsmga001.jf.intel.com with ESMTP; 14 Sep 2011 13:45:48 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Sep 2011 13:45:41 -0700
Message-Id: <cover.1316033090.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/2] Fix Qt3 Build issues
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
X-List-Received-Date: Thu, 15 Sep 2011 03:55:27 -0000

This fixes some build issues in Qt3

The following changes since commit 45416a04123a46ce0a35c6b9286bf53f2f8ce257:

  qt3: Stop TARGET_OS differences causing build failures (2011-08-15 15:33:49 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/meta-qt3 stage/rc2
  http://git.yoctoproject.org/cgit.cgi/meta-qt3/log/?h=stage/rc2

Saul Wold (2):
  qt-x11-free-common: allow BBPATH to find qt3x11
  qt-x11-free-native: fix where qmake gets linked

 recipes-qt3/qt3/qt-x11-free-common.inc      |    2 +-
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
1.7.6


