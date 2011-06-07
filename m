Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A7954C800B3
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 02:05:17 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2011 00:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,331,1304319600"; 
   d="scan'208";a="8300206"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by azsmga001.ch.intel.com with ESMTP; 07 Jun 2011 00:05:15 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 Jun 2011 15:12:27 +0800
Message-Id: <cover.1307430283.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [Image_Creator_Patch 0/1] Not display false error msg
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
X-List-Received-Date: Tue, 07 Jun 2011 07:05:17 -0000

This patch prevents displaying the false error msg "Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information." when hob ui exits.

NOTE: This patch should be applied to the branch of "poky-contrib/josh/hob". 

The following changes since commit 8f7947c089c86deee84f284b352dbdac4bfd6bf2:
  Joshua Lock (1):
        bitbake/hob: show the busy cursor when performing lengthy operations

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib llu/hob_errmsg
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/hob_errmsg

Lianhao Lu (1):
  bitbake/hob: Not display false error msg at hob exit.

 bitbake/lib/bb/cooker.py      |    4 +++-
 bitbake/lib/bb/ui/__init__.py |    2 ++
 bitbake/lib/bb/ui/hob.py      |    3 +++
 3 files changed, 8 insertions(+), 1 deletions(-)


