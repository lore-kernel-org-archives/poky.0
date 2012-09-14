Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49321E01438
	for <poky@yoctoproject.org>; Fri, 14 Sep 2012 05:51:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Sep 2012 05:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,422,1344236400"; d="scan'208";a="222040685"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.221])
	by fmsmga002.fm.intel.com with ESMTP; 14 Sep 2012 05:51:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>,
	poky@yoctoproject.org
Date: Fri, 14 Sep 2012 13:51:00 +0100
Message-Id: <cover.1347620476.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [denzil][PATCH 0/2] Hob error reporting fixes for denzil
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
X-List-Received-Date: Fri, 14 Sep 2012 12:51:37 -0000

The following changes since commit 65ffa7395055f7e012cb973f63f92380828eed0d:

  yocto-bsp: use base branches for qemu 'newbranch' case (2012-08-21 11:35:22 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/denzil-fixes-bitbake
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/denzil-fixes-bitbake

Paul Eggleton (2):
  bitbake: hob: ensure error message text is properly escaped
  bitbake: hob: format error messages properly

 bitbake/lib/bb/ui/crumbs/builder.py         |    5 +++--
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    4 +++-
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
1.7.9.5


