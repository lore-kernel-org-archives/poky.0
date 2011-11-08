Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD6EEE013B0
	for <poky@yoctoproject.org>; Tue,  8 Nov 2011 10:31:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Nov 2011 10:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="72390362"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.12.16])
	by orsmga002.jf.intel.com with ESMTP; 08 Nov 2011 10:31:31 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Nov 2011 10:31:28 -0800
Message-Id: <cover.1320777037.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
Subject: [PATCH 0/1] Fix clutter-1.8 bbappend
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
X-List-Received-Date: Tue, 08 Nov 2011 18:31:31 -0000

As Scott Garman rightly pointed out this should be a bbappend file, not a bb
file.

Sincere apologies,
Joshua

The following changes since commit e5226b1e44052b2fe5370f4922397a1d68985aaf:

  clutter-1.8: add bbappend for new clutter-1.8 recipe (2011-11-08 17:53:18 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib josh/work
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/work

Joshua Lock (1):
  clutter-1.8: this should be a bbappend

 ...ter-1.8_1.8.0.bb => clutter-1.8_1.8.0.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-graphics/clutter/{clutter-1.8_1.8.0.bb => clutter-1.8_1.8.0.bbappend} (100%)

-- 
1.7.7


