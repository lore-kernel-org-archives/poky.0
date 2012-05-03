Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8757E0044D
	for <poky@yoctoproject.org>; Thu,  3 May 2012 09:40:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2012 09:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136652310"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.59])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2012 09:40:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 May 2012 17:40:50 +0100
Message-Id: <cover.1336063152.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] Ubuntu 12.04 version string fix
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
X-List-Received-Date: Thu, 03 May 2012 16:40:58 -0000

This fix should also go into denzil-next.


The following changes since commit d89f7b9cab1946a3267e3b0402f168f946d480b2:

  documentation/Makefile: Fixed figures publishing bug (2012-05-01 20:50:56 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/ubuntu-1204-ver
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/ubuntu-1204-ver

Paul Eggleton (1):
  poky.conf: use correct version string for Ubuntu 12.04

 meta-yocto/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.5.4


