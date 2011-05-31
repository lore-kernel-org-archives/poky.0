Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F6C64C80191
	for <poky@yoctoproject.org>; Tue, 31 May 2011 12:36:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 May 2011 10:36:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,298,1304319600"; 
   d="scan'208";a="9928644"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.104])
	by fmsmga002.fm.intel.com with ESMTP; 31 May 2011 10:36:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 31 May 2011 18:36:54 +0100
Message-Id: <cover.1306863360.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1] bitbake: use layer priority when applying bbappends
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
X-List-Received-Date: Tue, 31 May 2011 17:36:59 -0000

The following changes since commit 52295fa3deef3b0374b99829626d524cefae6001:

  Improve handling of 'all' architecture recipes and their interaction with sstate (2011-05-31 13:07:00 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/bbfile-sort
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/bbfile-sort

Paul Eggleton (1):
  bitbake: use layer priority when applying bbappends

 bitbake/lib/bb/cooker.py |   24 ++++++++++++++----------
 1 files changed, 14 insertions(+), 10 deletions(-)

-- 
1.7.4.1


